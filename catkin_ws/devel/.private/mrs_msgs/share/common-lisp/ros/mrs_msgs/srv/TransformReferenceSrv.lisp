; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude TransformReferenceSrv-request.msg.html

(cl:defclass <TransformReferenceSrv-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (reference
    :reader reference
    :initarg :reference
    :type mrs_msgs-msg:ReferenceStamped
    :initform (cl:make-instance 'mrs_msgs-msg:ReferenceStamped)))
)

(cl:defclass TransformReferenceSrv-request (<TransformReferenceSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformReferenceSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformReferenceSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TransformReferenceSrv-request> is deprecated: use mrs_msgs-srv:TransformReferenceSrv-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <TransformReferenceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:frame_id-val is deprecated.  Use mrs_msgs-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <TransformReferenceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:reference-val is deprecated.  Use mrs_msgs-srv:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformReferenceSrv-request>) ostream)
  "Serializes a message object of type '<TransformReferenceSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformReferenceSrv-request>) istream)
  "Deserializes a message object of type '<TransformReferenceSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformReferenceSrv-request>)))
  "Returns string type for a service object of type '<TransformReferenceSrv-request>"
  "mrs_msgs/TransformReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformReferenceSrv-request)))
  "Returns string type for a service object of type 'TransformReferenceSrv-request"
  "mrs_msgs/TransformReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformReferenceSrv-request>)))
  "Returns md5sum for a message object of type '<TransformReferenceSrv-request>"
  "5e0803e0e8a703e9f79a6e9c93ef94c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformReferenceSrv-request)))
  "Returns md5sum for a message object of type 'TransformReferenceSrv-request"
  "5e0803e0e8a703e9f79a6e9c93ef94c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformReferenceSrv-request>)))
  "Returns full string definition for message of type '<TransformReferenceSrv-request>"
  (cl:format cl:nil "string frame_id~%mrs_msgs/ReferenceStamped reference~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformReferenceSrv-request)))
  "Returns full string definition for message of type 'TransformReferenceSrv-request"
  (cl:format cl:nil "string frame_id~%mrs_msgs/ReferenceStamped reference~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformReferenceSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformReferenceSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformReferenceSrv-request
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':reference (reference msg))
))
;//! \htmlinclude TransformReferenceSrv-response.msg.html

(cl:defclass <TransformReferenceSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (reference
    :reader reference
    :initarg :reference
    :type mrs_msgs-msg:ReferenceStamped
    :initform (cl:make-instance 'mrs_msgs-msg:ReferenceStamped)))
)

(cl:defclass TransformReferenceSrv-response (<TransformReferenceSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformReferenceSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformReferenceSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TransformReferenceSrv-response> is deprecated: use mrs_msgs-srv:TransformReferenceSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TransformReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TransformReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <TransformReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:reference-val is deprecated.  Use mrs_msgs-srv:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformReferenceSrv-response>) ostream)
  "Serializes a message object of type '<TransformReferenceSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformReferenceSrv-response>) istream)
  "Deserializes a message object of type '<TransformReferenceSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformReferenceSrv-response>)))
  "Returns string type for a service object of type '<TransformReferenceSrv-response>"
  "mrs_msgs/TransformReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformReferenceSrv-response)))
  "Returns string type for a service object of type 'TransformReferenceSrv-response"
  "mrs_msgs/TransformReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformReferenceSrv-response>)))
  "Returns md5sum for a message object of type '<TransformReferenceSrv-response>"
  "5e0803e0e8a703e9f79a6e9c93ef94c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformReferenceSrv-response)))
  "Returns md5sum for a message object of type 'TransformReferenceSrv-response"
  "5e0803e0e8a703e9f79a6e9c93ef94c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformReferenceSrv-response>)))
  "Returns full string definition for message of type '<TransformReferenceSrv-response>"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/ReferenceStamped reference~%~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformReferenceSrv-response)))
  "Returns full string definition for message of type 'TransformReferenceSrv-response"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/ReferenceStamped reference~%~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformReferenceSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformReferenceSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformReferenceSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':reference (reference msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TransformReferenceSrv)))
  'TransformReferenceSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TransformReferenceSrv)))
  'TransformReferenceSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformReferenceSrv)))
  "Returns string type for a service object of type '<TransformReferenceSrv>"
  "mrs_msgs/TransformReferenceSrv")