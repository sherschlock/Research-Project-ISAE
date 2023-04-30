; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude Vec1-request.msg.html

(cl:defclass <Vec1-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type cl:float
    :initform 0.0))
)

(cl:defclass Vec1-request (<Vec1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vec1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vec1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<Vec1-request> is deprecated: use mrs_msgs-srv:Vec1-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <Vec1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:goal-val is deprecated.  Use mrs_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vec1-request>) ostream)
  "Serializes a message object of type '<Vec1-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vec1-request>) istream)
  "Deserializes a message object of type '<Vec1-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vec1-request>)))
  "Returns string type for a service object of type '<Vec1-request>"
  "mrs_msgs/Vec1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vec1-request)))
  "Returns string type for a service object of type 'Vec1-request"
  "mrs_msgs/Vec1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vec1-request>)))
  "Returns md5sum for a message object of type '<Vec1-request>"
  "9f12dd235d16c796b68c355a87389da0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vec1-request)))
  "Returns md5sum for a message object of type 'Vec1-request"
  "9f12dd235d16c796b68c355a87389da0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vec1-request>)))
  "Returns full string definition for message of type '<Vec1-request>"
  (cl:format cl:nil "float64 goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vec1-request)))
  "Returns full string definition for message of type 'Vec1-request"
  (cl:format cl:nil "float64 goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vec1-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vec1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Vec1-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude Vec1-response.msg.html

(cl:defclass <Vec1-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Vec1-response (<Vec1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vec1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vec1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<Vec1-response> is deprecated: use mrs_msgs-srv:Vec1-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Vec1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Vec1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vec1-response>) ostream)
  "Serializes a message object of type '<Vec1-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vec1-response>) istream)
  "Deserializes a message object of type '<Vec1-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vec1-response>)))
  "Returns string type for a service object of type '<Vec1-response>"
  "mrs_msgs/Vec1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vec1-response)))
  "Returns string type for a service object of type 'Vec1-response"
  "mrs_msgs/Vec1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vec1-response>)))
  "Returns md5sum for a message object of type '<Vec1-response>"
  "9f12dd235d16c796b68c355a87389da0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vec1-response)))
  "Returns md5sum for a message object of type 'Vec1-response"
  "9f12dd235d16c796b68c355a87389da0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vec1-response>)))
  "Returns full string definition for message of type '<Vec1-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vec1-response)))
  "Returns full string definition for message of type 'Vec1-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vec1-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vec1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Vec1-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Vec1)))
  'Vec1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Vec1)))
  'Vec1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vec1)))
  "Returns string type for a service object of type '<Vec1>"
  "mrs_msgs/Vec1")