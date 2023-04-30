; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude CustomTopic.msg.html

(cl:defclass <CustomTopic> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (topic_hz
    :reader topic_hz
    :initarg :topic_hz
    :type cl:float
    :initform 0.0)
   (topic_color
    :reader topic_color
    :initarg :topic_color
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CustomTopic (<CustomTopic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomTopic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomTopic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<CustomTopic> is deprecated: use mrs_msgs-msg:CustomTopic instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <CustomTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:topic_name-val is deprecated.  Use mrs_msgs-msg:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'topic_hz-val :lambda-list '(m))
(cl:defmethod topic_hz-val ((m <CustomTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:topic_hz-val is deprecated.  Use mrs_msgs-msg:topic_hz instead.")
  (topic_hz m))

(cl:ensure-generic-function 'topic_color-val :lambda-list '(m))
(cl:defmethod topic_color-val ((m <CustomTopic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:topic_color-val is deprecated.  Use mrs_msgs-msg:topic_color instead.")
  (topic_color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomTopic>) ostream)
  "Serializes a message object of type '<CustomTopic>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'topic_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'topic_color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomTopic>) istream)
  "Deserializes a message object of type '<CustomTopic>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'topic_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_color) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomTopic>)))
  "Returns string type for a message object of type '<CustomTopic>"
  "mrs_msgs/CustomTopic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomTopic)))
  "Returns string type for a message object of type 'CustomTopic"
  "mrs_msgs/CustomTopic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomTopic>)))
  "Returns md5sum for a message object of type '<CustomTopic>"
  "eb521c01a11f857100125253e2150a98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomTopic)))
  "Returns md5sum for a message object of type 'CustomTopic"
  "eb521c01a11f857100125253e2150a98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomTopic>)))
  "Returns full string definition for message of type '<CustomTopic>"
  (cl:format cl:nil "string topic_name~%float32 topic_hz~%int16 topic_color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomTopic)))
  "Returns full string definition for message of type 'CustomTopic"
  (cl:format cl:nil "string topic_name~%float32 topic_hz~%int16 topic_color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomTopic>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomTopic>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomTopic
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':topic_hz (topic_hz msg))
    (cl:cons ':topic_color (topic_color msg))
))
