; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude BigDofecSalvo-request.msg.html

(cl:defclass <BigDofecSalvo-request> (roslisp-msg-protocol:ros-message)
  ((launch_delay_secs
    :reader launch_delay_secs
    :initarg :launch_delay_secs
    :type cl:float
    :initform 0.0)
   (msecs_open
    :reader msecs_open
    :initarg :msecs_open
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BigDofecSalvo-request (<BigDofecSalvo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecSalvo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecSalvo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecSalvo-request> is deprecated: use mrs_msgs-srv:BigDofecSalvo-request instead.")))

(cl:ensure-generic-function 'launch_delay_secs-val :lambda-list '(m))
(cl:defmethod launch_delay_secs-val ((m <BigDofecSalvo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:launch_delay_secs-val is deprecated.  Use mrs_msgs-srv:launch_delay_secs instead.")
  (launch_delay_secs m))

(cl:ensure-generic-function 'msecs_open-val :lambda-list '(m))
(cl:defmethod msecs_open-val ((m <BigDofecSalvo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:msecs_open-val is deprecated.  Use mrs_msgs-srv:msecs_open instead.")
  (msecs_open m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecSalvo-request>) ostream)
  "Serializes a message object of type '<BigDofecSalvo-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'launch_delay_secs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msecs_open)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msecs_open)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecSalvo-request>) istream)
  "Deserializes a message object of type '<BigDofecSalvo-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'launch_delay_secs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msecs_open)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msecs_open)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecSalvo-request>)))
  "Returns string type for a service object of type '<BigDofecSalvo-request>"
  "mrs_msgs/BigDofecSalvoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSalvo-request)))
  "Returns string type for a service object of type 'BigDofecSalvo-request"
  "mrs_msgs/BigDofecSalvoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecSalvo-request>)))
  "Returns md5sum for a message object of type '<BigDofecSalvo-request>"
  "6c76d9434acd11a1bca9dd92dec5f206")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecSalvo-request)))
  "Returns md5sum for a message object of type 'BigDofecSalvo-request"
  "6c76d9434acd11a1bca9dd92dec5f206")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecSalvo-request>)))
  "Returns full string definition for message of type '<BigDofecSalvo-request>"
  (cl:format cl:nil "float64 launch_delay_secs~%uint16 msecs_open~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecSalvo-request)))
  "Returns full string definition for message of type 'BigDofecSalvo-request"
  (cl:format cl:nil "float64 launch_delay_secs~%uint16 msecs_open~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecSalvo-request>))
  (cl:+ 0
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecSalvo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecSalvo-request
    (cl:cons ':launch_delay_secs (launch_delay_secs msg))
    (cl:cons ':msecs_open (msecs_open msg))
))
;//! \htmlinclude BigDofecSalvo-response.msg.html

(cl:defclass <BigDofecSalvo-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass BigDofecSalvo-response (<BigDofecSalvo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecSalvo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecSalvo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecSalvo-response> is deprecated: use mrs_msgs-srv:BigDofecSalvo-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BigDofecSalvo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BigDofecSalvo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecSalvo-response>) ostream)
  "Serializes a message object of type '<BigDofecSalvo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecSalvo-response>) istream)
  "Deserializes a message object of type '<BigDofecSalvo-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecSalvo-response>)))
  "Returns string type for a service object of type '<BigDofecSalvo-response>"
  "mrs_msgs/BigDofecSalvoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSalvo-response)))
  "Returns string type for a service object of type 'BigDofecSalvo-response"
  "mrs_msgs/BigDofecSalvoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecSalvo-response>)))
  "Returns md5sum for a message object of type '<BigDofecSalvo-response>"
  "6c76d9434acd11a1bca9dd92dec5f206")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecSalvo-response)))
  "Returns md5sum for a message object of type 'BigDofecSalvo-response"
  "6c76d9434acd11a1bca9dd92dec5f206")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecSalvo-response>)))
  "Returns full string definition for message of type '<BigDofecSalvo-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecSalvo-response)))
  "Returns full string definition for message of type 'BigDofecSalvo-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecSalvo-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecSalvo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecSalvo-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BigDofecSalvo)))
  'BigDofecSalvo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BigDofecSalvo)))
  'BigDofecSalvo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSalvo)))
  "Returns string type for a service object of type '<BigDofecSalvo>"
  "mrs_msgs/BigDofecSalvo")