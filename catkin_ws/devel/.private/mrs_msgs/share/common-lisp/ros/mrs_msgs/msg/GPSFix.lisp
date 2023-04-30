; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude GPSFix.msg.html

(cl:defclass <GPSFix> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num_satellites_used_in_solution
    :reader num_satellites_used_in_solution
    :initarg :num_satellites_used_in_solution
    :type cl:fixnum
    :initform 0)
   (num_satellites_tracked
    :reader num_satellites_tracked
    :initarg :num_satellites_tracked
    :type cl:fixnum
    :initform 0)
   (status
    :reader status
    :initarg :status
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
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (track
    :reader track
    :initarg :track
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0)
   (position_covariance
    :reader position_covariance
    :initarg :position_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (position_covariance_type
    :reader position_covariance_type
    :initarg :position_covariance_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GPSFix (<GPSFix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSFix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSFix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<GPSFix> is deprecated: use mrs_msgs-msg:GPSFix instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_satellites_used_in_solution-val :lambda-list '(m))
(cl:defmethod num_satellites_used_in_solution-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_satellites_used_in_solution-val is deprecated.  Use mrs_msgs-msg:num_satellites_used_in_solution instead.")
  (num_satellites_used_in_solution m))

(cl:ensure-generic-function 'num_satellites_tracked-val :lambda-list '(m))
(cl:defmethod num_satellites_tracked-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_satellites_tracked-val is deprecated.  Use mrs_msgs-msg:num_satellites_tracked instead.")
  (num_satellites_tracked m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:status-val is deprecated.  Use mrs_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latitude-val is deprecated.  Use mrs_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:longitude-val is deprecated.  Use mrs_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:altitude-val is deprecated.  Use mrs_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:track-val is deprecated.  Use mrs_msgs-msg:track instead.")
  (track m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:speed-val is deprecated.  Use mrs_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:time-val is deprecated.  Use mrs_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:hdop-val is deprecated.  Use mrs_msgs-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'position_covariance-val :lambda-list '(m))
(cl:defmethod position_covariance-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position_covariance-val is deprecated.  Use mrs_msgs-msg:position_covariance instead.")
  (position_covariance m))

(cl:ensure-generic-function 'position_covariance_type-val :lambda-list '(m))
(cl:defmethod position_covariance_type-val ((m <GPSFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position_covariance_type-val is deprecated.  Use mrs_msgs-msg:position_covariance_type instead.")
  (position_covariance_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GPSFix>)))
    "Constants for message type '<GPSFix>"
  '((:COVARIANCE_TYPE_UNKNOWN . 0)
    (:COVARIANCE_TYPE_APPROXIMATED . 1)
    (:COVARIANCE_TYPE_DIAGONAL_KNOWN . 2)
    (:COVARIANCE_TYPE_KNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GPSFix)))
    "Constants for message type 'GPSFix"
  '((:COVARIANCE_TYPE_UNKNOWN . 0)
    (:COVARIANCE_TYPE_APPROXIMATED . 1)
    (:COVARIANCE_TYPE_DIAGONAL_KNOWN . 2)
    (:COVARIANCE_TYPE_KNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSFix>) ostream)
  "Serializes a message object of type '<GPSFix>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_used_in_solution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_tracked)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'track))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position_covariance))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_covariance_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSFix>) istream)
  "Deserializes a message object of type '<GPSFix>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_used_in_solution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_tracked)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
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
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hdop) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'position_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'position_covariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_covariance_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSFix>)))
  "Returns string type for a message object of type '<GPSFix>"
  "mrs_msgs/GPSFix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSFix)))
  "Returns string type for a message object of type 'GPSFix"
  "mrs_msgs/GPSFix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSFix>)))
  "Returns md5sum for a message object of type '<GPSFix>"
  "bd06547699b65b25dfcdf16f98e57651")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSFix)))
  "Returns md5sum for a message object of type 'GPSFix"
  "bd06547699b65b25dfcdf16f98e57651")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSFix>)))
  "Returns full string definition for message of type '<GPSFix>"
  (cl:format cl:nil "# A more complete GPS fix to supplement sensor_msgs/NavSatFix.~%# modified version of http://docs.ros.org/kinetic/api/gps_common/html/msg/GPSFix.html~%Header header~%~%# Satellites used in solution~%uint8 num_satellites_used_in_solution # Number of satellites~%~%# Satellites visible~%uint8 num_satellites_tracked~%~%# Measurement status~%GpsStatus status~%~%# Latitude (degrees). Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude (degrees). Positive is east of prime meridian, negative west.~%float32 longitude~%~%# Altitude (meters). Positive is above reference (e.g., sea level).~%float64 altitude~%~%# Direction (degrees from north)~%float64 track~%~%# Ground speed (meters/second)~%float64 speed~%~%# GPS time~%float64 time~%~%## Dilution of precision; Xdop<=0 means the value is unknown~%~%# Horizontal dilution of precision~%float32 hdop~%~%## Uncertainty of measurement, 95% confidence~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%~%float64[9] position_covariance~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%uint8 position_covariance_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsStatus~%uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSFix)))
  "Returns full string definition for message of type 'GPSFix"
  (cl:format cl:nil "# A more complete GPS fix to supplement sensor_msgs/NavSatFix.~%# modified version of http://docs.ros.org/kinetic/api/gps_common/html/msg/GPSFix.html~%Header header~%~%# Satellites used in solution~%uint8 num_satellites_used_in_solution # Number of satellites~%~%# Satellites visible~%uint8 num_satellites_tracked~%~%# Measurement status~%GpsStatus status~%~%# Latitude (degrees). Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude (degrees). Positive is east of prime meridian, negative west.~%float32 longitude~%~%# Altitude (meters). Positive is above reference (e.g., sea level).~%float64 altitude~%~%# Direction (degrees from north)~%float64 track~%~%# Ground speed (meters/second)~%float64 speed~%~%# GPS time~%float64 time~%~%## Dilution of precision; Xdop<=0 means the value is unknown~%~%# Horizontal dilution of precision~%float32 hdop~%~%## Uncertainty of measurement, 95% confidence~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%~%float64[9] position_covariance~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%uint8 position_covariance_type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/GpsStatus~%uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSFix>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     8
     4
     8
     8
     8
     8
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSFix>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSFix
    (cl:cons ':header (header msg))
    (cl:cons ':num_satellites_used_in_solution (num_satellites_used_in_solution msg))
    (cl:cons ':num_satellites_tracked (num_satellites_tracked msg))
    (cl:cons ':status (status msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':track (track msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':time (time msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':position_covariance (position_covariance msg))
    (cl:cons ':position_covariance_type (position_covariance_type msg))
))
