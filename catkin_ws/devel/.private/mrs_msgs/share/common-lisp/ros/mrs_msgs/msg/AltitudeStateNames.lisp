; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude AltitudeStateNames.msg.html

(cl:defclass <AltitudeStateNames> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass AltitudeStateNames (<AltitudeStateNames>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AltitudeStateNames>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AltitudeStateNames)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<AltitudeStateNames> is deprecated: use mrs_msgs-msg:AltitudeStateNames instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AltitudeStateNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AltitudeStateNames>)))
    "Constants for message type '<AltitudeStateNames>"
  '((:HEIGHT . 0)
    (:VELOCITY . 1)
    (:ACCELERATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AltitudeStateNames)))
    "Constants for message type 'AltitudeStateNames"
  '((:HEIGHT . 0)
    (:VELOCITY . 1)
    (:ACCELERATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AltitudeStateNames>) ostream)
  "Serializes a message object of type '<AltitudeStateNames>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AltitudeStateNames>) istream)
  "Deserializes a message object of type '<AltitudeStateNames>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AltitudeStateNames>)))
  "Returns string type for a message object of type '<AltitudeStateNames>"
  "mrs_msgs/AltitudeStateNames")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AltitudeStateNames)))
  "Returns string type for a message object of type 'AltitudeStateNames"
  "mrs_msgs/AltitudeStateNames")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AltitudeStateNames>)))
  "Returns md5sum for a message object of type '<AltitudeStateNames>"
  "ccfe487c423d896ac53e72022b621e4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AltitudeStateNames)))
  "Returns md5sum for a message object of type 'AltitudeStateNames"
  "ccfe487c423d896ac53e72022b621e4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AltitudeStateNames>)))
  "Returns full string definition for message of type '<AltitudeStateNames>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 HEIGHT = 0~%uint8 VELOCITY = 1~%uint8 ACCELERATION = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AltitudeStateNames)))
  "Returns full string definition for message of type 'AltitudeStateNames"
  (cl:format cl:nil "std_msgs/Header header~%uint8 HEIGHT = 0~%uint8 VELOCITY = 1~%uint8 ACCELERATION = 2~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AltitudeStateNames>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AltitudeStateNames>))
  "Converts a ROS message object to a list"
  (cl:list 'AltitudeStateNames
    (cl:cons ':header (header msg))
))
