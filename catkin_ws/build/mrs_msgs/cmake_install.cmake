# Install script for directory: /home/akash/catkin_ws/src/mrs_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/akash/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akash/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/akash/catkin_ws/install" TYPE PROGRAM FILES "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akash/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/akash/catkin_ws/install" TYPE PROGRAM FILES "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/env.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akash/catkin_ws/install/setup.bash;/home/akash/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/akash/catkin_ws/install" TYPE FILE FILES
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/setup.bash"
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akash/catkin_ws/install/setup.sh;/home/akash/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/akash/catkin_ws/install" TYPE FILE FILES
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/setup.sh"
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akash/catkin_ws/install/setup.zsh;/home/akash/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/akash/catkin_ws/install" TYPE FILE FILES
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/setup.zsh"
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/akash/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/akash/catkin_ws/install" TYPE FILE FILES "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/.rosinstall")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/mpc_tracker" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mpc_tracker/MpcTrackerDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mpc_tracker/FuturePoint.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mpc_tracker/FutureTrajectory.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mpc_tracker/MpcPredictionFullState.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/landoff_tracker" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/landoff_tracker/LandoffDiagnostics.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/mrs_hw_modules" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_hw_modules/BigDofecStatus.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/srv/mrs_hw_modules" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/srv/mrs_hw_modules/BigDofecArm.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/mrs_hw_modules/BigDofecLaunch.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/mrs_hw_modules/BigDofecSetPWM.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/mrs_hw_modules/BigDofecSetLeds.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/mrs_hw_modules/BigDofecSalvo.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/mrs_hw_modules/LedStripDriver.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/srv/multimaster" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/srv/multimaster/ChangeState.srv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/srv/gazebo_ros_interface" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/srv/gazebo_ros_interface/GazeboApplyForce.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/gazebo_ros_interface/GazeboAttach.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/gazebo_ros_interface/GazeboAttachTyped.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/gazebo_ros_interface/GazeboDeleteModel.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/odometry" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/GpsData.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/RtkGps.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/RtkFixType.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/Float64ArrayStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/Float64MultiArrayStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/Float64Stamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/ModelState.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/Fusing.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/EstimatorType.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/OdometryDiag.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/EspOdometry.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/EstimatedState.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/LkfStates.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/Altitude.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/AltitudeStateNames.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/AltitudeType.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/Heading.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/HeadingStateNames.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/HeadingType.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/UavState.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/odometry/AloamgarmDebug.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/ouster" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/ouster/OusterInfo.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/uav_managers" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/PositionCommand.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/AttitudeCommand.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/TrackerStatus.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/ControllerStatus.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/EulerAngles.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/BoolStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/ControlManagerDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/BumperStatus.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/Reference.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/VelocityReference.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/VelocityReferenceStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/TrajectoryReference.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/PathReference.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/ReferenceList.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/ReferenceStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/Float64.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/DynamicsConstraints.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/ControlError.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/ConstraintManagerDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/GainManagerDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_managers/UavManagerDiagnostics.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/uav_status" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_status/UavStatus.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_status/UavStatusShort.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_status/CustomTopic.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uav_status/NodeCpuLoad.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/se3_controller" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/se3_controller/Se3Gains.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/trajectory_generation" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/trajectory_generation/Path.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/trajectory_generation/PathWithVelocity.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/trajectory_generation/ReferenceWithVelocity.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/diagnostics" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/diagnostics/MavrosState.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/diagnostics/GpsDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/diagnostics/SystemDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/diagnostics/BatteryDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/diagnostics/HeartbeatDiagnostics.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/diagnostics/MavrosDiagnostics.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/gnss" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Bestpos.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Bestvel.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Gpgga.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Gpgsa.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Gpgst.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Gpgsv.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Gpvtg.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Gprmc.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/StringStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/GPSFix.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/GpsStatus.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/RangeInformation.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Range.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Satellite.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/TersusMessageHeader.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Time.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/TrackstatChannel.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/gnss/Trackstat.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/srv/uav_managers" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/String.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/Vec4.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/Vec1.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/Float64Srv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/GetFloat64.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/Float64StampedSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/PlannerTask.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/DynamicsConstraintsSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/ReferenceSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/VelocityReferenceSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/VelocityReferenceStampedSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/ReferenceStampedSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/TrajectoryReferenceSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/TransformReferenceSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/TransformPoseSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/TransformVector3Srv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/ValidateReference.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/ValidateReferenceList.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/BumperParamsSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/uav_managers/ConstraintsOverride.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/mrs_serial" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_serial/BacaProtocol.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_serial/SerialRaw.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_serial/GimbalPRY.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_serial/TarotGimbalState.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/mrs_gripper" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_gripper/GripperDiagnostics.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/parachute" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/parachute/ParachuteDiagnostics.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/profiler" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/profiler/ProfilerUpdate.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/srv/odometry" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/srv/odometry/ChangeEstimator.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/odometry/ChangeHdgEstimator.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/odometry/ChangeAltEstimator.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/odometry/OffsetOdom.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/bumper" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/bumper/Histogram.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/bumper/ObstacleSectors.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/speed_tracker" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/speed_tracker/SpeedTrackerCommand.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/uvdar" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uvdar/Int32MultiArrayStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uvdar/Point2DWithFloat.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/uvdar/ImagePointsWithFloatStamped.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/sxd" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/sxd/SxdMeasurement.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/sxd/SxdHistogram.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/sxd/SxdDiagnostics.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/general" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/Sphere.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/PoseWithCovarianceIdentified.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/PoseWithCovarianceArrayStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/Track.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/TrackStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/TrackArrayStamped.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/NimbroTest.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/ImageLabeled.msg"
    "/home/akash/catkin_ws/src/mrs_msgs/msg/general/ImageLabeledArray.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/srv/general" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/srv/general/SetInt.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/general/NimbroTestSrv.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/simulation" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/simulation/SpawnerDiagnostics.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/srv/trajectory_generation" TYPE FILE FILES
    "/home/akash/catkin_ws/src/mrs_msgs/srv/trajectory_generation/PathSrv.srv"
    "/home/akash/catkin_ws/src/mrs_msgs/srv/trajectory_generation/GetPathSrv.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/pathfinder" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/pathfinder/PathfinderDiagnostics.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/stamped_msgs" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/stamped_msgs/UInt16Stamped.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/mrs_pcl_tools" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_pcl_tools/PclToolsDiagnostics.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/mrs_llcp" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/mrs_llcp/Llcp.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/msg/radar" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/msg/radar/RadarData.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/cmake" TYPE FILE FILES "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/mrs_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/akash/catkin_ws/devel/.private/mrs_msgs/include/mrs_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/akash/catkin_ws/devel/.private/mrs_msgs/share/roseus/ros/mrs_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/akash/catkin_ws/devel/.private/mrs_msgs/share/common-lisp/ros/mrs_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/akash/catkin_ws/devel/.private/mrs_msgs/share/gennodejs/ros/mrs_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/akash/catkin_ws/devel/.private/mrs_msgs/lib/python3/dist-packages/mrs_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/akash/catkin_ws/devel/.private/mrs_msgs/lib/python3/dist-packages/mrs_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/mrs_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/cmake" TYPE FILE FILES "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/mrs_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs/cmake" TYPE FILE FILES
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/mrs_msgsConfig.cmake"
    "/home/akash/catkin_ws/build/mrs_msgs/catkin_generated/installspace/mrs_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs" TYPE FILE FILES "/home/akash/catkin_ws/src/mrs_msgs/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmrs_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmrs_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmrs_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/akash/catkin_ws/devel/.private/mrs_msgs/lib/libmrs_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmrs_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmrs_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmrs_msgs.so"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmrs_msgs.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs" TYPE DIRECTORY FILES
    "/home/akash/catkin_ws/src/mrs_msgs/msg"
    "/home/akash/catkin_ws/src/mrs_msgs/srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrs_msgs" TYPE DIRECTORY FILES "/home/akash/catkin_ws/src/mrs_msgs/./" FILES_MATCHING REGEX "/[^/]*\\.xml$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/akash/catkin_ws/build/mrs_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/akash/catkin_ws/build/mrs_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
