#!/usr/bin/env python

import numpy as np
import time
import rospy
import roslaunch
from tf.transformations import euler_from_quaternion
from nav_msgs.msg import Odometry
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Float64
from sensor_msgs.msg import LaserScan
import hybrid_automata2 as HA
import roslib
import smach
import smach_ros
from multiprocessing import Queue

pub_topic_l = '/dd_bot/left_wheel_controller/command'
pub_topic_r = '/dd_bot/right_wheel_controller/command'
pub_topic_waypoint = '/chatter'
sub_topic = '/mavros/local_position/odom'
sub_topic_laser = '/dd_bot/laser/scan'
L = HA.L
R = HA.R

currPosition = HA.Position(0,0,0)
laser_data = HA.laserSensor([],[],0)



def air_module_offb_node():
	global offb_node	
	package = 'beginner_tutorials'
	executable = 'offb_node_user_input'
	node = roslaunch.core.Node(package, executable)
	
	launch = roslaunch.scriptapi.ROSLaunch()
	launch.start()
	
	offb_node = launch.launch(node)

def readOdom(msg):																# Position and heading Feedback
	global currPosition
	currPosition.x = msg.pose.pose.position.x
	currPosition.y = msg.pose.pose.position.y
	currPosition.z = msg.pose.pose.position.z
	rot = msg.pose.pose.orientation
	(_,_,currPosition.yaw) = euler_from_quaternion([rot.x,rot.y,rot.z,rot.w])

def readLaser(msg):																# Obstacle Heading Feedback
	global laser_data
	data = msg.ranges
	mag = []
	angle = []
	for i in range(len(data)):
		if data[i] != float('inf') and data[i] != -float('inf'):
			angle.append(i*6.28/720-3.14)
			mag.append(data[i])
	laser_data.mag = mag
	laser_data.angle = angle
	laser_data.size = len(angle)

def user_input():
    while True:
        try:
            desiredPos_x = float(input('Enter waypoint x:'))
            desiredPos_y = float(input('Enter waypoint y:'))
            desiredPos_z = float(input('Enter waypoint z:'))
            if desiredPos_z >= 0.0:
                desiredPosition = HA.Position(desiredPos_x,desiredPos_y,desiredPos_z)
                missionTime = float(input('Enter the mission time deadline in seconds:'))
                break
            else:
                print('The z value should be greater than 0')
        except (NameError,TypeError,SyntaxError):
            print('Enter a valid waypoint')
    return desiredPosition,missionTime

def flight_sphere(T,desiredPosition):
	f = 1    		       # flight velocity
	g = 0.1                # ground velocity as mentioned in hybrid_automata2.py
	x = desiredPosition.x
	y = desiredPosition.y
	z = desiredPosition.z

	# Calculation of flight distance

	S = abs(f*(T*g**2 - g*(x**2 + y**2)**0.5 + ((x*f)**2 + (y*f)**2 + (z*f)**2 + (T*f*g)**2 - (2*T*g*(f)**2)*(x**2 + y**2)**0.5 - (z*g)**2)**0.5)/(g**2 - f**2))
	
	# Flight Sphere domain expansion speed calculation

	sp = abs(1/((T/S) - (1/f)))
	return sp


controller = rospy.init_node('Ground_Controller',anonymous=True)					# Initialize ROS node
sub = rospy.Subscriber(sub_topic,Odometry,readOdom)							# Initialize position information subscriber
sub_laser = rospy.Subscriber(sub_topic_laser,LaserScan,readLaser)				# Initialize laser scanner subscriber





# State mission_start

class mission_start(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['Ground Module Activated','Aerial Module Activated','Destination Reached'],input_keys=['desiredPosition','initial_timer','pub_l','pub_r','rate'])
        self.rpmLeft = 0
        self.rpmRight = 0
        self.SwT = 18                       # Switching Time
        self.SwD = 0.1*self.SwT             # Switching distance = ground velocity * Switching Time        
        self.flight_radius = 0
        self.h_dist = 0
        self.dist = 0

    def execute(self,userdata):                                 						# This is where the main body of the state will be coded
        
        self.flight_radius = userdata.rate*(time.time() - userdata.initial_timer)
        self.h_dist = np.sqrt((currPosition.x - userdata.desiredPosition.x)**2 + (currPosition.y - userdata.desiredPosition.y)**2)
        self.dist = np.sqrt((currPosition.x - userdata.desiredPosition.x)**2 + (currPosition.y - userdata.desiredPosition.y)**2 + (currPosition.z - userdata.desiredPosition.z)**2)
		
        outcome = ''
        if (abs(currPosition.x - userdata.desiredPosition.x) < 0.1 and abs(currPosition.y - userdata.desiredPosition.y) < 0.1
																	and abs(currPosition.z - userdata.desiredPosition.z) < 0.1):
			
            userdata.pub_l.publish(self.rpmLeft)
            userdata.pub_r.publish(self.rpmRight)
            outcome = 'Destination Reached'
		
        elif (userdata.dist - userdata.flight_radius > self.SwD * userdata.h_dist/userdata.dist):    # If the vehicle is not yet within the flight sphere and not yet within the switching distance
            outcome = 'Ground Module Activated'
		
        elif (userdata.dist - userdata.flight_radius <= self.SwD * userdata.h_dist/userdata.dist):				# Now the vehicle has reached the switching point
            outcome = 'Aerial Module Activated'
		
        return outcome



            


# State Drive

class Drive(smach.State):
	def __init__(self):
		smach.State.__init__(self,outcomes=['Destination Reached','Aerial Module Activated'],
											input_keys=['desiredPosition','initial_timer','pub_l','pub_r','rate'])
			
		self.SwT = 18
		self.SwD = 0.1*self.SwT
		self.flight_radius = 0
		self.h_dist = 0
		self.dist = 0

			
	def execute(self,userdata):

		self.flight_radius = userdata.rate*(time.time() - userdata.initial_timer)
		self.h_dist = np.sqrt((currPosition.x - userdata.desiredPosition.x)**2 + (currPosition.y - userdata.desiredPosition.y)**2)
		self.dist = np.sqrt((currPosition.x - userdata.desiredPosition.x)**2 + (currPosition.y - userdata.desiredPosition.y)**2 + (currPosition.z - userdata.desiredPosition.z)**2)

		(_,rpmLeft,rpmRight,distance) = HA.switch(currPosition,userdata.desiredPosition,laser_data)
		userdata.pub_l.publish(rpmLeft)
		userdata.pub_r.publish(rpmRight)
		
		outcome = ''
		if (abs(currPosition.x - userdata.desiredPosition.x) < 0.1 and abs(currPosition.y - userdata.desiredPosition.y) < 0.1 and abs(currPosition.z - userdata.desiredPosition.z) < 0.1):
			rpmLeft = 0
			rpmRight = 0
			userdata.pub_l.publish(rpmLeft)
			userdata.pub_r.publish(rpmRight)
			outcome = 'Destination Reached'
		
		elif (self.dist - self.flight_radius <= self.SwD * self.h_dist/self.dist):				# Now the vehicle has reached the switching point
			outcome = 'Aerial Module Activated'
		
		return outcome

            


# State Flight

class Flight(smach.State):
	def __init__(self):
		smach.State.__init__(self,outcomes=['Takeoff'],
											input_keys=['desiredPosition','initial_timer','rate'])
			
		self.flight_radius = 0
		self.h_dist = 0
		self.dist = 0

	def execute(self,userdata):
		
		self.flight_radius = userdata.rate*(time.time() - userdata.initial_timer)
		self.h_dist = np.sqrt((currPosition.x - userdata.desiredPosition.x)**2 + (currPosition.y - userdata.desiredPosition.y)**2)
		self.dist = np.sqrt((currPosition.x - userdata.desiredPosition.x)**2 + (currPosition.y - userdata.desiredPosition.y)**2 + (currPosition.z - userdata.desiredPosition.z)**2)

		air_module_offb_node()
		time.sleep(18)
		return 'Takeoff'



# State Takeoff

class Takeoff(smach.State):
	def __init__(self):
		smach.State.__init__(self,outcomes=['Flying'],
											input_keys=['pub_l','pub_r','pub_wp'])
			
		self.SwT = 18
		self.SwD = 0.1*self.SwT
		self.flight_radius = 0
		self.h_dist = 0
		self.dist = 0
		self.rpmLeft = 0
		self.rpmRight = 0

		self.takeoff_wp = PoseStamped()
		self.takeoff_wp.pose.position.x = currPosition.x
		self.takeoff_wp.pose.position.y = currPosition.y
		self.takeoff_wp.pose.position.z = 1

	def execute(self,userdata):

		userdata.pub_wp.publish(self.takeoff_wp)
		userdata.pub_l.publish(self.rpmLeft)
		userdata.pub_r.publish(self.rpmRight)

		if (abs(currPosition.z - 1) < 0.1):
			return 'Flying'



# State Flying

class Flying(smach.State):
	def __init__(self):
		smach.State.__init__(self,outcomes=['Destination Reached','Landing'],
											input_keys=['desiredPosition','pub_wp','msg'])

		

	def execute(self,userdata):

		if userdata.desiredPosition.z > 0.4:													# Aerial destination coordinates
			userdata.pub_wp.publish(userdata.msg)

			if (abs(currPosition.x - userdata.desiredPosition.x) < 0.1 and abs(currPosition.y - userdata.desiredPosition.y) < 0.1
																		and abs(currPosition.z - userdata.desiredPosition.z) < 0.1):
				return 'Destination Reached'
		
		elif userdata.desiredPosition.z < 0.4:													# Ground destination coordinates
			self.landingfrom_wp = PoseStamped()
			self.landingfrom_wp.pose.position.x = userdata.desiredPosition.x
			self.landingfrom_wp.pose.position.y = userdata.desiredPosition.y
			self.landingfrom_wp.pose.position.z = 1
			userdata.pub_wp.publish(self.landingfrom_wp)
   
			if (abs(currPosition.x - userdata.desiredPosition.x) < 0.1 and abs(currPosition.y - userdata.desiredPosition.y) < 0.1
																		and abs(currPosition.z - userdata.desiredPosition.z) < 0.1):
				return 'Landing'


			
# State Landing

class Landing(smach.State):
	def __init__(self):
		smach.State.__init__(self,outcomes=['Destination Reached'])

	def execute(self,userdata):

		offb_node.stop()
		return 'Destination Reached'






def main():
    #rospy.init_node('state_machine',anonymous=True)

    # Creating a SMACH state machine
    SM = smach.StateMachine(outcomes=['Mission Complete'])
    SM.userdata.pub_l = rospy.Publisher(pub_topic_l,Float64,queue_size=10)						# Initialize left wheel RPM publisher
    SM.userdata.pub_r = rospy.Publisher(pub_topic_r,Float64,queue_size=10)						# Initialize right wheel RPM publisher
    SM.userdata.pub_wp = rospy.Publisher(pub_topic_waypoint,PoseStamped,queue_size=10)
	#r = rospy.Rate(1)

    SM.userdata.desiredPosition,missionTime = user_input()
    SM.userdata.msg = PoseStamped()
    SM.userdata.msg.pose.position.x = SM.userdata.desiredPosition.x
    SM.userdata.msg.pose.position.y = SM.userdata.desiredPosition.y
    SM.userdata.msg.pose.position.z = SM.userdata.desiredPosition.z
    SM.userdata.pub_wp.publish(SM.userdata.msg)
    SM.userdata.initial_timer = time.time()
    SM.userdata.rate = flight_sphere(missionTime,SM.userdata.desiredPosition)


	# Open the container

    with SM:

        # Add states to the container
        
        smach.StateMachine.add('mission start',mission_start(),
																transitions={'Ground Module Activated':'Drive',
																			 'Aerial Module Activated':'Flight',
																			 'Destination Reached':'Mission Complete'},
																remapping={'desiredPosition':'desiredPosition',
																		   'initial_timer':'initial_timer',
																		   'pub_l':'pub_l',
																		   'pub_r':'pub_r',
																		   'rate':'rate'})
        
        smach.StateMachine.add('Drive',Drive(),
																transitions={'Aerial Module Activated':'Flight',
																			 'Destination Reached':'Mission Complete'},
																remapping={'desiredPosition':'desiredPosition',
																		   'initial_timer':'initial_timer',
																		   'pub_l':'pub_l',
																		   'pub_r':'pub_r',
																		   'rate':'rate'})
        
        smach.StateMachine.add('Flight',Flight(),
																transitions={'Takeoff':'Takeoff'},
																remapping={'desiredPosition':'desiredPosition',
																		   'initial_timer':'initial_timer',
																		   'rate':'rate'})
        
        smach.StateMachine.add('Takeoff',Takeoff(),
																transitions={'Flying':'Flying'},
																remapping={'pub_l':'pub_l',
																		   'pub_r':'pub_r',
																		   'pub_wp':'pub_wp'})
																			
        smach.StateMachine.add('Flying',Flying(),
																transitions={'Destination Reached':'Mission Complete',
																						 'Landing':'Landing'},
																remapping={'desiredPosition':'desiredPosition',
																		   'pub_wp':'pub_wp',
																		   'msg':'msg'})
        
        smach.StateMachine.add('Landing',Landing(),
																transitions={'Destination Reached':'Mission Complete'})
	
	
    # Create and start the introspection server                                     # In order to start the smach viewer, use the command - rosrun smach_viewer smach_viewer.py
    sis = smach_ros.IntrospectionServer('server_name',SM,'/SM_ROOT')
    sis.start()

    # Execute SMACH plan
    outcome = sm.execute()
    rospy.spin()
	#r.sleep()
    sis.stop()

if __name__ == '__main__':
    main()

