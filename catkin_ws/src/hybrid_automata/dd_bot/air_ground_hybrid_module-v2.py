


#  Switching Time taken into account


#!/usr/bin/python
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
			desiredPos = input('Enter the next waypoint (x,y,z):')
			if len(desiredPos) != 3:
				print('Enter all three coordinates (x,y,z).')
			elif len(desiredPos) == 3 and desiredPos[2] >= 0:
				desiredPosition = HA.Position(desiredPos[0],desiredPos[1],desiredPos[2])
				missionTime = input('Enter the mission time deadline in seconds:')
				break
			else:
				print('The z value should be greater than 0.')
		except (NameError,TypeError,SyntaxError):
			print('Enter a valid waypoint in format (x,y,z).')
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
pub_l = rospy.Publisher(pub_topic_l,Float64,queue_size=10)						# Initialize left wheel RPM publisher
pub_r = rospy.Publisher(pub_topic_r,Float64,queue_size=10)						# Initialize right wheel RPM publisher
pub_wp = rospy.Publisher(pub_topic_waypoint,PoseStamped,queue_size=10)
r = rospy.Rate(1)

desiredPosition,missionTime = user_input()
msg = PoseStamped()
msg.pose.position.x = desiredPosition.x
msg.pose.position.y = desiredPosition.y
msg.pose.position.z = desiredPosition.z
pub_wp.publish(msg)
initial_timer = time.time()
rate = flight_sphere(missionTime,desiredPosition)

try:
	while not rospy.is_shutdown():
		flight_radius = rate*(time.time() - initial_timer)
		h_dist = np.sqrt((currPosition.x - desiredPosition.x)**2 + (currPosition.y - desiredPosition.y)**2)
		SwT = 18  # Switching Time
		SwD = 0.1*SwT    # Switching distance = ground velocity * Switching Time

		dist = np.sqrt((currPosition.x - desiredPosition.x)**2 + (currPosition.y - desiredPosition.y)**2 + (currPosition.z - desiredPosition.z)**2)
		if (abs(currPosition.x - desiredPosition.x) < 0.1 and abs(currPosition.y - desiredPosition.y) < 0.1 and abs(currPosition.z - desiredPosition.z) < 0.1):
			rpmLeft = 0
			rpmRight = 0
			pub_l.publish(rpmLeft)
			pub_r.publish(rpmRight)
			print('Target reached!\n')
			desiredPosition = user_input()
			msg.pose.position.x = desiredPosition.x
			msg.pose.position.y = desiredPosition.y
			msg.pose.position.z = desiredPosition.z
			pub_wp.publish(msg)
			initial_timer = time.time()
			rate = flight_sphere(missionTime,desiredPosition)
			flight_radius = rate*(time.time() - initial_timer)
		elif dist - flight_radius > SwD * h_dist/dist:     			# If the vehicle is not yet within the flight sphere and not yet within the switching distance
			(_,rpmLeft,rpmRight,distance) = HA.switch(currPosition,desiredPosition,laser_data)
			pub_l.publish(rpmLeft)
			pub_r.publish(rpmRight)	
		elif dist - flight_radius <= SwD * h_dist/dist:				# Now the vehicle has reached the switching point
			print('Switching to Air Module.')	
			air_module_offb_node()
			while not rospy.is_shutdown():
				try:
					pub_wp.publish(msg)
					if currPosition.z > 0.4:                    # Basically to turn the ground module off when the vehicle starts flying
						rpmLeft = 0
						rpmRight = 0
						pub_l.publish(rpmLeft)
						pub_r.publish(rpmRight)
					if (abs(currPosition.x - desiredPosition.x) < 0.1 and abs(currPosition.y - desiredPosition.y) < 0.1 and abs(currPosition.z - desiredPosition.z) < 0.1):
						print('Target reached!\n')
						desiredPosition,missionTime = user_input()
						msg.pose.position.x = desiredPosition.x
						msg.pose.position.y = desiredPosition.y
						msg.pose.position.z = desiredPosition.z
						pub_wp.publish(msg)
						initial_timer = time.time()
						rate = flight_sphere(missionTime,desiredPosition)
						flight_radius = rate*(time.time() - initial_timer)
						dist = np.sqrt((currPosition.x - desiredPosition.x)**2 + (currPosition.y - desiredPosition.y)**2 + (currPosition.z - desiredPosition.z)**2)
						if dist > flight_radius:									# This checks for the condition against the new waypoint received
							offb_node.stop()
							break
					r.sleep()
				except rospy.ROSInterruptException:
					break		

		print('\nDistance to target: ' + str(round(dist,2)) + 'm')
		print('The flight domain sphere radius: ' + str(round(flight_radius,2)) + 'm')
		print(round(currPosition.x,2),round(currPosition.y,2),round(currPosition.z,2))
		r.sleep()
except rospy.ROSInterruptException:
		pass