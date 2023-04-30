# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/opt/ros/noetic/include".split(';') if "${prefix}/include;/opt/ros/noetic/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;nodelet;mrs_lib;std_msgs;nav_msgs;mrs_msgs;mrs_subt_planning_lib".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lPathfinder;-lMrsAstarPlanner;/opt/ros/noetic/lib/liboctomap.so;/opt/ros/noetic/lib/liboctomath.so".split(';') if "-lPathfinder;-lMrsAstarPlanner;/opt/ros/noetic/lib/liboctomap.so;/opt/ros/noetic/lib/liboctomath.so" != "" else []
PROJECT_NAME = "pathfinder"
PROJECT_SPACE_DIR = "/home/akash/catkin_ws/install"
PROJECT_VERSION = "1.0.0"
