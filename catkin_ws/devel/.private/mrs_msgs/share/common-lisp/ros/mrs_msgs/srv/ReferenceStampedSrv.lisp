; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ReferenceStampedSrv-request.msg.html

(cl:defclass <ReferenceStampedSrv-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ReferenceStampedSrv-request (<ReferenceStampedSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceStampedSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceStampedSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ReferenceStampedSrv-request> is deprecated: use mrs_msgs-srv:ReferenceStampedSrv-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ReferenceStampedSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:header-val is deprecated.  Use mrs_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <ReferenceStampedSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:reference-val is deprecated.  Use mrs_msgs-srv:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceStampedSrv-request>) ostream)
  "Serializes a message object of type '<ReferenceStampedSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceStampedSrv-request>) istream)
  "Deserializes a message object of type '<ReferenceStampedSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceStampedSrv-request>)))
  "Returns string type for a service object of type '<ReferenceStampedSrv-request>"
  "mrs_msgs/ReferenceStampedSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceStampedSrv-request)))
  "Returns string type for a service object of type 'ReferenceStampedSrv-request"
  "mrs_msgs/ReferenceStampedSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceStampedSrv-request>)))
  "Returns md5sum for a message object of type '<ReferenceStampedSrv-request>"
  "28cdbf41a017795fe55f4fe1bc97170e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceStampedSrv-request)))
  "Returns md5sum for a message object of type 'ReferenceStampedSrv-request"
  "28cdbf41a017795fe55f4fe1bc97170e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceStampedSrv-request>)))
  "Returns full string definition for message of type '<ReferenceStampedSrv-request>"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceStampedSrv-request)))
  "Returns full string definition for message of type 'ReferenceStampedSrv-request"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceStampedSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceStampedSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceStampedSrv-request
    (cl:cons ':header (header msg))
    (cl:cons ':reference (reference msg))
))
;//! \htmlinclude ReferenceStampedSrv-response.msg.html

(cl:defclass <ReferenceStampedSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ReferenceStampedSrv-response (<ReferenceStampedSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceStampedSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceStampedSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ReferenceStampedSrv-response> is deprecated: use mrs_msgs-srv:ReferenceStampedSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReferenceStampedSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ReferenceStampedSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceStampedSrv-response>) ostream)
  "Serializes a message object of type '<ReferenceStampedSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceStampedSrv-response>) istream)
  "Deserializes a message object of type '<ReferenceStampedSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceStampedSrv-response>)))
  "Returns string type for a service object of type '<ReferenceStampedSrv-response>"
  "mrs_msgs/ReferenceStampedSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceStampedSrv-response)))
  "Returns string type for a service object of type 'ReferenceStampedSrv-response"
  "mrs_msgs/ReferenceStampedSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceStampedSrv-response>)))
  "Returns md5sum for a message object of type '<ReferenceStampedSrv-response>"
  "28cdbf41a017795fe55f4fe1bc97170e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceStampedSrv-response)))
  "Returns md5sum for a message object of type 'ReferenceStampedSrv-response"
  "28cdbf41a017795fe55f4fe1bc97170e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceStampedSrv-response>)))
  "Returns full string definition for message of type '<ReferenceStampedSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceStampedSrv-response)))
  "Returns full string definition for message of type 'ReferenceStampedSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceStampedSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceStampedSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceStampedSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReferenceStampedSrv)))
  'ReferenceStampedSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReferenceStampedSrv)))
  'ReferenceStampedSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceStampedSrv)))
  "Returns string type for a service object of type '<ReferenceStampedSrv>"
  "mrs_msgs/ReferenceStampedSrv")