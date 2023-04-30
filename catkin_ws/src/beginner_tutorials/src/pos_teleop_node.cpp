#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>


#include <iostream>
using namespace std;


float x=0, y=0, z=0;

int main(int argc, char** argv) {
	ros::init(argc, argv, "pos_teleop_node");
	ros::NodeHandle nh;

	ros::Publisher pub = nh.advertise<geometry_msgs::PoseStamped>("chatter", 10);
	
	while(ros::ok()) {
		geometry_msgs::PoseStamped pose;

		cout << "Enter x value: ";
		cin >> x;
		cout << "Enter y value: ";
		cin >> y;
		cout << "Enter z value: ";
		cin >> z;
		pose.pose.position.x = x;
		pose.pose.position.y = y;
		pose.pose.position.z = z;

		pub.publish(pose);
	}
	
	return 0;
}
