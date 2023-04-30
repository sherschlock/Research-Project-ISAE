; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude VelocityReferenceStamped.msg.html

(cl:defclass <VelocityReferenceStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reference
    :reader reference
    :initarg :reference
    :type mrs_msgs-msg:VelocityReference
    :initform (cl:make-instance 'mrs_msgs-msg:VelocityReference)))
)

(cl:defclass VelocityReferenceStamped (<VelocityReferenceStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityReferenceStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityReferenceStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<VelocityReferenceStamped> is deprecated: use mrs_msgs-msg:VelocityReferenceStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VelocityReferenceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <VelocityReferenceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:reference-val is deprecated.  Use mrs_msgs-msg:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityReferenceStamped>) ostream)
  "Serializes a message object of type '<VelocityReferenceStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityReferenceStamped>) istream)
  "Deserializes a message object of type '<VelocityReferenceStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityReferenceStamped>)))
  "Returns string type for a message object of type '<VelocityReferenceStamped>"
  "mrs_msgs/VelocityReferenceStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReferenceStamped)))
  "Returns string type for a message object of type 'VelocityReferenceStamped"
  "mrs_msgs/VelocityReferenceStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityReferenceStamped>)))
  "Returns md5sum for a message object of type '<VelocityReferenceStamped>"
  "9dc32c82b2b9ffd6f16c8bf17c42baad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityReferenceStamped)))
  "Returns md5sum for a message object of type 'VelocityReferenceStamped"
  "9dc32c82b2b9ffd6f16c8bf17c42baad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityReferenceStamped>)))
  "Returns full string definition for message of type '<VelocityReferenceStamped>"
  (cl:format cl:nil "# contains the frame_id = your reference frame of choice~%std_msgs/Header header~%~%mrs_msgs/VelocityReference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/VelocityReference~%# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityReferenceStamped)))
  "Returns full string definition for message of type 'VelocityReferenceStamped"
  (cl:format cl:nil "# contains the frame_id = your reference frame of choice~%std_msgs/Header header~%~%mrs_msgs/VelocityReference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/VelocityReference~%# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityReferenceStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityReferenceStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityReferenceStamped
    (cl:cons ':header (header msg))
    (cl:cons ':reference (reference msg))
))
