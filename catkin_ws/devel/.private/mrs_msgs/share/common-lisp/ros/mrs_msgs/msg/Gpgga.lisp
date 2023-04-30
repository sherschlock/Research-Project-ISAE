; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Gpgga.msg.html

(cl:defclass <Gpgga> (roslisp-msg-protocol:ros-message)
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
   (gps_quality
    :reader gps_quality
    :initarg :gps_quality
    :type mrs_msgs-msg:GpsStatus
    :initform (cl:make-instance 'mrs_msgs-msg:GpsStatus))
   (num_sats
    :reader num_sats
    :initarg :num_sats
    :type cl:integer
    :initform 0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (altitude_units
    :reader altitude_units
    :initarg :altitude_units
    :type cl:string
    :initform "")
   (undulation
    :reader undulation
    :initarg :undulation
    :type cl:float
    :initform 0.0)
   (undulation_units
    :reader undulation_units
    :initarg :undulation_units
    :type cl:string
    :initform "")
   (diff_age
    :reader diff_age
    :initarg :diff_age
    :type cl:integer
    :initform 0)
   (station_id
    :reader station_id
    :initarg :station_id
    :type cl:string
    :initform ""))
)

(cl:defclass Gpgga (<Gpgga>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gpgga>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gpgga)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Gpgga> is deprecated: use mrs_msgs-msg:Gpgga instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:message_id-val is deprecated.  Use mrs_msgs-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'utc_seconds-val :lambda-list '(m))
(cl:defmethod utc_seconds-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:utc_seconds-val is deprecated.  Use mrs_msgs-msg:utc_seconds instead.")
  (utc_seconds m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latitude-val is deprecated.  Use mrs_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:longitude-val is deprecated.  Use mrs_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude_dir-val :lambda-list '(m))
(cl:defmethod latitude_dir-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latitude_dir-val is deprecated.  Use mrs_msgs-msg:latitude_dir instead.")
  (latitude_dir m))

(cl:ensure-generic-function 'longitude_dir-val :lambda-list '(m))
(cl:defmethod longitude_dir-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:longitude_dir-val is deprecated.  Use mrs_msgs-msg:longitude_dir instead.")
  (longitude_dir m))

(cl:ensure-generic-function 'gps_quality-val :lambda-list '(m))
(cl:defmethod gps_quality-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gps_quality-val is deprecated.  Use mrs_msgs-msg:gps_quality instead.")
  (gps_quality m))

(cl:ensure-generic-function 'num_sats-val :lambda-list '(m))
(cl:defmethod num_sats-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_sats-val is deprecated.  Use mrs_msgs-msg:num_sats instead.")
  (num_sats m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:hdop-val is deprecated.  Use mrs_msgs-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:altitude-val is deprecated.  Use mrs_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'altitude_units-val :lambda-list '(m))
(cl:defmethod altitude_units-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:altitude_units-val is deprecated.  Use mrs_msgs-msg:altitude_units instead.")
  (altitude_units m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:undulation-val is deprecated.  Use mrs_msgs-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'undulation_units-val :lambda-list '(m))
(cl:defmethod undulation_units-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:undulation_units-val is deprecated.  Use mrs_msgs-msg:undulation_units instead.")
  (undulation_units m))

(cl:ensure-generic-function 'diff_age-val :lambda-list '(m))
(cl:defmethod diff_age-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:diff_age-val is deprecated.  Use mrs_msgs-msg:diff_age instead.")
  (diff_age m))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <Gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:station_id-val is deprecated.  Use mrs_msgs-msg:station_id instead.")
  (station_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gpgga>) ostream)
  "Serializes a message object of type '<Gpgga>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps_quality) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_sats)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_sats)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'altitude_units))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'altitude_units))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'undulation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'undulation_units))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'undulation_units))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'diff_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'diff_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'diff_age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'diff_age)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'station_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'station_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gpgga>) istream)
  "Deserializes a message object of type '<Gpgga>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps_quality) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_sats)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_sats)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hdop) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'altitude_units) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'altitude_units) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'undulation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'undulation_units) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'undulation_units) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'diff_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'diff_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'diff_age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'diff_age)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'station_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gpgga>)))
  "Returns string type for a message object of type '<Gpgga>"
  "mrs_msgs/Gpgga")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gpgga)))
  "Returns string type for a message object of type 'Gpgga"
  "mrs_msgs/Gpgga")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gpgga>)))
  "Returns md5sum for a message object of type '<Gpgga>"
  "60c1dbabb1ff7bc913853a9cc2abcc73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gpgga)))
  "Returns md5sum for a message object of type 'Gpgga"
  "60c1dbabb1ff7bc913853a9cc2abcc73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gpgga>)))
  "Returns full string definition for message of type '<Gpgga>"
  (cl:format cl:nil "# Message from GPGGA NMEA String~%Header header~%~%string message_id~%~%# UTC seconds from midnight~%float64 utc_seconds~%~%float64 latitude~%float64 longitude~%~%string latitude_dir~%string longitude_dir~%~%GpsStatus gps_quality~%~%uint32 num_sats~%float32 hdop ~%float32 altitude~%string altitude_units~%~%float32 undulation~%string undulation_units~%uint32 diff_age~%string station_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsStatus~%uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gpgga)))
  "Returns full string definition for message of type 'Gpgga"
  (cl:format cl:nil "# Message from GPGGA NMEA String~%Header header~%~%string message_id~%~%# UTC seconds from midnight~%float64 utc_seconds~%~%float64 latitude~%float64 longitude~%~%string latitude_dir~%string longitude_dir~%~%GpsStatus gps_quality~%~%uint32 num_sats~%float32 hdop ~%float32 altitude~%string altitude_units~%~%float32 undulation~%string undulation_units~%uint32 diff_age~%string station_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsStatus~%uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gpgga>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'message_id))
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'latitude_dir))
     4 (cl:length (cl:slot-value msg 'longitude_dir))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps_quality))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'altitude_units))
     4
     4 (cl:length (cl:slot-value msg 'undulation_units))
     4
     4 (cl:length (cl:slot-value msg 'station_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gpgga>))
  "Converts a ROS message object to a list"
  (cl:list 'Gpgga
    (cl:cons ':header (header msg))
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':utc_seconds (utc_seconds msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude_dir (latitude_dir msg))
    (cl:cons ':longitude_dir (longitude_dir msg))
    (cl:cons ':gps_quality (gps_quality msg))
    (cl:cons ':num_sats (num_sats msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':altitude_units (altitude_units msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':undulation_units (undulation_units msg))
    (cl:cons ':diff_age (diff_age msg))
    (cl:cons ':station_id (station_id msg))
))
