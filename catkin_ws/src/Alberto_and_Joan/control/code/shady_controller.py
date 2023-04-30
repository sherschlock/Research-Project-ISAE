#!/usr/bin/env python
import rospy
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped, Point
from mavros_msgs.msg import State
from mavros_msgs.srv import CommandBool, SetMode
from tf.transformations import quaternion_from_euler
import math

waypoints = [Point(0, 0, 2), Point(2, 0, 2), Point(2, 2, 2)]
tolerance = 1

current_waypoint = 0
reached_waypoint = True

def check_reached(current_pose):
    global current_waypoint, reached_waypoint
    if not reached_waypoint:
        return
    target_waypoint = waypoints[current_waypoint]
    distance = math.sqrt((current_pose.position.x - target_waypoint.x)**2 +
                         (current_pose.position.y - target_waypoint.y)**2 +
                         (current_pose.position.z - target_waypoint.z)**2)
    if distance < tolerance:
        rospy.loginfo(f"Reached waypoint {current_waypoint + 1}")
        reached_waypoint = False
        current_waypoint = (current_waypoint + 1) % len(waypoints)
    
    rospy.loginfo(f"Distance {distance}")

def state_callback(state):
    if state.armed and state.mode == "OFFBOARD":
        global reached_waypoint
        if reached_waypoint:
            pose_stamped = PoseStamped()
            pose_stamped.pose.position = waypoints[current_waypoint]
            pose_stamped.pose.orientation.x = 0.0
            pose_stamped.pose.orientation.y = 0.0
            pose_stamped.pose.orientation.z = 0.0
            pose_stamped.pose.orientation.w = 1.0
            pose_stamped.header.frame_id = "map"
            pose_stamped.header.stamp = rospy.Time.now()
            chatter_pub.publish(pose_stamped)
            rospy.loginfo(f"Published waypoint {current_waypoint + 1}")
            reached_waypoint = False
              
def pose_callback(pose):
    check_reached(pose.pose)

if __name__ == "__main__":
    rospy.init_node("waypoint_publisher")
    rate = rospy.Rate(10)
    pose_sub = rospy.Subscriber("/mavros/local_position/pose", PoseStamped, pose_callback)
    state_sub = rospy.Subscriber("/mavros/state", State, state_callback)
    chatter_pub = rospy.Publisher("/arav/chatter", PoseStamped, queue_size=10)
    rospy.loginfo("Node initialized")
    while not rospy.is_shutdown():
        rate.sleep()
