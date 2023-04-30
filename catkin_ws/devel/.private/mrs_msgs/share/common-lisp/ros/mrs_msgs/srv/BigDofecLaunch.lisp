; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude BigDofecLaunch-request.msg.html

(cl:defclass <BigDofecLaunch-request> (roslisp-msg-protocol:ros-message)
  ((channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (msecs_open
    :reader msecs_open
    :initarg :msecs_open
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BigDofecLaunch-request (<BigDofecLaunch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecLaunch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecLaunch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecLaunch-request> is deprecated: use mrs_msgs-srv:BigDofecLaunch-request instead.")))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <BigDofecLaunch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:channel-val is deprecated.  Use mrs_msgs-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'msecs_open-val :lambda-list '(m))
(cl:defmethod msecs_open-val ((m <BigDofecLaunch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:msecs_open-val is deprecated.  Use mrs_msgs-srv:msecs_open instead.")
  (msecs_open m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecLaunch-request>) ostream)
  "Serializes a message object of type '<BigDofecLaunch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msecs_open)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msecs_open)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecLaunch-request>) istream)
  "Deserializes a message object of type '<BigDofecLaunch-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msecs_open)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msecs_open)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecLaunch-request>)))
  "Returns string type for a service object of type '<BigDofecLaunch-request>"
  "mrs_msgs/BigDofecLaunchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecLaunch-request)))
  "Returns string type for a service object of type 'BigDofecLaunch-request"
  "mrs_msgs/BigDofecLaunchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecLaunch-request>)))
  "Returns md5sum for a message object of type '<BigDofecLaunch-request>"
  "357f0bafa0cfddcfa722df8b39793652")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecLaunch-request)))
  "Returns md5sum for a message object of type 'BigDofecLaunch-request"
  "357f0bafa0cfddcfa722df8b39793652")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecLaunch-request>)))
  "Returns full string definition for message of type '<BigDofecLaunch-request>"
  (cl:format cl:nil "uint8 channel~%uint16 msecs_open~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecLaunch-request)))
  "Returns full string definition for message of type 'BigDofecLaunch-request"
  (cl:format cl:nil "uint8 channel~%uint16 msecs_open~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecLaunch-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecLaunch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecLaunch-request
    (cl:cons ':channel (channel msg))
    (cl:cons ':msecs_open (msecs_open msg))
))
;//! \htmlinclude BigDofecLaunch-response.msg.html

(cl:defclass <BigDofecLaunch-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass BigDofecLaunch-response (<BigDofecLaunch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecLaunch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecLaunch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecLaunch-response> is deprecated: use mrs_msgs-srv:BigDofecLaunch-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BigDofecLaunch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BigDofecLaunch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecLaunch-response>) ostream)
  "Serializes a message object of type '<BigDofecLaunch-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecLaunch-response>) istream)
  "Deserializes a message object of type '<BigDofecLaunch-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecLaunch-response>)))
  "Returns string type for a service object of type '<BigDofecLaunch-response>"
  "mrs_msgs/BigDofecLaunchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecLaunch-response)))
  "Returns string type for a service object of type 'BigDofecLaunch-response"
  "mrs_msgs/BigDofecLaunchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecLaunch-response>)))
  "Returns md5sum for a message object of type '<BigDofecLaunch-response>"
  "357f0bafa0cfddcfa722df8b39793652")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecLaunch-response)))
  "Returns md5sum for a message object of type 'BigDofecLaunch-response"
  "357f0bafa0cfddcfa722df8b39793652")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecLaunch-response>)))
  "Returns full string definition for message of type '<BigDofecLaunch-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecLaunch-response)))
  "Returns full string definition for message of type 'BigDofecLaunch-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecLaunch-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecLaunch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecLaunch-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BigDofecLaunch)))
  'BigDofecLaunch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BigDofecLaunch)))
  'BigDofecLaunch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecLaunch)))
  "Returns string type for a service object of type '<BigDofecLaunch>"
  "mrs_msgs/BigDofecLaunch")