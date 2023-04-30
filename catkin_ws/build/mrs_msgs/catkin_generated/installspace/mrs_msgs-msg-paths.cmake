# generated from genmsg/cmake/pkg-msg-paths.cmake.installspace.in

_prepend_path("${mrs_msgs_DIR}/.." "msg/mpc_tracker;msg/landoff_tracker;msg/mrs_hw_modules;msg/odometry;msg/ouster;msg/uav_managers;msg/uav_status;msg/se3_controller;msg/trajectory_generation;msg/diagnostics;msg/gnss;msg/mrs_serial;msg/mrs_gripper;msg/parachute;msg/profiler;msg/bumper;msg/speed_tracker;msg/uvdar;msg/sxd;msg/general;msg/simulation;msg/pathfinder;msg/stamped_msgs;msg/mrs_pcl_tools;msg/mrs_llcp;msg/radar" mrs_msgs_MSG_INCLUDE_DIRS UNIQUE)
set(mrs_msgs_MSG_DEPENDENCIES std_msgs;geometry_msgs;sensor_msgs)
