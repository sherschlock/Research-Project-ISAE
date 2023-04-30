; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ChangeState-request.msg.html

(cl:defclass <ChangeState-request> (roslisp-msg-protocol:ros-message)
  ((state_id
    :reader state_id
    :initarg :state_id
    :type cl:integer
    :initform 0))
)

(cl:defclass ChangeState-request (<ChangeState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeState-request> is deprecated: use mrs_msgs-srv:ChangeState-request instead.")))

(cl:ensure-generic-function 'state_id-val :lambda-list '(m))
(cl:defmethod state_id-val ((m <ChangeState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:state_id-val is deprecated.  Use mrs_msgs-srv:state_id instead.")
  (state_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeState-request>) ostream)
  "Serializes a message object of type '<ChangeState-request>"
  (cl:let* ((signed (cl:slot-value msg 'state_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeState-request>) istream)
  "Deserializes a message object of type '<ChangeState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeState-request>)))
  "Returns string type for a service object of type '<ChangeState-request>"
  "mrs_msgs/ChangeStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState-request)))
  "Returns string type for a service object of type 'ChangeState-request"
  "mrs_msgs/ChangeStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeState-request>)))
  "Returns md5sum for a message object of type '<ChangeState-request>"
  "e106cc88a1deaecd5961b110a257908e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeState-request)))
  "Returns md5sum for a message object of type 'ChangeState-request"
  "e106cc88a1deaecd5961b110a257908e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeState-request>)))
  "Returns full string definition for message of type '<ChangeState-request>"
  (cl:format cl:nil "int32 state_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeState-request)))
  "Returns full string definition for message of type 'ChangeState-request"
  (cl:format cl:nil "int32 state_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeState-request
    (cl:cons ':state_id (state_id msg))
))
;//! \htmlinclude ChangeState-response.msg.html

(cl:defclass <ChangeState-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ChangeState-response (<ChangeState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeState-response> is deprecated: use mrs_msgs-srv:ChangeState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeState-response>) ostream)
  "Serializes a message object of type '<ChangeState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeState-response>) istream)
  "Deserializes a message object of type '<ChangeState-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeState-response>)))
  "Returns string type for a service object of type '<ChangeState-response>"
  "mrs_msgs/ChangeStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState-response)))
  "Returns string type for a service object of type 'ChangeState-response"
  "mrs_msgs/ChangeStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeState-response>)))
  "Returns md5sum for a message object of type '<ChangeState-response>"
  "e106cc88a1deaecd5961b110a257908e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeState-response)))
  "Returns md5sum for a message object of type 'ChangeState-response"
  "e106cc88a1deaecd5961b110a257908e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeState-response>)))
  "Returns full string definition for message of type '<ChangeState-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeState-response)))
  "Returns full string definition for message of type 'ChangeState-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeState-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeState-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeState)))
  'ChangeState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeState)))
  'ChangeState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState)))
  "Returns string type for a service object of type '<ChangeState>"
  "mrs_msgs/ChangeState")