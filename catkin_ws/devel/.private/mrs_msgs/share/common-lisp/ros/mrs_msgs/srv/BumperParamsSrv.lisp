; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude BumperParamsSrv-request.msg.html

(cl:defclass <BumperParamsSrv-request> (roslisp-msg-protocol:ros-message)
  ((horizontal_limit
    :reader horizontal_limit
    :initarg :horizontal_limit
    :type cl:float
    :initform 0.0)
   (vertical_limit
    :reader vertical_limit
    :initarg :vertical_limit
    :type cl:float
    :initform 0.0)
   (repulsion_horizontal_limit
    :reader repulsion_horizontal_limit
    :initarg :repulsion_horizontal_limit
    :type cl:float
    :initform 0.0)
   (repulsion_vertical_limit
    :reader repulsion_vertical_limit
    :initarg :repulsion_vertical_limit
    :type cl:float
    :initform 0.0)
   (repulsion_horizontal_offset
    :reader repulsion_horizontal_offset
    :initarg :repulsion_horizontal_offset
    :type cl:float
    :initform 0.0)
   (repulsion_vertical_offset
    :reader repulsion_vertical_offset
    :initarg :repulsion_vertical_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass BumperParamsSrv-request (<BumperParamsSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperParamsSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperParamsSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BumperParamsSrv-request> is deprecated: use mrs_msgs-srv:BumperParamsSrv-request instead.")))

(cl:ensure-generic-function 'horizontal_limit-val :lambda-list '(m))
(cl:defmethod horizontal_limit-val ((m <BumperParamsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:horizontal_limit-val is deprecated.  Use mrs_msgs-srv:horizontal_limit instead.")
  (horizontal_limit m))

(cl:ensure-generic-function 'vertical_limit-val :lambda-list '(m))
(cl:defmethod vertical_limit-val ((m <BumperParamsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:vertical_limit-val is deprecated.  Use mrs_msgs-srv:vertical_limit instead.")
  (vertical_limit m))

(cl:ensure-generic-function 'repulsion_horizontal_limit-val :lambda-list '(m))
(cl:defmethod repulsion_horizontal_limit-val ((m <BumperParamsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:repulsion_horizontal_limit-val is deprecated.  Use mrs_msgs-srv:repulsion_horizontal_limit instead.")
  (repulsion_horizontal_limit m))

(cl:ensure-generic-function 'repulsion_vertical_limit-val :lambda-list '(m))
(cl:defmethod repulsion_vertical_limit-val ((m <BumperParamsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:repulsion_vertical_limit-val is deprecated.  Use mrs_msgs-srv:repulsion_vertical_limit instead.")
  (repulsion_vertical_limit m))

(cl:ensure-generic-function 'repulsion_horizontal_offset-val :lambda-list '(m))
(cl:defmethod repulsion_horizontal_offset-val ((m <BumperParamsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:repulsion_horizontal_offset-val is deprecated.  Use mrs_msgs-srv:repulsion_horizontal_offset instead.")
  (repulsion_horizontal_offset m))

(cl:ensure-generic-function 'repulsion_vertical_offset-val :lambda-list '(m))
(cl:defmethod repulsion_vertical_offset-val ((m <BumperParamsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:repulsion_vertical_offset-val is deprecated.  Use mrs_msgs-srv:repulsion_vertical_offset instead.")
  (repulsion_vertical_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperParamsSrv-request>) ostream)
  "Serializes a message object of type '<BumperParamsSrv-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vertical_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'repulsion_horizontal_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'repulsion_vertical_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'repulsion_horizontal_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'repulsion_vertical_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperParamsSrv-request>) istream)
  "Deserializes a message object of type '<BumperParamsSrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'repulsion_horizontal_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'repulsion_vertical_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'repulsion_horizontal_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'repulsion_vertical_offset) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperParamsSrv-request>)))
  "Returns string type for a service object of type '<BumperParamsSrv-request>"
  "mrs_msgs/BumperParamsSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperParamsSrv-request)))
  "Returns string type for a service object of type 'BumperParamsSrv-request"
  "mrs_msgs/BumperParamsSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperParamsSrv-request>)))
  "Returns md5sum for a message object of type '<BumperParamsSrv-request>"
  "2b4f2150f024cdd7b51d145eb3b4559b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperParamsSrv-request)))
  "Returns md5sum for a message object of type 'BumperParamsSrv-request"
  "2b4f2150f024cdd7b51d145eb3b4559b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperParamsSrv-request>)))
  "Returns full string definition for message of type '<BumperParamsSrv-request>"
  (cl:format cl:nil "float64 horizontal_limit~%float64 vertical_limit~%~%float64 repulsion_horizontal_limit~%float64 repulsion_vertical_limit~%~%float64 repulsion_horizontal_offset~%float64 repulsion_vertical_offset~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperParamsSrv-request)))
  "Returns full string definition for message of type 'BumperParamsSrv-request"
  (cl:format cl:nil "float64 horizontal_limit~%float64 vertical_limit~%~%float64 repulsion_horizontal_limit~%float64 repulsion_vertical_limit~%~%float64 repulsion_horizontal_offset~%float64 repulsion_vertical_offset~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperParamsSrv-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperParamsSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperParamsSrv-request
    (cl:cons ':horizontal_limit (horizontal_limit msg))
    (cl:cons ':vertical_limit (vertical_limit msg))
    (cl:cons ':repulsion_horizontal_limit (repulsion_horizontal_limit msg))
    (cl:cons ':repulsion_vertical_limit (repulsion_vertical_limit msg))
    (cl:cons ':repulsion_horizontal_offset (repulsion_horizontal_offset msg))
    (cl:cons ':repulsion_vertical_offset (repulsion_vertical_offset msg))
))
;//! \htmlinclude BumperParamsSrv-response.msg.html

(cl:defclass <BumperParamsSrv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass BumperParamsSrv-response (<BumperParamsSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperParamsSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperParamsSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BumperParamsSrv-response> is deprecated: use mrs_msgs-srv:BumperParamsSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BumperParamsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BumperParamsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperParamsSrv-response>) ostream)
  "Serializes a message object of type '<BumperParamsSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperParamsSrv-response>) istream)
  "Deserializes a message object of type '<BumperParamsSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperParamsSrv-response>)))
  "Returns string type for a service object of type '<BumperParamsSrv-response>"
  "mrs_msgs/BumperParamsSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperParamsSrv-response)))
  "Returns string type for a service object of type 'BumperParamsSrv-response"
  "mrs_msgs/BumperParamsSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperParamsSrv-response>)))
  "Returns md5sum for a message object of type '<BumperParamsSrv-response>"
  "2b4f2150f024cdd7b51d145eb3b4559b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperParamsSrv-response)))
  "Returns md5sum for a message object of type 'BumperParamsSrv-response"
  "2b4f2150f024cdd7b51d145eb3b4559b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperParamsSrv-response>)))
  "Returns full string definition for message of type '<BumperParamsSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperParamsSrv-response)))
  "Returns full string definition for message of type 'BumperParamsSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperParamsSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperParamsSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperParamsSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BumperParamsSrv)))
  'BumperParamsSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BumperParamsSrv)))
  'BumperParamsSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperParamsSrv)))
  "Returns string type for a service object of type '<BumperParamsSrv>"
  "mrs_msgs/BumperParamsSrv")