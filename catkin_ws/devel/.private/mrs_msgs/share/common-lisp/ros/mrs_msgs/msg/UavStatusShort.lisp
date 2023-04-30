; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude UavStatusShort.msg.html

(cl:defclass <UavStatusShort> (roslisp-msg-protocol:ros-message)
  ((odom_hz
    :reader odom_hz
    :initarg :odom_hz
    :type cl:float
    :initform 0.0)
   (odom_color
    :reader odom_color
    :initarg :odom_color
    :type cl:fixnum
    :initform 0)
   (odom_x
    :reader odom_x
    :initarg :odom_x
    :type cl:float
    :initform 0.0)
   (odom_y
    :reader odom_y
    :initarg :odom_y
    :type cl:float
    :initform 0.0)
   (odom_z
    :reader odom_z
    :initarg :odom_z
    :type cl:float
    :initform 0.0)
   (odom_hdg
    :reader odom_hdg
    :initarg :odom_hdg
    :type cl:float
    :initform 0.0)
   (cmd_x
    :reader cmd_x
    :initarg :cmd_x
    :type cl:float
    :initform 0.0)
   (cmd_y
    :reader cmd_y
    :initarg :cmd_y
    :type cl:float
    :initform 0.0)
   (cmd_z
    :reader cmd_z
    :initarg :cmd_z
    :type cl:float
    :initform 0.0)
   (cmd_hdg
    :reader cmd_hdg
    :initarg :cmd_hdg
    :type cl:float
    :initform 0.0))
)

(cl:defclass UavStatusShort (<UavStatusShort>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavStatusShort>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavStatusShort)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<UavStatusShort> is deprecated: use mrs_msgs-msg:UavStatusShort instead.")))

(cl:ensure-generic-function 'odom_hz-val :lambda-list '(m))
(cl:defmethod odom_hz-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_hz-val is deprecated.  Use mrs_msgs-msg:odom_hz instead.")
  (odom_hz m))

(cl:ensure-generic-function 'odom_color-val :lambda-list '(m))
(cl:defmethod odom_color-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_color-val is deprecated.  Use mrs_msgs-msg:odom_color instead.")
  (odom_color m))

(cl:ensure-generic-function 'odom_x-val :lambda-list '(m))
(cl:defmethod odom_x-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_x-val is deprecated.  Use mrs_msgs-msg:odom_x instead.")
  (odom_x m))

(cl:ensure-generic-function 'odom_y-val :lambda-list '(m))
(cl:defmethod odom_y-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_y-val is deprecated.  Use mrs_msgs-msg:odom_y instead.")
  (odom_y m))

(cl:ensure-generic-function 'odom_z-val :lambda-list '(m))
(cl:defmethod odom_z-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_z-val is deprecated.  Use mrs_msgs-msg:odom_z instead.")
  (odom_z m))

(cl:ensure-generic-function 'odom_hdg-val :lambda-list '(m))
(cl:defmethod odom_hdg-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_hdg-val is deprecated.  Use mrs_msgs-msg:odom_hdg instead.")
  (odom_hdg m))

(cl:ensure-generic-function 'cmd_x-val :lambda-list '(m))
(cl:defmethod cmd_x-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_x-val is deprecated.  Use mrs_msgs-msg:cmd_x instead.")
  (cmd_x m))

(cl:ensure-generic-function 'cmd_y-val :lambda-list '(m))
(cl:defmethod cmd_y-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_y-val is deprecated.  Use mrs_msgs-msg:cmd_y instead.")
  (cmd_y m))

(cl:ensure-generic-function 'cmd_z-val :lambda-list '(m))
(cl:defmethod cmd_z-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_z-val is deprecated.  Use mrs_msgs-msg:cmd_z instead.")
  (cmd_z m))

(cl:ensure-generic-function 'cmd_hdg-val :lambda-list '(m))
(cl:defmethod cmd_hdg-val ((m <UavStatusShort>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_hdg-val is deprecated.  Use mrs_msgs-msg:cmd_hdg instead.")
  (cmd_hdg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavStatusShort>) ostream)
  "Serializes a message object of type '<UavStatusShort>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'odom_color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_hdg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_hdg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavStatusShort>) istream)
  "Deserializes a message object of type '<UavStatusShort>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_color) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_hdg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_hdg) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavStatusShort>)))
  "Returns string type for a message object of type '<UavStatusShort>"
  "mrs_msgs/UavStatusShort")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavStatusShort)))
  "Returns string type for a message object of type 'UavStatusShort"
  "mrs_msgs/UavStatusShort")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavStatusShort>)))
  "Returns md5sum for a message object of type '<UavStatusShort>"
  "799c7489ad9979eb43be3571ef53b456")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavStatusShort)))
  "Returns md5sum for a message object of type 'UavStatusShort"
  "799c7489ad9979eb43be3571ef53b456")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavStatusShort>)))
  "Returns full string definition for message of type '<UavStatusShort>"
  (cl:format cl:nil "float32 odom_hz~%int16 odom_color~%float32 odom_x~%float32 odom_y~%float32 odom_z~%float32 odom_hdg~%~%float32 cmd_x~%float32 cmd_y~%float32 cmd_z~%float32 cmd_hdg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavStatusShort)))
  "Returns full string definition for message of type 'UavStatusShort"
  (cl:format cl:nil "float32 odom_hz~%int16 odom_color~%float32 odom_x~%float32 odom_y~%float32 odom_z~%float32 odom_hdg~%~%float32 cmd_x~%float32 cmd_y~%float32 cmd_z~%float32 cmd_hdg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavStatusShort>))
  (cl:+ 0
     4
     2
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavStatusShort>))
  "Converts a ROS message object to a list"
  (cl:list 'UavStatusShort
    (cl:cons ':odom_hz (odom_hz msg))
    (cl:cons ':odom_color (odom_color msg))
    (cl:cons ':odom_x (odom_x msg))
    (cl:cons ':odom_y (odom_y msg))
    (cl:cons ':odom_z (odom_z msg))
    (cl:cons ':odom_hdg (odom_hdg msg))
    (cl:cons ':cmd_x (cmd_x msg))
    (cl:cons ':cmd_y (cmd_y msg))
    (cl:cons ':cmd_z (cmd_z msg))
    (cl:cons ':cmd_hdg (cmd_hdg msg))
))
