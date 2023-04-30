set(mrs_msgs_MESSAGE_FILES "msg/mpc_tracker/MpcTrackerDiagnostics.msg;msg/mpc_tracker/FuturePoint.msg;msg/mpc_tracker/FutureTrajectory.msg;msg/mpc_tracker/MpcPredictionFullState.msg;msg/landoff_tracker/LandoffDiagnostics.msg;msg/mrs_hw_modules/BigDofecStatus.msg;msg/odometry/GpsData.msg;msg/odometry/RtkGps.msg;msg/odometry/RtkFixType.msg;msg/odometry/Float64ArrayStamped.msg;msg/odometry/Float64MultiArrayStamped.msg;msg/odometry/Float64Stamped.msg;msg/odometry/ModelState.msg;msg/odometry/Fusing.msg;msg/odometry/EstimatorType.msg;msg/odometry/OdometryDiag.msg;msg/odometry/EspOdometry.msg;msg/odometry/EstimatedState.msg;msg/odometry/LkfStates.msg;msg/odometry/Altitude.msg;msg/odometry/AltitudeStateNames.msg;msg/odometry/AltitudeType.msg;msg/odometry/Heading.msg;msg/odometry/HeadingStateNames.msg;msg/odometry/HeadingType.msg;msg/odometry/UavState.msg;msg/odometry/AloamgarmDebug.msg;msg/ouster/OusterInfo.msg;msg/uav_managers/PositionCommand.msg;msg/uav_managers/AttitudeCommand.msg;msg/uav_managers/TrackerStatus.msg;msg/uav_managers/ControllerStatus.msg;msg/uav_managers/EulerAngles.msg;msg/uav_managers/BoolStamped.msg;msg/uav_managers/ControlManagerDiagnostics.msg;msg/uav_managers/BumperStatus.msg;msg/uav_managers/Reference.msg;msg/uav_managers/VelocityReference.msg;msg/uav_managers/VelocityReferenceStamped.msg;msg/uav_managers/TrajectoryReference.msg;msg/uav_managers/PathReference.msg;msg/uav_managers/ReferenceList.msg;msg/uav_managers/ReferenceStamped.msg;msg/uav_managers/Float64.msg;msg/uav_managers/DynamicsConstraints.msg;msg/uav_managers/ControlError.msg;msg/uav_managers/ConstraintManagerDiagnostics.msg;msg/uav_managers/GainManagerDiagnostics.msg;msg/uav_managers/UavManagerDiagnostics.msg;msg/uav_status/UavStatus.msg;msg/uav_status/UavStatusShort.msg;msg/uav_status/CustomTopic.msg;msg/uav_status/NodeCpuLoad.msg;msg/se3_controller/Se3Gains.msg;msg/trajectory_generation/Path.msg;msg/trajectory_generation/PathWithVelocity.msg;msg/trajectory_generation/ReferenceWithVelocity.msg;msg/diagnostics/MavrosState.msg;msg/diagnostics/GpsDiagnostics.msg;msg/diagnostics/SystemDiagnostics.msg;msg/diagnostics/BatteryDiagnostics.msg;msg/diagnostics/HeartbeatDiagnostics.msg;msg/diagnostics/MavrosDiagnostics.msg;msg/gnss/Bestpos.msg;msg/gnss/Bestvel.msg;msg/gnss/Gpgga.msg;msg/gnss/Gpgsa.msg;msg/gnss/Gpgst.msg;msg/gnss/Gpgsv.msg;msg/gnss/Gpvtg.msg;msg/gnss/Gprmc.msg;msg/gnss/StringStamped.msg;msg/gnss/GPSFix.msg;msg/gnss/GpsStatus.msg;msg/gnss/RangeInformation.msg;msg/gnss/Range.msg;msg/gnss/Satellite.msg;msg/gnss/TersusMessageHeader.msg;msg/gnss/Time.msg;msg/gnss/TrackstatChannel.msg;msg/gnss/Trackstat.msg;msg/mrs_serial/BacaProtocol.msg;msg/mrs_serial/SerialRaw.msg;msg/mrs_serial/GimbalPRY.msg;msg/mrs_serial/TarotGimbalState.msg;msg/mrs_gripper/GripperDiagnostics.msg;msg/parachute/ParachuteDiagnostics.msg;msg/profiler/ProfilerUpdate.msg;msg/bumper/Histogram.msg;msg/bumper/ObstacleSectors.msg;msg/speed_tracker/SpeedTrackerCommand.msg;msg/uvdar/Int32MultiArrayStamped.msg;msg/uvdar/Point2DWithFloat.msg;msg/uvdar/ImagePointsWithFloatStamped.msg;msg/sxd/SxdMeasurement.msg;msg/sxd/SxdHistogram.msg;msg/sxd/SxdDiagnostics.msg;msg/general/Sphere.msg;msg/general/PoseWithCovarianceIdentified.msg;msg/general/PoseWithCovarianceArrayStamped.msg;msg/general/Track.msg;msg/general/TrackStamped.msg;msg/general/TrackArrayStamped.msg;msg/general/NimbroTest.msg;msg/general/ImageLabeled.msg;msg/general/ImageLabeledArray.msg;msg/simulation/SpawnerDiagnostics.msg;msg/pathfinder/PathfinderDiagnostics.msg;msg/stamped_msgs/UInt16Stamped.msg;msg/mrs_pcl_tools/PclToolsDiagnostics.msg;msg/mrs_llcp/Llcp.msg;msg/radar/RadarData.msg")
set(mrs_msgs_SERVICE_FILES "srv/mrs_hw_modules/BigDofecArm.srv;srv/mrs_hw_modules/BigDofecLaunch.srv;srv/mrs_hw_modules/BigDofecSetPWM.srv;srv/mrs_hw_modules/BigDofecSetLeds.srv;srv/mrs_hw_modules/BigDofecSalvo.srv;srv/mrs_hw_modules/LedStripDriver.srv;srv/multimaster/ChangeState.srv;srv/gazebo_ros_interface/GazeboApplyForce.srv;srv/gazebo_ros_interface/GazeboAttach.srv;srv/gazebo_ros_interface/GazeboAttachTyped.srv;srv/gazebo_ros_interface/GazeboDeleteModel.srv;srv/uav_managers/String.srv;srv/uav_managers/Vec4.srv;srv/uav_managers/Vec1.srv;srv/uav_managers/Float64Srv.srv;srv/uav_managers/GetFloat64.srv;srv/uav_managers/Float64StampedSrv.srv;srv/uav_managers/PlannerTask.srv;srv/uav_managers/DynamicsConstraintsSrv.srv;srv/uav_managers/ReferenceSrv.srv;srv/uav_managers/VelocityReferenceSrv.srv;srv/uav_managers/VelocityReferenceStampedSrv.srv;srv/uav_managers/ReferenceStampedSrv.srv;srv/uav_managers/TrajectoryReferenceSrv.srv;srv/uav_managers/TransformReferenceSrv.srv;srv/uav_managers/TransformPoseSrv.srv;srv/uav_managers/TransformVector3Srv.srv;srv/uav_managers/ValidateReference.srv;srv/uav_managers/ValidateReferenceList.srv;srv/uav_managers/BumperParamsSrv.srv;srv/uav_managers/ConstraintsOverride.srv;srv/odometry/ChangeEstimator.srv;srv/odometry/ChangeHdgEstimator.srv;srv/odometry/ChangeAltEstimator.srv;srv/odometry/OffsetOdom.srv;srv/general/SetInt.srv;srv/general/NimbroTestSrv.srv;srv/trajectory_generation/PathSrv.srv;srv/trajectory_generation/GetPathSrv.srv")
