#!/usr/bin/env python3

""" ---------------------------------------------------------------------------- 
    --------------------- Path Control Module (PCM) - ARAV ---------------------
    ----------------------------------------------------------------------------
    -------------------- Author : Alberto Ceballos Gonzalez -------------------- 
    -------- E-mail : alberto.ceballos-gonzalez@student.isae-supaero.fr -------- 
    ---------- (c) Copyright 2022 Alberto Ceballos All Rights Reserved ---------  
    ---------------------------------------------------------------------------- """
    
# Import required libraries #

import rospy
import roslaunch
import math
#from scipy.misc import derivative
#from scipy.integrate import quad
import sys
import time
from gazebo_msgs.msg import ModelStates
from std_msgs.msg import Float64MultiArray
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Twist
from std_msgs.msg import Bool
from tf.transformations import euler_from_quaternion
from mavros_msgs.msg import State

# Sleep 10 seconds to load gazebo #

time.sleep(10)

# Script configuration #

start_time = time.time()
prev_error_yr = 0.0
prev_error_velocity = 0.0
integral_yr = 0.0
integral_velocity = 0.0
dt = 1e-6

if (len(sys.argv) == 9):

    Kp = float(sys.argv[1])
    Ki = float(sys.argv[2])
    Kd = float(sys.argv[3])
    margin = float(sys.argv[4])
    limit = float(sys.argv[5])
    updateRate = float(sys.argv[6])

else:	

	# Default Values #
    Kp = 3.0
    Ki = 0.1
    Kd = 5.0
    margin = 0.2
    limit = 1000.0
    updateRate = 5

current_state = State()
	
# Topic names #
		
stateTopic = "/arav/gazebo/model_states"
aerialcommandTopic = "/arav/chatter"
groundcommandTopic = "/arav/control/ground/cmd"
waypointTopic = "/arav/path_planning/output/path"
mavrosStateTopic = "mavros/state"

# WayPoints #

waypointList = []

# Mode Class ------------------------------------------------------------------- #

class Mode:
    
    def __init__ (self):

        self.mode = None
    
    # A type of flag to determine which controller to use
    
    def checkMode(self, zReal, zWP):
        
        if (zReal > 0.2 or zWP > 0.2):
            self.mode = "AERIAL"
        else:
            self.mode = "GROUND"
        
        return self.mode

# Listener class --------------------------------------------------------------- #

class Listener:

	# Constructor method #

    def __init__ (self):		

        self.realValueX = 0.0
        self.realValueY = 0.0
        self.realValueZ = 0.1
        self.realYaw = 0.0
        self.index = 0
        self.robotName = "arav"
		
	# Class methods #

    def waypointCallback (self, msg):

        # To be executed when a waypoint is received #

        global waypointList

        xValue = msg.data[0]
        yValue = -msg.data[1]
        zValue = msg.data[2]
        
        waypointList.append([xValue, yValue, zValue])

    def poseCallback (self, msg):

        # To be executed when a position is received #
        
        self.index = msg.name.index(self.robotName)
        self.realValueX = msg.pose[self.index].position.x
        self.realValueY = msg.pose[self.index].position.y
        self.realValueZ = msg.pose[self.index].position.z
        
        orientObj = msg.pose[self.index].orientation
        orientList = [orientObj.x, orientObj.y, orientObj.z, orientObj.w]
        self.realYaw = euler_from_quaternion (orientList)[2] - math.pi
        if self.realYaw < 0:
            self.realYaw += 2 * math.pi
	
    def stateCallback(self, msg):
        
        # Is executed at a specified frequency as long as offboard mode is running
        
        global current_state
        current_state = msg

listener = Listener ()

# Compute Angle Function ------------------------------------------------------- #

def computeAngle (deltaX, deltaY, previous, debug):

	# Internal variables #
	
	deltaXmin = 0.0001
	deltaYmin = 0.0001
	angle = 0.0
	
	# Internal Logics #
	
	if abs(deltaX) < deltaXmin:
	
		if (deltaY > 0 and abs(deltaY) > deltaYmin):
			angle = math.pi/2
			
		elif (deltaY < 0 and abs(deltaY) > deltaYmin):
			angle = 3*math.pi/2
			
		else:
			angle = previous
			
		# Test #
		if (debug == True):
			print ("Desired Angle >> ", angle * (180/math.pi), "deg")
			
		return angle
			
	else:
	
		angle = math.atan(deltaY/deltaX)
		
	if (deltaX < 0):
		angle += math.pi
		
	elif (deltaX > 0 and deltaY < 0):
		angle += 2 * math.pi
		
	# Test #
	if (debug == True):
		print ("Desired Angle >> ", angle * (180/math.pi), "deg")
		
	return angle

# ------------------------------------------------------------------------------- #

# Compute Error Function -------------------------------------------------------- #

def computeError (desiredAngle, realAngle, debug):

	# Internal variables #
	
	error = 0.0
	
	# Internal Logics #
	
	error = desiredAngle - realAngle
	
	if (error > math.pi):
	
		error = (2*math.pi - error)*(-1)
		
	elif (error < -math.pi):
	
		error = 2*math.pi + error
		
	# Test #
	if (debug == True):
		print ("Error >> ", error * (180/math.pi), "deg")
		
	return error

# ------------------------------------------------------------------------------- #

# Proportional Controller Function ---------------------------------------------- #

def PIDController_YawRate (error, debug):

    global start_time

    # Internal variables #

    global Kp, Ki, Kd, limit, integral_yr, prev_error_yr, dt
    out = 0.0

    # Internal Logics #
    
    integral_yr += error*dt
    derivative = (error - prev_error_yr)/dt
    out = Kp*error + Ki*integral_yr + Kd*derivative
    prev_error_yr = error
    
    if out > limit:
        out = limit
        
    if out < -limit:
        out = -limit

    # Test #
    if (debug == True):
        print ("Yaw rate >> ", out, "rad/s")

    return out

def PIDController_Velocity (error, debug):

    global start_time

    # Internal variables #

    global Kp, Ki, Kd, limit, integral_velocity, prev_error_velocity, dt
    out = 0.0

    # Internal Logics #
    
    integral_velocity += error*dt
    derivative = (error - prev_error_velocity)/dt
    out = Kp*error + Ki*integral_velocity + Kd*derivative
    prev_error_velocity = error
    
    if out > limit:
        out = limit
        
    if out < -limit:
        out = -limit

    # Test #
    if (debug == True):
        print ("Velocity >> ", out, "rad/s")

    return out

# ------------------------------------------------------------------------------- #

# Select Next Waypoint ---------------------------------------------------------- #

def selectNextWP (waypointList, xReal, yReal, zReal, debug):

    # Internal variables #

    global margin
    deltaX = 0.0
    deltaY = 0.0
    deltaZ = 0.0
    status = True

    # Internal Logics #

    if (len (waypointList) == 0):

        status = False
        
    else:

        deltaX = waypointList[0][0] - xReal
        deltaY = waypointList[0][1] - yReal
        deltaZ = waypointList[0][2] - zReal
        
        if ((abs(deltaX) < margin) and (abs(deltaY) < margin) and (abs(deltaZ) < margin)):
        
            waypointList.pop(0)
            
            if (len (waypointList) == 0):

                deltaX = 0.0
                deltaY = 0.0
                deltaZ = 0.0
                status = False
            else:
            
                deltaX = waypointList[0][0] - xReal
                deltaY = waypointList[0][1] - yReal
                deltaZ = waypointList[0][2] - zReal
            
    # Test #
    if (debug == True):
        if (len (waypointList) == 0):
            print ("Objective WP reached !!")
        else:
            print ("Next WayPoint >> ", waypointList[0][0], waypointList[0][1], waypointList[0][2])
            
    return deltaX, deltaY, deltaZ, status

# ------------------------------------------------------------------------------- #

# Offboard node activation Function ---------------------------------------------- #

def air_module_offb_node():
	global offb_node	
	package = 'beginner_tutorials'
	executable = 'offb_node_user_input'
	node = roslaunch.core.Node(package, executable)
	
	launch = roslaunch.scriptapi.ROSLaunch()
	launch.start()
	
	offb_node = launch.launch(node)

# ------------------------------------------------------------------------------- #
	
# Main function ----------------------------------------------------------------- #

# Parameters #

realValueX = 0.0
realValueY = 0.0
realValueZ = 0.1
realYaw = 0.0
yawRate = 0.0
velocity = 0.0
deltaX = 0.0
deltaY = 0.0
deltaZ = 0.0
angle = 0.0
error = 0.0
debug = False
status = False
statusPrev = False

# Init node #

rospy.init_node("PathControlModule")

# Loop rate (Hz) #

rate = rospy.Rate(updateRate) 

# ROS Publishers & Subscribers #

grcmdPub = rospy.Publisher (groundcommandTopic, Twist, queue_size=1)

aercmdPub = rospy.Publisher(aerialcommandTopic,PoseStamped,queue_size=10)

poseSub = rospy.Subscriber (stateTopic, ModelStates, listener.poseCallback, queue_size=1)

waypointSub = rospy.Subscriber (waypointTopic, Float64MultiArray, listener.waypointCallback, queue_size=50)

offb_state_sub = rospy.Subscriber(mavrosStateTopic, State, listener.stateCallback, queue_size=10)

# Mode object

control_mode = Mode()

outputMsg = Twist ()

outputMsg.linear.x = 0.0
outputMsg.linear.y = 0.0
outputMsg.linear.z = 0.0
outputMsg.angular.x = 0.0
outputMsg.angular.y = 0.0
outputMsg.angular.z = 0.0

realValueX = listener.realValueX
realValueY = listener.realValueY
realValueZ = listener.realValueZ

WPmsg = PoseStamped()

deltaX, deltaY, deltaZ, status = selectNextWP (waypointList, realValueX, realValueY, realValueZ, debug)

zWP = deltaZ + realValueZ

while not rospy.is_shutdown():

    # Aerial control Loop #
    
    while not rospy.is_shutdown() and control_mode.checkMode(realValueZ, zWP) == "AERIAL":

        # Stopping the ground motors #
        
        outputMsg.linear.x = 0.0
        outputMsg.linear.y = 0.0
        outputMsg.angular.z = 0.0
        grcmdPub.publish(outputMsg)
        
        rospy.loginfo('AERIAL Mode active')
        
        # Update Values #
        
        realValueX = listener.realValueX
        realValueY = listener.realValueY
        realValueZ = listener.realValueZ
        
        statusPrev = status
        
        deltaX, deltaY, deltaZ, status = selectNextWP (waypointList, realValueX, realValueY, realValueZ, debug)
        
        # rospy.loginfo('AERIAL status: %s, prev: %s', status, statusPrev)
        
        xWP = deltaX + realValueX
        yWP = deltaY + realValueY
        zWP = deltaZ + realValueZ
        
        # Launching the offboard node #
        
        if (status == False):
            break
        
        WPmsg.pose.position.x = xWP
        WPmsg.pose.position.y = yWP
        WPmsg.pose.position.z = zWP
        
        if current_state.mode != 'OFFBOARD':
            air_module_offb_node()
            while current_state.mode != 'OFFBOARD':
                rate.sleep()
        
        aercmdPub.publish(WPmsg)
        
        # Wait until next iteration #

        rate.sleep ()
        
    # Ground control Loop #

    while not rospy.is_shutdown() and control_mode.checkMode(realValueZ, zWP) == "GROUND":
        
        rospy.loginfo('GROUND Mode active')
        
        # Stopping the offboard node #
        
        if current_state.mode == 'OFFBOARD':
            offb_node.stop()
            rospy.loginfo('Offboard Node stopped')
            time.sleep(10)
        
        # Update values #

        realValueX = listener.realValueX
        realValueY = listener.realValueY
        realValueZ = listener.realValueZ
        realYaw = listener.realYaw

        # Compute speed #

        statusPrev = status

        deltaX, deltaY, deltaZ, status = selectNextWP (waypointList, realValueX, realValueY, realValueZ, debug)
        
        # rospy.loginfo('GROUND status: %s, prev: %s', status, statusPrev)

        if (status == False):

            outputMsg.linear.x = 0.0
            outputMsg.linear.y = 0.0
            outputMsg.angular.z = 0.0
            
            if statusPrev:
                break
            
        else:
            
            angle = computeAngle (deltaX, deltaY, angle, debug)
            error_angle = computeError (angle, realYaw, debug)
            yawRate = PIDController_YawRate (error_angle, debug)
            
            error_position = math.sqrt(pow(deltaX,2) + pow(deltaY,2) + pow(deltaZ,2))
            velocity = PIDController_Velocity(error_position, debug)
            
            outputMsg.linear.x = 0.2
            outputMsg.angular.z = yawRate

        # Publish message #
            
        grcmdPub.publish(outputMsg)

        # Wait until next iteration #	

        rate.sleep ()
        

    time.sleep(5)

""" ---------------------------------------------------------------------------- 
--------------------- Path Control Module (PCM) - ARAV ---------------------
----------------------------------------------------------------------------
-------------------- Author : Alberto Ceballos Gonzalez -------------------- 
-------- E-mail : alberto.ceballos-gonzalez@student.isae-supaero.fr -------- 
---------- (c) Copyright 2022 Alberto Ceballos All Rights Reserved ---------  
---------------------------------------------------------------------------- """