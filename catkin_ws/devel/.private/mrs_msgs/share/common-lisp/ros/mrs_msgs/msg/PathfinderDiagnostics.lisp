; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude PathfinderDiagnostics.msg.html

(cl:defclass <PathfinderDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (idle
    :reader idle
    :initarg :idle
    :type cl:boolean
    :initform cl:nil)
   (desired_reference
    :reader desired_reference
    :initarg :desired_reference
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (best_goal
    :reader best_goal
    :initarg :best_goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass PathfinderDiagnostics (<PathfinderDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathfinderDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathfinderDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<PathfinderDiagnostics> is deprecated: use mrs_msgs-msg:PathfinderDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathfinderDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'idle-val :lambda-list '(m))
(cl:defmethod idle-val ((m <PathfinderDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:idle-val is deprecated.  Use mrs_msgs-msg:idle instead.")
  (idle m))

(cl:ensure-generic-function 'desired_reference-val :lambda-list '(m))
(cl:defmethod desired_reference-val ((m <PathfinderDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:desired_reference-val is deprecated.  Use mrs_msgs-msg:desired_reference instead.")
  (desired_reference m))

(cl:ensure-generic-function 'best_goal-val :lambda-list '(m))
(cl:defmethod best_goal-val ((m <PathfinderDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:best_goal-val is deprecated.  Use mrs_msgs-msg:best_goal instead.")
  (best_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathfinderDiagnostics>) ostream)
  "Serializes a message object of type '<PathfinderDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'idle) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_reference) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'best_goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathfinderDiagnostics>) istream)
  "Deserializes a message object of type '<PathfinderDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'idle) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_reference) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'best_goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathfinderDiagnostics>)))
  "Returns string type for a message object of type '<PathfinderDiagnostics>"
  "mrs_msgs/PathfinderDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathfinderDiagnostics)))
  "Returns string type for a message object of type 'PathfinderDiagnostics"
  "mrs_msgs/PathfinderDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathfinderDiagnostics>)))
  "Returns md5sum for a message object of type '<PathfinderDiagnostics>"
  "8d93eea4b3519478cd470e5b07e11263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathfinderDiagnostics)))
  "Returns md5sum for a message object of type 'PathfinderDiagnostics"
  "8d93eea4b3519478cd470e5b07e11263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathfinderDiagnostics>)))
  "Returns full string definition for message of type '<PathfinderDiagnostics>"
  (cl:format cl:nil "Header header~%~%bool idle~%geometry_msgs/Point desired_reference~%geometry_msgs/Point best_goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathfinderDiagnostics)))
  "Returns full string definition for message of type 'PathfinderDiagnostics"
  (cl:format cl:nil "Header header~%~%bool idle~%geometry_msgs/Point desired_reference~%geometry_msgs/Point best_goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathfinderDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_reference))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'best_goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathfinderDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'PathfinderDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':idle (idle msg))
    (cl:cons ':desired_reference (desired_reference msg))
    (cl:cons ':best_goal (best_goal msg))
))
