;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::RtkGps)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'RtkGps (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::RTKGPS")
  (make-package "MRS_MSGS::RTKGPS"))

(in-package "ROS")
;;//! \htmlinclude RtkGps.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::RtkGps
  :super ros::object
  :slots (_header _gps _pose _twist _status _fix_type ))

(defmethod mrs_msgs::RtkGps
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gps __gps) (instance mrs_msgs::GpsData :init))
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:twist __twist) (instance geometry_msgs::TwistWithCovariance :init))
    ((:status __status) (instance sensor_msgs::NavSatStatus :init))
    ((:fix_type __fix_type) (instance mrs_msgs::RtkFixType :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gps __gps)
   (setq _pose __pose)
   (setq _twist __twist)
   (setq _status __status)
   (setq _fix_type __fix_type)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gps
   (&rest __gps)
   (if (keywordp (car __gps))
       (send* _gps __gps)
     (progn
       (if __gps (setq _gps (car __gps)))
       _gps)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:fix_type
   (&rest __fix_type)
   (if (keywordp (car __fix_type))
       (send* _fix_type __fix_type)
     (progn
       (if __fix_type (setq _fix_type (car __fix_type)))
       _fix_type)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/GpsData _gps
    (send _gps :serialization-length)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _twist
    (send _twist :serialization-length)
    ;; sensor_msgs/NavSatStatus _status
    (send _status :serialization-length)
    ;; mrs_msgs/RtkFixType _fix_type
    (send _fix_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/GpsData _gps
       (send _gps :serialize s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistWithCovariance _twist
       (send _twist :serialize s)
     ;; sensor_msgs/NavSatStatus _status
       (send _status :serialize s)
     ;; mrs_msgs/RtkFixType _fix_type
       (send _fix_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/GpsData _gps
     (send _gps :deserialize buf ptr-) (incf ptr- (send _gps :serialization-length))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; sensor_msgs/NavSatStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; mrs_msgs/RtkFixType _fix_type
     (send _fix_type :deserialize buf ptr-) (incf ptr- (send _fix_type :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::RtkGps :md5sum-) "a5dee1255adc6ec2f5748e9b9ee61cff")
(setf (get mrs_msgs::RtkGps :datatype-) "mrs_msgs/RtkGps")
(setf (get mrs_msgs::RtkGps :definition-)
      "std_msgs/Header header
mrs_msgs/GpsData gps
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist
sensor_msgs/NavSatStatus status
mrs_msgs/RtkFixType fix_type

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: mrs_msgs/GpsData
float64 latitude
float64 longitude
float64 altitude
float64[9] covariance

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

================================================================================
MSG: mrs_msgs/RtkFixType
uint8 RTK_FIX=5
uint8 RTK_FLOAT=4
uint8 UNKNOWN=3
uint8 DGPS=2
uint8 SPS=1
uint8 NO_FIX=0
uint8 fix_type

")



(provide :mrs_msgs/RtkGps "a5dee1255adc6ec2f5748e9b9ee61cff")


