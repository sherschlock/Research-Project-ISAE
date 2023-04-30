; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude BigDofecSetLeds-request.msg.html

(cl:defclass <BigDofecSetLeds-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (num_leds
    :reader num_leds
    :initarg :num_leds
    :type cl:fixnum
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type cl:fixnum
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BigDofecSetLeds-request (<BigDofecSetLeds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecSetLeds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecSetLeds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecSetLeds-request> is deprecated: use mrs_msgs-srv:BigDofecSetLeds-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <BigDofecSetLeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:channel-val is deprecated.  Use mrs_msgs-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'num_leds-val :lambda-list '(m))
(cl:defmethod num_leds-val ((m <BigDofecSetLeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:num_leds-val is deprecated.  Use mrs_msgs-srv:num_leds instead.")
  (num_leds m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <BigDofecSetLeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:r-val is deprecated.  Use mrs_msgs-srv:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <BigDofecSetLeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:g-val is deprecated.  Use mrs_msgs-srv:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <BigDofecSetLeds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:b-val is deprecated.  Use mrs_msgs-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecSetLeds-request>) ostream)
  "Serializes a message object of type '<BigDofecSetLeds-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_leds)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecSetLeds-request>) istream)
  "Deserializes a message object of type '<BigDofecSetLeds-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_leds)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecSetLeds-request>)))
  "Returns string type for a service object of type '<BigDofecSetLeds-request>"
  "mrs_msgs/BigDofecSetLedsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSetLeds-request)))
  "Returns string type for a service object of type 'BigDofecSetLeds-request"
  "mrs_msgs/BigDofecSetLedsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecSetLeds-request>)))
  "Returns md5sum for a message object of type '<BigDofecSetLeds-request>"
  "4f4853b0cec3ee4ae284153b1ef7bba5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecSetLeds-request)))
  "Returns md5sum for a message object of type 'BigDofecSetLeds-request"
  "4f4853b0cec3ee4ae284153b1ef7bba5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecSetLeds-request>)))
  "Returns full string definition for message of type '<BigDofecSetLeds-request>"
  (cl:format cl:nil "uint8 channel~%uint8 num_leds~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecSetLeds-request)))
  "Returns full string definition for message of type 'BigDofecSetLeds-request"
  (cl:format cl:nil "uint8 channel~%uint8 num_leds~%uint8 r~%uint8 g~%uint8 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecSetLeds-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecSetLeds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecSetLeds-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':num_leds (num_leds msg))
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude BigDofecSetLeds-response.msg.html

(cl:defclass <BigDofecSetLeds-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass BigDofecSetLeds-response (<BigDofecSetLeds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecSetLeds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecSetLeds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecSetLeds-response> is deprecated: use mrs_msgs-srv:BigDofecSetLeds-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BigDofecSetLeds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BigDofecSetLeds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecSetLeds-response>) ostream)
  "Serializes a message object of type '<BigDofecSetLeds-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecSetLeds-response>) istream)
  "Deserializes a message object of type '<BigDofecSetLeds-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecSetLeds-response>)))
  "Returns string type for a service object of type '<BigDofecSetLeds-response>"
  "mrs_msgs/BigDofecSetLedsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSetLeds-response)))
  "Returns string type for a service object of type 'BigDofecSetLeds-response"
  "mrs_msgs/BigDofecSetLedsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecSetLeds-response>)))
  "Returns md5sum for a message object of type '<BigDofecSetLeds-response>"
  "4f4853b0cec3ee4ae284153b1ef7bba5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecSetLeds-response)))
  "Returns md5sum for a message object of type 'BigDofecSetLeds-response"
  "4f4853b0cec3ee4ae284153b1ef7bba5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecSetLeds-response>)))
  "Returns full string definition for message of type '<BigDofecSetLeds-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecSetLeds-response)))
  "Returns full string definition for message of type 'BigDofecSetLeds-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecSetLeds-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecSetLeds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecSetLeds-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BigDofecSetLeds)))
  'BigDofecSetLeds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BigDofecSetLeds)))
  'BigDofecSetLeds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSetLeds)))
  "Returns string type for a service object of type '<BigDofecSetLeds>"
  "mrs_msgs/BigDofecSetLeds")