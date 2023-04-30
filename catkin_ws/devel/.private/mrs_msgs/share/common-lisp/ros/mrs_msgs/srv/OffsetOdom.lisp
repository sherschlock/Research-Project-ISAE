; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude OffsetOdom-request.msg.html

(cl:defclass <OffsetOdom-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (dx
    :reader dx
    :initarg :dx
    :type cl:float
    :initform 0.0)
   (dy
    :reader dy
    :initarg :dy
    :type cl:float
    :initform 0.0))
)

(cl:defclass OffsetOdom-request (<OffsetOdom-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OffsetOdom-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OffsetOdom-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<OffsetOdom-request> is deprecated: use mrs_msgs-srv:OffsetOdom-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <OffsetOdom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:x-val is deprecated.  Use mrs_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <OffsetOdom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:y-val is deprecated.  Use mrs_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'dx-val :lambda-list '(m))
(cl:defmethod dx-val ((m <OffsetOdom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:dx-val is deprecated.  Use mrs_msgs-srv:dx instead.")
  (dx m))

(cl:ensure-generic-function 'dy-val :lambda-list '(m))
(cl:defmethod dy-val ((m <OffsetOdom-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:dy-val is deprecated.  Use mrs_msgs-srv:dy instead.")
  (dy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OffsetOdom-request>) ostream)
  "Serializes a message object of type '<OffsetOdom-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OffsetOdom-request>) istream)
  "Deserializes a message object of type '<OffsetOdom-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OffsetOdom-request>)))
  "Returns string type for a service object of type '<OffsetOdom-request>"
  "mrs_msgs/OffsetOdomRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetOdom-request)))
  "Returns string type for a service object of type 'OffsetOdom-request"
  "mrs_msgs/OffsetOdomRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OffsetOdom-request>)))
  "Returns md5sum for a message object of type '<OffsetOdom-request>"
  "79d132e6a932ab76faf1dd6eac92c729")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OffsetOdom-request)))
  "Returns md5sum for a message object of type 'OffsetOdom-request"
  "79d132e6a932ab76faf1dd6eac92c729")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OffsetOdom-request>)))
  "Returns full string definition for message of type '<OffsetOdom-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 dx~%float32 dy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OffsetOdom-request)))
  "Returns full string definition for message of type 'OffsetOdom-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 dx~%float32 dy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OffsetOdom-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OffsetOdom-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OffsetOdom-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':dx (dx msg))
    (cl:cons ':dy (dy msg))
))
;//! \htmlinclude OffsetOdom-response.msg.html

(cl:defclass <OffsetOdom-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass OffsetOdom-response (<OffsetOdom-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OffsetOdom-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OffsetOdom-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<OffsetOdom-response> is deprecated: use mrs_msgs-srv:OffsetOdom-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <OffsetOdom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <OffsetOdom-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OffsetOdom-response>) ostream)
  "Serializes a message object of type '<OffsetOdom-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OffsetOdom-response>) istream)
  "Deserializes a message object of type '<OffsetOdom-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OffsetOdom-response>)))
  "Returns string type for a service object of type '<OffsetOdom-response>"
  "mrs_msgs/OffsetOdomResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetOdom-response)))
  "Returns string type for a service object of type 'OffsetOdom-response"
  "mrs_msgs/OffsetOdomResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OffsetOdom-response>)))
  "Returns md5sum for a message object of type '<OffsetOdom-response>"
  "79d132e6a932ab76faf1dd6eac92c729")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OffsetOdom-response)))
  "Returns md5sum for a message object of type 'OffsetOdom-response"
  "79d132e6a932ab76faf1dd6eac92c729")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OffsetOdom-response>)))
  "Returns full string definition for message of type '<OffsetOdom-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OffsetOdom-response)))
  "Returns full string definition for message of type 'OffsetOdom-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OffsetOdom-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OffsetOdom-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OffsetOdom-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OffsetOdom)))
  'OffsetOdom-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OffsetOdom)))
  'OffsetOdom-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OffsetOdom)))
  "Returns string type for a service object of type '<OffsetOdom>"
  "mrs_msgs/OffsetOdom")