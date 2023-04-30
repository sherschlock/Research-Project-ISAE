; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude Float64Srv-request.msg.html

(cl:defclass <Float64Srv-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float64Srv-request (<Float64Srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64Srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64Srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<Float64Srv-request> is deprecated: use mrs_msgs-srv:Float64Srv-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Float64Srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:value-val is deprecated.  Use mrs_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64Srv-request>) ostream)
  "Serializes a message object of type '<Float64Srv-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64Srv-request>) istream)
  "Deserializes a message object of type '<Float64Srv-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64Srv-request>)))
  "Returns string type for a service object of type '<Float64Srv-request>"
  "mrs_msgs/Float64SrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64Srv-request)))
  "Returns string type for a service object of type 'Float64Srv-request"
  "mrs_msgs/Float64SrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64Srv-request>)))
  "Returns md5sum for a message object of type '<Float64Srv-request>"
  "5d5778235c8477c5669230b433701e6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64Srv-request)))
  "Returns md5sum for a message object of type 'Float64Srv-request"
  "5d5778235c8477c5669230b433701e6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64Srv-request>)))
  "Returns full string definition for message of type '<Float64Srv-request>"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64Srv-request)))
  "Returns full string definition for message of type 'Float64Srv-request"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64Srv-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64Srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64Srv-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude Float64Srv-response.msg.html

(cl:defclass <Float64Srv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Float64Srv-response (<Float64Srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64Srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64Srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<Float64Srv-response> is deprecated: use mrs_msgs-srv:Float64Srv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Float64Srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Float64Srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64Srv-response>) ostream)
  "Serializes a message object of type '<Float64Srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64Srv-response>) istream)
  "Deserializes a message object of type '<Float64Srv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64Srv-response>)))
  "Returns string type for a service object of type '<Float64Srv-response>"
  "mrs_msgs/Float64SrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64Srv-response)))
  "Returns string type for a service object of type 'Float64Srv-response"
  "mrs_msgs/Float64SrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64Srv-response>)))
  "Returns md5sum for a message object of type '<Float64Srv-response>"
  "5d5778235c8477c5669230b433701e6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64Srv-response)))
  "Returns md5sum for a message object of type 'Float64Srv-response"
  "5d5778235c8477c5669230b433701e6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64Srv-response>)))
  "Returns full string definition for message of type '<Float64Srv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64Srv-response)))
  "Returns full string definition for message of type 'Float64Srv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64Srv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64Srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64Srv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Float64Srv)))
  'Float64Srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Float64Srv)))
  'Float64Srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64Srv)))
  "Returns string type for a service object of type '<Float64Srv>"
  "mrs_msgs/Float64Srv")