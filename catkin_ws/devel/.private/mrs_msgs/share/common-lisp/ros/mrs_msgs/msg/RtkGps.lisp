; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude RtkGps.msg.html

(cl:defclass <RtkGps> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gps
    :reader gps
    :initarg :gps
    :type mrs_msgs-msg:GpsData
    :initform (cl:make-instance 'mrs_msgs-msg:GpsData))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (status
    :reader status
    :initarg :status
    :type sensor_msgs-msg:NavSatStatus
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatStatus))
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type mrs_msgs-msg:RtkFixType
    :initform (cl:make-instance 'mrs_msgs-msg:RtkFixType)))
)

(cl:defclass RtkGps (<RtkGps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RtkGps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RtkGps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<RtkGps> is deprecated: use mrs_msgs-msg:RtkGps instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RtkGps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gps-val :lambda-list '(m))
(cl:defmethod gps-val ((m <RtkGps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gps-val is deprecated.  Use mrs_msgs-msg:gps instead.")
  (gps m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RtkGps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pose-val is deprecated.  Use mrs_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <RtkGps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:twist-val is deprecated.  Use mrs_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RtkGps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:status-val is deprecated.  Use mrs_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <RtkGps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fix_type-val is deprecated.  Use mrs_msgs-msg:fix_type instead.")
  (fix_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RtkGps>) ostream)
  "Serializes a message object of type '<RtkGps>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fix_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RtkGps>) istream)
  "Deserializes a message object of type '<RtkGps>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fix_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RtkGps>)))
  "Returns string type for a message object of type '<RtkGps>"
  "mrs_msgs/RtkGps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RtkGps)))
  "Returns string type for a message object of type 'RtkGps"
  "mrs_msgs/RtkGps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RtkGps>)))
  "Returns md5sum for a message object of type '<RtkGps>"
  "a5dee1255adc6ec2f5748e9b9ee61cff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RtkGps)))
  "Returns md5sum for a message object of type 'RtkGps"
  "a5dee1255adc6ec2f5748e9b9ee61cff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RtkGps>)))
  "Returns full string definition for message of type '<RtkGps>"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/GpsData gps~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%sensor_msgs/NavSatStatus status~%mrs_msgs/RtkFixType fix_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsData~%float64 latitude~%float64 longitude~%float64 altitude~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%================================================================================~%MSG: mrs_msgs/RtkFixType~%uint8 RTK_FIX=5~%uint8 RTK_FLOAT=4~%uint8 UNKNOWN=3~%uint8 DGPS=2~%uint8 SPS=1~%uint8 NO_FIX=0~%uint8 fix_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RtkGps)))
  "Returns full string definition for message of type 'RtkGps"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/GpsData gps~%geometry_msgs/PoseWithCovariance pose~%geometry_msgs/TwistWithCovariance twist~%sensor_msgs/NavSatStatus status~%mrs_msgs/RtkFixType fix_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsData~%float64 latitude~%float64 longitude~%float64 altitude~%float64[9] covariance~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%================================================================================~%MSG: mrs_msgs/RtkFixType~%uint8 RTK_FIX=5~%uint8 RTK_FLOAT=4~%uint8 UNKNOWN=3~%uint8 DGPS=2~%uint8 SPS=1~%uint8 NO_FIX=0~%uint8 fix_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RtkGps>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fix_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RtkGps>))
  "Converts a ROS message object to a list"
  (cl:list 'RtkGps
    (cl:cons ':header (header msg))
    (cl:cons ':gps (gps msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':status (status msg))
    (cl:cons ':fix_type (fix_type msg))
))
