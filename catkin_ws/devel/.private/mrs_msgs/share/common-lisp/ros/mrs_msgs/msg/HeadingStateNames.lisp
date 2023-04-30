; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude HeadingStateNames.msg.html

(cl:defclass <HeadingStateNames> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass HeadingStateNames (<HeadingStateNames>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadingStateNames>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadingStateNames)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<HeadingStateNames> is deprecated: use mrs_msgs-msg:HeadingStateNames instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeadingStateNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeadingStateNames>)))
    "Constants for message type '<HeadingStateNames>"
  '((:YAW . 0)
    (:YAW_RATE . 1)
    (:GYRO_BIAS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeadingStateNames)))
    "Constants for message type 'HeadingStateNames"
  '((:YAW . 0)
    (:YAW_RATE . 1)
    (:GYRO_BIAS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadingStateNames>) ostream)
  "Serializes a message object of type '<HeadingStateNames>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadingStateNames>) istream)
  "Deserializes a message object of type '<HeadingStateNames>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadingStateNames>)))
  "Returns string type for a message object of type '<HeadingStateNames>"
  "mrs_msgs/HeadingStateNames")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadingStateNames)))
  "Returns string type for a message object of type 'HeadingStateNames"
  "mrs_msgs/HeadingStateNames")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadingStateNames>)))
  "Returns md5sum for a message object of type '<HeadingStateNames>"
  "400ad705a51f1e6dfe6e06e2135895cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadingStateNames)))
  "Returns md5sum for a message object of type 'HeadingStateNames"
  "400ad705a51f1e6dfe6e06e2135895cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadingStateNames>)))
  "Returns full string definition for message of type '<HeadingStateNames>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 YAW = 0~%uint8 YAW_RATE = 1~%uint8 GYRO_BIAS = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadingStateNames)))
  "Returns full string definition for message of type 'HeadingStateNames"
  (cl:format cl:nil "std_msgs/Header header~%uint8 YAW = 0~%uint8 YAW_RATE = 1~%uint8 GYRO_BIAS = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadingStateNames>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadingStateNames>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadingStateNames
    (cl:cons ':header (header msg))
))
