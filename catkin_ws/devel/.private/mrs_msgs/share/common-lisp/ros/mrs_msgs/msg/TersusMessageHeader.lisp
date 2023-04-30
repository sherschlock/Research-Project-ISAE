; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude TersusMessageHeader.msg.html

(cl:defclass <TersusMessageHeader> (roslisp-msg-protocol:ros-message)
  ((message_name
    :reader message_name
    :initarg :message_name
    :type cl:string
    :initform "")
   (port_address
    :reader port_address
    :initarg :port_address
    :type cl:string
    :initform "")
   (sequence
    :reader sequence
    :initarg :sequence
    :type cl:fixnum
    :initform 0)
   (idle_time
    :reader idle_time
    :initarg :idle_time
    :type cl:float
    :initform 0.0)
   (time_status
    :reader time_status
    :initarg :time_status
    :type cl:string
    :initform "")
   (gps_week
    :reader gps_week
    :initarg :gps_week
    :type cl:fixnum
    :initform 0)
   (gps_week_seconds
    :reader gps_week_seconds
    :initarg :gps_week_seconds
    :type cl:float
    :initform 0.0)
   (receiver_status
    :reader receiver_status
    :initarg :receiver_status
    :type cl:integer
    :initform 0)
   (software_version
    :reader software_version
    :initarg :software_version
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TersusMessageHeader (<TersusMessageHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TersusMessageHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TersusMessageHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<TersusMessageHeader> is deprecated: use mrs_msgs-msg:TersusMessageHeader instead.")))

(cl:ensure-generic-function 'message_name-val :lambda-list '(m))
(cl:defmethod message_name-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:message_name-val is deprecated.  Use mrs_msgs-msg:message_name instead.")
  (message_name m))

(cl:ensure-generic-function 'port_address-val :lambda-list '(m))
(cl:defmethod port_address-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:port_address-val is deprecated.  Use mrs_msgs-msg:port_address instead.")
  (port_address m))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:sequence-val is deprecated.  Use mrs_msgs-msg:sequence instead.")
  (sequence m))

(cl:ensure-generic-function 'idle_time-val :lambda-list '(m))
(cl:defmethod idle_time-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:idle_time-val is deprecated.  Use mrs_msgs-msg:idle_time instead.")
  (idle_time m))

(cl:ensure-generic-function 'time_status-val :lambda-list '(m))
(cl:defmethod time_status-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:time_status-val is deprecated.  Use mrs_msgs-msg:time_status instead.")
  (time_status m))

(cl:ensure-generic-function 'gps_week-val :lambda-list '(m))
(cl:defmethod gps_week-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gps_week-val is deprecated.  Use mrs_msgs-msg:gps_week instead.")
  (gps_week m))

(cl:ensure-generic-function 'gps_week_seconds-val :lambda-list '(m))
(cl:defmethod gps_week_seconds-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gps_week_seconds-val is deprecated.  Use mrs_msgs-msg:gps_week_seconds instead.")
  (gps_week_seconds m))

(cl:ensure-generic-function 'receiver_status-val :lambda-list '(m))
(cl:defmethod receiver_status-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:receiver_status-val is deprecated.  Use mrs_msgs-msg:receiver_status instead.")
  (receiver_status m))

(cl:ensure-generic-function 'software_version-val :lambda-list '(m))
(cl:defmethod software_version-val ((m <TersusMessageHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:software_version-val is deprecated.  Use mrs_msgs-msg:software_version instead.")
  (software_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TersusMessageHeader>) ostream)
  "Serializes a message object of type '<TersusMessageHeader>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'port_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'port_address))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'idle_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gps_week_seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receiver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'software_version)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'software_version)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TersusMessageHeader>) istream)
  "Deserializes a message object of type '<TersusMessageHeader>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'port_address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'port_address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequence)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'idle_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gps_week_seconds) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receiver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'software_version)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'software_version)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TersusMessageHeader>)))
  "Returns string type for a message object of type '<TersusMessageHeader>"
  "mrs_msgs/TersusMessageHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TersusMessageHeader)))
  "Returns string type for a message object of type 'TersusMessageHeader"
  "mrs_msgs/TersusMessageHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TersusMessageHeader>)))
  "Returns md5sum for a message object of type '<TersusMessageHeader>"
  "551bdd4abfba94b9393d89735daa6fe7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TersusMessageHeader)))
  "Returns md5sum for a message object of type 'TersusMessageHeader"
  "551bdd4abfba94b9393d89735daa6fe7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TersusMessageHeader>)))
  "Returns full string definition for message of type '<TersusMessageHeader>"
  (cl:format cl:nil "# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TersusMessageHeader)))
  "Returns full string definition for message of type 'TersusMessageHeader"
  (cl:format cl:nil "# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TersusMessageHeader>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message_name))
     4 (cl:length (cl:slot-value msg 'port_address))
     2
     4
     4 (cl:length (cl:slot-value msg 'time_status))
     2
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TersusMessageHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'TersusMessageHeader
    (cl:cons ':message_name (message_name msg))
    (cl:cons ':port_address (port_address msg))
    (cl:cons ':sequence (sequence msg))
    (cl:cons ':idle_time (idle_time msg))
    (cl:cons ':time_status (time_status msg))
    (cl:cons ':gps_week (gps_week msg))
    (cl:cons ':gps_week_seconds (gps_week_seconds msg))
    (cl:cons ':receiver_status (receiver_status msg))
    (cl:cons ':software_version (software_version msg))
))
