; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude TrackArrayStamped.msg.html

(cl:defclass <TrackArrayStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracks
    :reader tracks
    :initarg :tracks
    :type (cl:vector mrs_msgs-msg:Track)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:Track :initial-element (cl:make-instance 'mrs_msgs-msg:Track))))
)

(cl:defclass TrackArrayStamped (<TrackArrayStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackArrayStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackArrayStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<TrackArrayStamped> is deprecated: use mrs_msgs-msg:TrackArrayStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracks-val :lambda-list '(m))
(cl:defmethod tracks-val ((m <TrackArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:tracks-val is deprecated.  Use mrs_msgs-msg:tracks instead.")
  (tracks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackArrayStamped>) ostream)
  "Serializes a message object of type '<TrackArrayStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tracks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackArrayStamped>) istream)
  "Deserializes a message object of type '<TrackArrayStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:Track))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackArrayStamped>)))
  "Returns string type for a message object of type '<TrackArrayStamped>"
  "mrs_msgs/TrackArrayStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackArrayStamped)))
  "Returns string type for a message object of type 'TrackArrayStamped"
  "mrs_msgs/TrackArrayStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackArrayStamped>)))
  "Returns md5sum for a message object of type '<TrackArrayStamped>"
  "f0b496542aa3b02d9554e3f84cdfe92e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackArrayStamped)))
  "Returns md5sum for a message object of type 'TrackArrayStamped"
  "f0b496542aa3b02d9554e3f84cdfe92e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackArrayStamped>)))
  "Returns full string definition for message of type '<TrackArrayStamped>"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/Track[] tracks~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Track~%# This message represents an object being tracked in a three-dimensional~%# free space by a multi-target tracking algorithm.~%# Each tracked objects has a unique and persistent track ID,~%# a position, orientation and velocity estimate with uncertainties represented~%# by covariance matrices.~%~%# An ID of this track that is unique and persistent for the tracked object.~%uint64 id~%~%# The rest of this message contains the state estimate of the track,~%# including its position, orientation, and velocity and their respective~%# uncertainty covariance matrices. These are all expressed in a coordinate~%# frame, that is given in the header of the meta-message, containing this message.~%~%# Three-dimensional position of the track.~%geometry_msgs/Point position~%~%# Row-major representation of the 3x3 matrix of position covariance.~%# In order, the parameters are:~%# (x, y, z)~%float64[9] position_covariance~%~%# Three-dimensional orientation of the track.~%geometry_msgs/Quaternion orientation~%~%# Row-major representation of the 3x3 matrix of orientation covariance.~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[9] orientation_covariance~%~%# Velocity of the track in free space.~%geometry_msgs/Vector3 velocity~%~%# Row-major representation of the 3x3 matrix of velocity covariance.~%# In order, the parameters are:~%# (dx/dt, dy/dt, dz/dt)~%float64[9] velocity_covariance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackArrayStamped)))
  "Returns full string definition for message of type 'TrackArrayStamped"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/Track[] tracks~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Track~%# This message represents an object being tracked in a three-dimensional~%# free space by a multi-target tracking algorithm.~%# Each tracked objects has a unique and persistent track ID,~%# a position, orientation and velocity estimate with uncertainties represented~%# by covariance matrices.~%~%# An ID of this track that is unique and persistent for the tracked object.~%uint64 id~%~%# The rest of this message contains the state estimate of the track,~%# including its position, orientation, and velocity and their respective~%# uncertainty covariance matrices. These are all expressed in a coordinate~%# frame, that is given in the header of the meta-message, containing this message.~%~%# Three-dimensional position of the track.~%geometry_msgs/Point position~%~%# Row-major representation of the 3x3 matrix of position covariance.~%# In order, the parameters are:~%# (x, y, z)~%float64[9] position_covariance~%~%# Three-dimensional orientation of the track.~%geometry_msgs/Quaternion orientation~%~%# Row-major representation of the 3x3 matrix of orientation covariance.~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[9] orientation_covariance~%~%# Velocity of the track in free space.~%geometry_msgs/Vector3 velocity~%~%# Row-major representation of the 3x3 matrix of velocity covariance.~%# In order, the parameters are:~%# (dx/dt, dy/dt, dz/dt)~%float64[9] velocity_covariance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackArrayStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackArrayStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackArrayStamped
    (cl:cons ':header (header msg))
    (cl:cons ':tracks (tracks msg))
))
