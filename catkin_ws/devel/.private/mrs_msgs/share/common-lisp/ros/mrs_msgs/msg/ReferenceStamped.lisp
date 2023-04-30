; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ReferenceStamped.msg.html

(cl:defclass <ReferenceStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reference
    :reader reference
    :initarg :reference
    :type mrs_msgs-msg:Reference
    :initform (cl:make-instance 'mrs_msgs-msg:Reference)))
)

(cl:defclass ReferenceStamped (<ReferenceStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ReferenceStamped> is deprecated: use mrs_msgs-msg:ReferenceStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ReferenceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <ReferenceStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:reference-val is deprecated.  Use mrs_msgs-msg:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceStamped>) ostream)
  "Serializes a message object of type '<ReferenceStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceStamped>) istream)
  "Deserializes a message object of type '<ReferenceStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceStamped>)))
  "Returns string type for a message object of type '<ReferenceStamped>"
  "mrs_msgs/ReferenceStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceStamped)))
  "Returns string type for a message object of type 'ReferenceStamped"
  "mrs_msgs/ReferenceStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceStamped>)))
  "Returns md5sum for a message object of type '<ReferenceStamped>"
  "3e37cd4d360107bbe8b9682f8ebc4650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceStamped)))
  "Returns md5sum for a message object of type 'ReferenceStamped"
  "3e37cd4d360107bbe8b9682f8ebc4650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceStamped>)))
  "Returns full string definition for message of type '<ReferenceStamped>"
  (cl:format cl:nil "# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceStamped)))
  "Returns full string definition for message of type 'ReferenceStamped"
  (cl:format cl:nil "# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceStamped
    (cl:cons ':header (header msg))
    (cl:cons ':reference (reference msg))
))
