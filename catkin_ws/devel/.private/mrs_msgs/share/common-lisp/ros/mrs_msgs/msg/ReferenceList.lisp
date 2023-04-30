; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ReferenceList.msg.html

(cl:defclass <ReferenceList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (list
    :reader list
    :initarg :list
    :type (cl:vector mrs_msgs-msg:Reference)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:Reference :initial-element (cl:make-instance 'mrs_msgs-msg:Reference))))
)

(cl:defclass ReferenceList (<ReferenceList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ReferenceList> is deprecated: use mrs_msgs-msg:ReferenceList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ReferenceList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <ReferenceList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:list-val is deprecated.  Use mrs_msgs-msg:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceList>) ostream)
  "Serializes a message object of type '<ReferenceList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceList>) istream)
  "Deserializes a message object of type '<ReferenceList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:Reference))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceList>)))
  "Returns string type for a message object of type '<ReferenceList>"
  "mrs_msgs/ReferenceList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceList)))
  "Returns string type for a message object of type 'ReferenceList"
  "mrs_msgs/ReferenceList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceList>)))
  "Returns md5sum for a message object of type '<ReferenceList>"
  "a8f56fe295bd235943e2b79bf855de91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceList)))
  "Returns md5sum for a message object of type 'ReferenceList"
  "a8f56fe295bd235943e2b79bf855de91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceList>)))
  "Returns full string definition for message of type '<ReferenceList>"
  (cl:format cl:nil "# A list of references.~%~%std_msgs/Header header~%mrs_msgs/Reference[] list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceList)))
  "Returns full string definition for message of type 'ReferenceList"
  (cl:format cl:nil "# A list of references.~%~%std_msgs/Header header~%mrs_msgs/Reference[] list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceList>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceList
    (cl:cons ':header (header msg))
    (cl:cons ':list (list msg))
))
