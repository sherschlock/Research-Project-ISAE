; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude Float64StampedSrv-request.msg.html

(cl:defclass <Float64StampedSrv-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float64StampedSrv-request (<Float64StampedSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64StampedSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64StampedSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<Float64StampedSrv-request> is deprecated: use mrs_msgs-srv:Float64StampedSrv-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Float64StampedSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:header-val is deprecated.  Use mrs_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Float64StampedSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:value-val is deprecated.  Use mrs_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64StampedSrv-request>) ostream)
  "Serializes a message object of type '<Float64StampedSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64StampedSrv-request>) istream)
  "Deserializes a message object of type '<Float64StampedSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64StampedSrv-request>)))
  "Returns string type for a service object of type '<Float64StampedSrv-request>"
  "mrs_msgs/Float64StampedSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64StampedSrv-request)))
  "Returns string type for a service object of type 'Float64StampedSrv-request"
  "mrs_msgs/Float64StampedSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64StampedSrv-request>)))
  "Returns md5sum for a message object of type '<Float64StampedSrv-request>"
  "b70212202386f89868e028f471ec5a6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64StampedSrv-request)))
  "Returns md5sum for a message object of type 'Float64StampedSrv-request"
  "b70212202386f89868e028f471ec5a6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64StampedSrv-request>)))
  "Returns full string definition for message of type '<Float64StampedSrv-request>"
  (cl:format cl:nil "std_msgs/Header header~%float64 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64StampedSrv-request)))
  "Returns full string definition for message of type 'Float64StampedSrv-request"
  (cl:format cl:nil "std_msgs/Header header~%float64 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64StampedSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64StampedSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64StampedSrv-request
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude Float64StampedSrv-response.msg.html

(cl:defclass <Float64StampedSrv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Float64StampedSrv-response (<Float64StampedSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64StampedSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64StampedSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<Float64StampedSrv-response> is deprecated: use mrs_msgs-srv:Float64StampedSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Float64StampedSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Float64StampedSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64StampedSrv-response>) ostream)
  "Serializes a message object of type '<Float64StampedSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64StampedSrv-response>) istream)
  "Deserializes a message object of type '<Float64StampedSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64StampedSrv-response>)))
  "Returns string type for a service object of type '<Float64StampedSrv-response>"
  "mrs_msgs/Float64StampedSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64StampedSrv-response)))
  "Returns string type for a service object of type 'Float64StampedSrv-response"
  "mrs_msgs/Float64StampedSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64StampedSrv-response>)))
  "Returns md5sum for a message object of type '<Float64StampedSrv-response>"
  "b70212202386f89868e028f471ec5a6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64StampedSrv-response)))
  "Returns md5sum for a message object of type 'Float64StampedSrv-response"
  "b70212202386f89868e028f471ec5a6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64StampedSrv-response>)))
  "Returns full string definition for message of type '<Float64StampedSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64StampedSrv-response)))
  "Returns full string definition for message of type 'Float64StampedSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64StampedSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64StampedSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64StampedSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Float64StampedSrv)))
  'Float64StampedSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Float64StampedSrv)))
  'Float64StampedSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64StampedSrv)))
  "Returns string type for a service object of type '<Float64StampedSrv>"
  "mrs_msgs/Float64StampedSrv")