# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/akash/catkin_ws/src/mavros/test_mavros

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/akash/catkin_ws/build/test_mavros

# Include any dependencies generated for this target.
include CMakeFiles/sitl_test_node.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sitl_test_node.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sitl_test_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sitl_test_node.dir/flags.make

CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o: CMakeFiles/sitl_test_node.dir/flags.make
CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o: /home/akash/catkin_ws/src/mavros/test_mavros/sitl_test/sitl_test_node.cpp
CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o: CMakeFiles/sitl_test_node.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/akash/catkin_ws/build/test_mavros/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o -MF CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o.d -o CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o -c /home/akash/catkin_ws/src/mavros/test_mavros/sitl_test/sitl_test_node.cpp

CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/akash/catkin_ws/src/mavros/test_mavros/sitl_test/sitl_test_node.cpp > CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.i

CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/akash/catkin_ws/src/mavros/test_mavros/sitl_test/sitl_test_node.cpp -o CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.s

# Object files for target sitl_test_node
sitl_test_node_OBJECTS = \
"CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o"

# External object files for target sitl_test_node
sitl_test_node_EXTERNAL_OBJECTS =

/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: CMakeFiles/sitl_test_node.dir/sitl_test/sitl_test_node.cpp.o
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: CMakeFiles/sitl_test_node.dir/build.make
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /home/akash/catkin_ws/devel/.private/test_mavros/lib/libmavros_sitl_test.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libcontrol_toolbox.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/librealtime_tools.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /home/akash/catkin_ws/devel/.private/mavros/lib/libmavros.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libGeographic.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libdiagnostic_updater.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libeigen_conversions.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/liborocos-kdl.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /home/akash/catkin_ws/devel/.private/libmavconn/lib/libmavconn.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libclass_loader.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libdl.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libroslib.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/librospack.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libtf2_ros.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libactionlib.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libmessage_filters.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libroscpp.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/librosconsole.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libtf2.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/librostime.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /opt/ros/noetic/lib/libcpp_common.so
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node: CMakeFiles/sitl_test_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/akash/catkin_ws/build/test_mavros/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sitl_test_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sitl_test_node.dir/build: /home/akash/catkin_ws/devel/.private/test_mavros/lib/test_mavros/sitl_test_node
.PHONY : CMakeFiles/sitl_test_node.dir/build

CMakeFiles/sitl_test_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sitl_test_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sitl_test_node.dir/clean

CMakeFiles/sitl_test_node.dir/depend:
	cd /home/akash/catkin_ws/build/test_mavros && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/akash/catkin_ws/src/mavros/test_mavros /home/akash/catkin_ws/src/mavros/test_mavros /home/akash/catkin_ws/build/test_mavros /home/akash/catkin_ws/build/test_mavros /home/akash/catkin_ws/build/test_mavros/CMakeFiles/sitl_test_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sitl_test_node.dir/depend

