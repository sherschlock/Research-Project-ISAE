; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Gprmc.msg.html

(cl:defclass <Gprmc> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (message_id
    :reader message_id
    :initarg :message_id
    :type cl:string
    :initform "")
   (utc_seconds
    :reader utc_seconds
    :initarg :utc_seconds
    :type cl:float
    :initform 0.0)
   (position_status
    :reader position_status
    :initarg :position_status
    :type mrs_msgs-msg:GpsStatus
    :initform (cl:make-instance 'mrs_msgs-msg:GpsStatus))
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (latitude_dir
    :reader latitude_dir
    :initarg :latitude_dir
    :type cl:string
    :initform "")
   (longitude_dir
    :reader longitude_dir
    :initarg :longitude_dir
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (track
    :reader track
    :initarg :track
    :type cl:float
    :initform 0.0)
   (date
    :reader date
    :initarg :date
    :type cl:string
    :initform "")
   (mag_var
    :reader mag_var
    :initarg :mag_var
    :type cl:float
    :initform 0.0)
   (mag_var_direction
    :reader mag_var_direction
    :initarg :mag_var_direction
    :type cl:string
    :initform "")
   (mode_indicator
    :reader mode_indicator
    :initarg :mode_indicator
    :type cl:string
    :initform ""))
)

(cl:defclass Gprmc (<Gprmc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gprmc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gprmc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Gprmc> is deprecated: use mrs_msgs-msg:Gprmc instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:message_id-val is deprecated.  Use mrs_msgs-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'utc_seconds-val :lambda-list '(m))
(cl:defmethod utc_seconds-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:utc_seconds-val is deprecated.  Use mrs_msgs-msg:utc_seconds instead.")
  (utc_seconds m))

(cl:ensure-generic-function 'position_status-val :lambda-list '(m))
(cl:defmethod position_status-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position_status-val is deprecated.  Use mrs_msgs-msg:position_status instead.")
  (position_status m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latitude-val is deprecated.  Use mrs_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:longitude-val is deprecated.  Use mrs_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude_dir-val :lambda-list '(m))
(cl:defmethod latitude_dir-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latitude_dir-val is deprecated.  Use mrs_msgs-msg:latitude_dir instead.")
  (latitude_dir m))

(cl:ensure-generic-function 'longitude_dir-val :lambda-list '(m))
(cl:defmethod longitude_dir-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:longitude_dir-val is deprecated.  Use mrs_msgs-msg:longitude_dir instead.")
  (longitude_dir m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:speed-val is deprecated.  Use mrs_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:track-val is deprecated.  Use mrs_msgs-msg:track instead.")
  (track m))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:date-val is deprecated.  Use mrs_msgs-msg:date instead.")
  (date m))

(cl:ensure-generic-function 'mag_var-val :lambda-list '(m))
(cl:defmethod mag_var-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mag_var-val is deprecated.  Use mrs_msgs-msg:mag_var instead.")
  (mag_var m))

(cl:ensure-generic-function 'mag_var_direction-val :lambda-list '(m))
(cl:defmethod mag_var_direction-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mag_var_direction-val is deprecated.  Use mrs_msgs-msg:mag_var_direction instead.")
  (mag_var_direction m))

(cl:ensure-generic-function 'mode_indicator-val :lambda-list '(m))
(cl:defmethod mode_indicator-val ((m <Gprmc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mode_indicator-val is deprecated.  Use mrs_msgs-msg:mode_indicator instead.")
  (mode_indicator m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Gprmc>)))
    "Constants for message type '<Gprmc>"
  '((:MODE_INDICATIOR_AUTONOMOUS . "A")
    (:MODE_INDICATIOR_DIFFERENTIAL . "D")
    (:MODE_INDICATIOR_ESTIMATED . "E")
    (:MODE_INDICATIOR_MANUAL . "M")
    (:MODE_INDICATIOR_DATA_NOT_VALID . "N"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Gprmc)))
    "Constants for message type 'Gprmc"
  '((:MODE_INDICATIOR_AUTONOMOUS . "A")
    (:MODE_INDICATIOR_DIFFERENTIAL . "D")
    (:MODE_INDICATIOR_ESTIMATED . "E")
    (:MODE_INDICATIOR_MANUAL . "M")
    (:MODE_INDICATIOR_DATA_NOT_VALID . "N"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gprmc>) ostream)
  "Serializes a message object of type '<Gprmc>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message_id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utc_seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'latitude_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'latitude_dir))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'longitude_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'longitude_dir))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'track))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mag_var_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mag_var_direction))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode_indicator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode_indicator))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gprmc>) istream)
  "Deserializes a message object of type '<Gprmc>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utc_seconds) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latitude_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'latitude_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longitude_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'longitude_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag_var) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mag_var_direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mag_var_direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_indicator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode_indicator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gprmc>)))
  "Returns string type for a message object of type '<Gprmc>"
  "mrs_msgs/Gprmc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gprmc)))
  "Returns string type for a message object of type 'Gprmc"
  "mrs_msgs/Gprmc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gprmc>)))
  "Returns md5sum for a message object of type '<Gprmc>"
  "141c762d606ff599c6f6b036906b68bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gprmc)))
  "Returns md5sum for a message object of type 'Gprmc"
  "141c762d606ff599c6f6b036906b68bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gprmc>)))
  "Returns full string definition for message of type '<Gprmc>"
  (cl:format cl:nil "# Message from GPRMC NMEA String~%Header header~%~%string message_id~%~%float64 utc_seconds~%GpsStatus position_status~%~%float64 latitude~%float64 longitude~%~%string latitude_dir~%string longitude_dir~%~%float32 speed  # in metres per second~%float32 track~%string date~%float32 mag_var~%string mag_var_direction~%~%string mode_indicator~%string MODE_INDICATIOR_AUTONOMOUS=A~%string MODE_INDICATIOR_DIFFERENTIAL=D~%string MODE_INDICATIOR_ESTIMATED=E~%string MODE_INDICATIOR_MANUAL=M~%string MODE_INDICATIOR_DATA_NOT_VALID=N~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsStatus~%uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gprmc)))
  "Returns full string definition for message of type 'Gprmc"
  (cl:format cl:nil "# Message from GPRMC NMEA String~%Header header~%~%string message_id~%~%float64 utc_seconds~%GpsStatus position_status~%~%float64 latitude~%float64 longitude~%~%string latitude_dir~%string longitude_dir~%~%float32 speed  # in metres per second~%float32 track~%string date~%float32 mag_var~%string mag_var_direction~%~%string mode_indicator~%string MODE_INDICATIOR_AUTONOMOUS=A~%string MODE_INDICATIOR_DIFFERENTIAL=D~%string MODE_INDICATIOR_ESTIMATED=E~%string MODE_INDICATIOR_MANUAL=M~%string MODE_INDICATIOR_DATA_NOT_VALID=N~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsStatus~%uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gprmc>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'message_id))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_status))
     8
     8
     4 (cl:length (cl:slot-value msg 'latitude_dir))
     4 (cl:length (cl:slot-value msg 'longitude_dir))
     4
     4
     4 (cl:length (cl:slot-value msg 'date))
     4
     4 (cl:length (cl:slot-value msg 'mag_var_direction))
     4 (cl:length (cl:slot-value msg 'mode_indicator))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gprmc>))
  "Converts a ROS message object to a list"
  (cl:list 'Gprmc
    (cl:cons ':header (header msg))
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':utc_seconds (utc_seconds msg))
    (cl:cons ':position_status (position_status msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude_dir (latitude_dir msg))
    (cl:cons ':longitude_dir (longitude_dir msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':track (track msg))
    (cl:cons ':date (date msg))
    (cl:cons ':mag_var (mag_var msg))
    (cl:cons ':mag_var_direction (mag_var_direction msg))
    (cl:cons ':mode_indicator (mode_indicator msg))
))
