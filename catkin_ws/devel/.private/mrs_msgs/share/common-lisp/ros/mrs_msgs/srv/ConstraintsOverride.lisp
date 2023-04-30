; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ConstraintsOverride-request.msg.html

(cl:defclass <ConstraintsOverride-request> (roslisp-msg-protocol:ros-message)
  ((acceleration_horizontal
    :reader acceleration_horizontal
    :initarg :acceleration_horizontal
    :type cl:float
    :initform 0.0)
   (acceleration_vertical
    :reader acceleration_vertical
    :initarg :acceleration_vertical
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConstraintsOverride-request (<ConstraintsOverride-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConstraintsOverride-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConstraintsOverride-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ConstraintsOverride-request> is deprecated: use mrs_msgs-srv:ConstraintsOverride-request instead.")))

(cl:ensure-generic-function 'acceleration_horizontal-val :lambda-list '(m))
(cl:defmethod acceleration_horizontal-val ((m <ConstraintsOverride-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:acceleration_horizontal-val is deprecated.  Use mrs_msgs-srv:acceleration_horizontal instead.")
  (acceleration_horizontal m))

(cl:ensure-generic-function 'acceleration_vertical-val :lambda-list '(m))
(cl:defmethod acceleration_vertical-val ((m <ConstraintsOverride-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:acceleration_vertical-val is deprecated.  Use mrs_msgs-srv:acceleration_vertical instead.")
  (acceleration_vertical m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConstraintsOverride-request>) ostream)
  "Serializes a message object of type '<ConstraintsOverride-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration_horizontal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration_vertical))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConstraintsOverride-request>) istream)
  "Deserializes a message object of type '<ConstraintsOverride-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration_horizontal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration_vertical) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConstraintsOverride-request>)))
  "Returns string type for a service object of type '<ConstraintsOverride-request>"
  "mrs_msgs/ConstraintsOverrideRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstraintsOverride-request)))
  "Returns string type for a service object of type 'ConstraintsOverride-request"
  "mrs_msgs/ConstraintsOverrideRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConstraintsOverride-request>)))
  "Returns md5sum for a message object of type '<ConstraintsOverride-request>"
  "56bf1beffb328c1889ee5151b25df6dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConstraintsOverride-request)))
  "Returns md5sum for a message object of type 'ConstraintsOverride-request"
  "56bf1beffb328c1889ee5151b25df6dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConstraintsOverride-request>)))
  "Returns full string definition for message of type '<ConstraintsOverride-request>"
  (cl:format cl:nil "float64 acceleration_horizontal~%float64 acceleration_vertical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConstraintsOverride-request)))
  "Returns full string definition for message of type 'ConstraintsOverride-request"
  (cl:format cl:nil "float64 acceleration_horizontal~%float64 acceleration_vertical~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConstraintsOverride-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConstraintsOverride-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConstraintsOverride-request
    (cl:cons ':acceleration_horizontal (acceleration_horizontal msg))
    (cl:cons ':acceleration_vertical (acceleration_vertical msg))
))
;//! \htmlinclude ConstraintsOverride-response.msg.html

(cl:defclass <ConstraintsOverride-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ConstraintsOverride-response (<ConstraintsOverride-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConstraintsOverride-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConstraintsOverride-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ConstraintsOverride-response> is deprecated: use mrs_msgs-srv:ConstraintsOverride-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConstraintsOverride-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ConstraintsOverride-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConstraintsOverride-response>) ostream)
  "Serializes a message object of type '<ConstraintsOverride-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConstraintsOverride-response>) istream)
  "Deserializes a message object of type '<ConstraintsOverride-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConstraintsOverride-response>)))
  "Returns string type for a service object of type '<ConstraintsOverride-response>"
  "mrs_msgs/ConstraintsOverrideResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstraintsOverride-response)))
  "Returns string type for a service object of type 'ConstraintsOverride-response"
  "mrs_msgs/ConstraintsOverrideResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConstraintsOverride-response>)))
  "Returns md5sum for a message object of type '<ConstraintsOverride-response>"
  "56bf1beffb328c1889ee5151b25df6dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConstraintsOverride-response)))
  "Returns md5sum for a message object of type 'ConstraintsOverride-response"
  "56bf1beffb328c1889ee5151b25df6dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConstraintsOverride-response>)))
  "Returns full string definition for message of type '<ConstraintsOverride-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConstraintsOverride-response)))
  "Returns full string definition for message of type 'ConstraintsOverride-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConstraintsOverride-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConstraintsOverride-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConstraintsOverride-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConstraintsOverride)))
  'ConstraintsOverride-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConstraintsOverride)))
  'ConstraintsOverride-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstraintsOverride)))
  "Returns string type for a service object of type '<ConstraintsOverride>"
  "mrs_msgs/ConstraintsOverride")