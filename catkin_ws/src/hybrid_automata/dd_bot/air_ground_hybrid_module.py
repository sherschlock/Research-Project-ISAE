#!/usr/bin/python
import numpy as np
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
			desiredPos_x = float(input('Enter waypoint x:'))
			desiredPos_y = float(input('Enter waypoint y:'))
			desiredPos_z = float(input('Enter waypoint z:'))
			if desiredPos_z >= 0.0:
				desiredPosition = HA.Position(desiredPos_x,desiredPos_y,desiredPos_z)
				break
			else:
				print('The z value should be greater than 0')
		except (NameError,TypeError,SyntaxError):
			print('Enter a valid waypoint')
		return desiredPosition
	# 		desiredPos = input('Enter the next waypoint (x,y,z):')
	# 		if len(desiredPos) != 3:
	# 			print('Enter all three coordinates (x,y,z).')
	# 		elif len(desiredPos) == 3 and desiredPos[2] >= 0:
	# 			desiredPosition = HA.Position(desiredPos[0],desiredPos[1],desiredPos[2])
	# 			break
	# 		else:
	# 			print('The z value should be greater than 0.')
	# 	except (NameError,TypeError,SyntaxError):
	# 		print('Enter a valid waypoint in format (x,y,z).')
	# return desiredPosition

controller = rospy.init_node('Ground_Controller',anonymous=True)					# Initialize ROS node
sub = rospy.Subscriber(sub_topic,Odometry,readOdom)							# Initialize position information subscriber
sub_laser = rospy.Subscriber(sub_topic_laser,LaserScan,readLaser)				# Initialize laser scanner subscriber
pub_l = rospy.Publisher(pub_topic_l,Float64,queue_size=10)						# Initialize left wheel RPM publisher
pub_r = rospy.Publisher(pub_topic_r,Float64,queue_size=10)						# Initialize right wheel RPM publisher
pub_wp = rospy.Publisher(pub_topic_waypoint,PoseStamped,queue_size=10)
r = rospy.Rate(1)

desiredPosition = user_input()
msg = PoseStamped()
msg.pose.position.x = desiredPosition.x
msg.pose.position.y = desiredPosition.y
msg.pose.position.z = desiredPosition.z
pub_wp.publish(msg)

try:
	while not rospy.is_shutdown():
		if (abs(currPosition.x - desiredPosition.x) < 0.4 and abs(currPosition.y - desiredPosition.y) < 0.4 and abs(currPosition.z - desiredPosition.z) < 0.4):
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
		elif desiredPosition.z < 0.4:
			(_,rpmLeft,rpmRight,distance) = HA.switch(currPosition,desiredPosition,laser_data)
			pub_l.publish(rpmLeft)
			pub_r.publish(rpmRight)

		elif desiredPosition.z > 0.4:
			rpmLeft = 0
			rpmRight = 0
			pub_l.publish(rpmLeft)
			pub_r.publish(rpmRight)
			print('Switching to Air Module.')
			msg.pose.position.x = desiredPosition.x
			msg.pose.position.y = desiredPosition.y
			msg.pose.position.z = desiredPosition.z
			pub_wp.publish(msg)		
			air_module_offb_node()
			while not rospy.is_shutdown():
				try:
					if (abs(currPosition.x - desiredPosition.x) < 0.4 and abs(currPosition.y - desiredPosition.y) < 0.4 and abs(currPosition.z - desiredPosition.z) < 0.4):
						print('Target reached!\n')
						desiredPosition = user_input()
						msg.pose.position.x = desiredPosition.x
						msg.pose.position.y = desiredPosition.y
						msg.pose.position.z = desiredPosition.z
					pub_wp.publish(msg)
					if desiredPosition.z < 0.4:
						offb_node.stop()
						break
					r.sleep()
				except rospy.ROSInterruptException:
					break		
	
		print(currPosition.x,currPosition.y,currPosition.z)
		r.sleep()
except rospy.ROSInterruptException:
		pass
