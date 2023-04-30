; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude BigDofecSetPWM-request.msg.html

(cl:defclass <BigDofecSetPWM-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (pwm_1
    :reader pwm_1
    :initarg :pwm_1
    :type cl:fixnum
    :initform 0)
   (pwm_2
    :reader pwm_2
    :initarg :pwm_2
    :type cl:fixnum
    :initform 0)
   (pwm_3
    :reader pwm_3
    :initarg :pwm_3
    :type cl:fixnum
    :initform 0)
   (pwm_4
    :reader pwm_4
    :initarg :pwm_4
    :type cl:fixnum
    :initform 0)
   (pwm_5
    :reader pwm_5
    :initarg :pwm_5
    :type cl:fixnum
    :initform 0)
   (pwm_6
    :reader pwm_6
    :initarg :pwm_6
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BigDofecSetPWM-request (<BigDofecSetPWM-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecSetPWM-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecSetPWM-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecSetPWM-request> is deprecated: use mrs_msgs-srv:BigDofecSetPWM-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <BigDofecSetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:enable-val is deprecated.  Use mrs_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'pwm_1-val :lambda-list '(m))
(cl:defmethod pwm_1-val ((m <BigDofecSetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pwm_1-val is deprecated.  Use mrs_msgs-srv:pwm_1 instead.")
  (pwm_1 m))

(cl:ensure-generic-function 'pwm_2-val :lambda-list '(m))
(cl:defmethod pwm_2-val ((m <BigDofecSetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pwm_2-val is deprecated.  Use mrs_msgs-srv:pwm_2 instead.")
  (pwm_2 m))

(cl:ensure-generic-function 'pwm_3-val :lambda-list '(m))
(cl:defmethod pwm_3-val ((m <BigDofecSetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pwm_3-val is deprecated.  Use mrs_msgs-srv:pwm_3 instead.")
  (pwm_3 m))

(cl:ensure-generic-function 'pwm_4-val :lambda-list '(m))
(cl:defmethod pwm_4-val ((m <BigDofecSetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pwm_4-val is deprecated.  Use mrs_msgs-srv:pwm_4 instead.")
  (pwm_4 m))

(cl:ensure-generic-function 'pwm_5-val :lambda-list '(m))
(cl:defmethod pwm_5-val ((m <BigDofecSetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pwm_5-val is deprecated.  Use mrs_msgs-srv:pwm_5 instead.")
  (pwm_5 m))

(cl:ensure-generic-function 'pwm_6-val :lambda-list '(m))
(cl:defmethod pwm_6-val ((m <BigDofecSetPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pwm_6-val is deprecated.  Use mrs_msgs-srv:pwm_6 instead.")
  (pwm_6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecSetPWM-request>) ostream)
  "Serializes a message object of type '<BigDofecSetPWM-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_5)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_6)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_6)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecSetPWM-request>) istream)
  "Deserializes a message object of type '<BigDofecSetPWM-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_5)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_6)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_6)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecSetPWM-request>)))
  "Returns string type for a service object of type '<BigDofecSetPWM-request>"
  "mrs_msgs/BigDofecSetPWMRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSetPWM-request)))
  "Returns string type for a service object of type 'BigDofecSetPWM-request"
  "mrs_msgs/BigDofecSetPWMRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecSetPWM-request>)))
  "Returns md5sum for a message object of type '<BigDofecSetPWM-request>"
  "520a4ed6517f96208c7031ef1b57775b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecSetPWM-request)))
  "Returns md5sum for a message object of type 'BigDofecSetPWM-request"
  "520a4ed6517f96208c7031ef1b57775b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecSetPWM-request>)))
  "Returns full string definition for message of type '<BigDofecSetPWM-request>"
  (cl:format cl:nil "bool enable~%uint16 pwm_1~%uint16 pwm_2~%uint16 pwm_3~%uint16 pwm_4~%uint16 pwm_5~%uint16 pwm_6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecSetPWM-request)))
  "Returns full string definition for message of type 'BigDofecSetPWM-request"
  (cl:format cl:nil "bool enable~%uint16 pwm_1~%uint16 pwm_2~%uint16 pwm_3~%uint16 pwm_4~%uint16 pwm_5~%uint16 pwm_6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecSetPWM-request>))
  (cl:+ 0
     1
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecSetPWM-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecSetPWM-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':pwm_1 (pwm_1 msg))
    (cl:cons ':pwm_2 (pwm_2 msg))
    (cl:cons ':pwm_3 (pwm_3 msg))
    (cl:cons ':pwm_4 (pwm_4 msg))
    (cl:cons ':pwm_5 (pwm_5 msg))
    (cl:cons ':pwm_6 (pwm_6 msg))
))
;//! \htmlinclude BigDofecSetPWM-response.msg.html

(cl:defclass <BigDofecSetPWM-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass BigDofecSetPWM-response (<BigDofecSetPWM-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecSetPWM-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecSetPWM-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecSetPWM-response> is deprecated: use mrs_msgs-srv:BigDofecSetPWM-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BigDofecSetPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BigDofecSetPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecSetPWM-response>) ostream)
  "Serializes a message object of type '<BigDofecSetPWM-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecSetPWM-response>) istream)
  "Deserializes a message object of type '<BigDofecSetPWM-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecSetPWM-response>)))
  "Returns string type for a service object of type '<BigDofecSetPWM-response>"
  "mrs_msgs/BigDofecSetPWMResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSetPWM-response)))
  "Returns string type for a service object of type 'BigDofecSetPWM-response"
  "mrs_msgs/BigDofecSetPWMResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecSetPWM-response>)))
  "Returns md5sum for a message object of type '<BigDofecSetPWM-response>"
  "520a4ed6517f96208c7031ef1b57775b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecSetPWM-response)))
  "Returns md5sum for a message object of type 'BigDofecSetPWM-response"
  "520a4ed6517f96208c7031ef1b57775b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecSetPWM-response>)))
  "Returns full string definition for message of type '<BigDofecSetPWM-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecSetPWM-response)))
  "Returns full string definition for message of type 'BigDofecSetPWM-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecSetPWM-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecSetPWM-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecSetPWM-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BigDofecSetPWM)))
  'BigDofecSetPWM-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BigDofecSetPWM)))
  'BigDofecSetPWM-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecSetPWM)))
  "Returns string type for a service object of type '<BigDofecSetPWM>"
  "mrs_msgs/BigDofecSetPWM")