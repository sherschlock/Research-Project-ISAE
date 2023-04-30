; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Bestpos.msg.html

(cl:defclass <Bestpos> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tersus_msg_header
    :reader tersus_msg_header
    :initarg :tersus_msg_header
    :type mrs_msgs-msg:TersusMessageHeader
    :initform (cl:make-instance 'mrs_msgs-msg:TersusMessageHeader))
   (solution_status
    :reader solution_status
    :initarg :solution_status
    :type cl:string
    :initform "")
   (position_type
    :reader position_type
    :initarg :position_type
    :type cl:string
    :initform "")
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
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (undulation
    :reader undulation
    :initarg :undulation
    :type cl:float
    :initform 0.0)
   (datum_id
    :reader datum_id
    :initarg :datum_id
    :type cl:string
    :initform "")
   (latitude_std
    :reader latitude_std
    :initarg :latitude_std
    :type cl:float
    :initform 0.0)
   (longitude_std
    :reader longitude_std
    :initarg :longitude_std
    :type cl:float
    :initform 0.0)
   (height_std
    :reader height_std
    :initarg :height_std
    :type cl:float
    :initform 0.0)
   (base_station_id
    :reader base_station_id
    :initarg :base_station_id
    :type cl:string
    :initform "")
   (diff_age
    :reader diff_age
    :initarg :diff_age
    :type cl:float
    :initform 0.0)
   (solution_age
    :reader solution_age
    :initarg :solution_age
    :type cl:float
    :initform 0.0)
   (num_satellites_tracked
    :reader num_satellites_tracked
    :initarg :num_satellites_tracked
    :type cl:fixnum
    :initform 0)
   (num_satellites_used_in_solution
    :reader num_satellites_used_in_solution
    :initarg :num_satellites_used_in_solution
    :type cl:fixnum
    :initform 0)
   (num_gps_and_glonass_l1_used_in_solution
    :reader num_gps_and_glonass_l1_used_in_solution
    :initarg :num_gps_and_glonass_l1_used_in_solution
    :type cl:fixnum
    :initform 0)
   (num_gps_and_glonass_l1_and_l2_used_in_solution
    :reader num_gps_and_glonass_l1_and_l2_used_in_solution
    :initarg :num_gps_and_glonass_l1_and_l2_used_in_solution
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Bestpos (<Bestpos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bestpos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bestpos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Bestpos> is deprecated: use mrs_msgs-msg:Bestpos instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tersus_msg_header-val :lambda-list '(m))
(cl:defmethod tersus_msg_header-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:tersus_msg_header-val is deprecated.  Use mrs_msgs-msg:tersus_msg_header instead.")
  (tersus_msg_header m))

(cl:ensure-generic-function 'solution_status-val :lambda-list '(m))
(cl:defmethod solution_status-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:solution_status-val is deprecated.  Use mrs_msgs-msg:solution_status instead.")
  (solution_status m))

(cl:ensure-generic-function 'position_type-val :lambda-list '(m))
(cl:defmethod position_type-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position_type-val is deprecated.  Use mrs_msgs-msg:position_type instead.")
  (position_type m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latitude-val is deprecated.  Use mrs_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:longitude-val is deprecated.  Use mrs_msgs-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:height-val is deprecated.  Use mrs_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'undulation-val :lambda-list '(m))
(cl:defmethod undulation-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:undulation-val is deprecated.  Use mrs_msgs-msg:undulation instead.")
  (undulation m))

(cl:ensure-generic-function 'datum_id-val :lambda-list '(m))
(cl:defmethod datum_id-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:datum_id-val is deprecated.  Use mrs_msgs-msg:datum_id instead.")
  (datum_id m))

(cl:ensure-generic-function 'latitude_std-val :lambda-list '(m))
(cl:defmethod latitude_std-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latitude_std-val is deprecated.  Use mrs_msgs-msg:latitude_std instead.")
  (latitude_std m))

(cl:ensure-generic-function 'longitude_std-val :lambda-list '(m))
(cl:defmethod longitude_std-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:longitude_std-val is deprecated.  Use mrs_msgs-msg:longitude_std instead.")
  (longitude_std m))

(cl:ensure-generic-function 'height_std-val :lambda-list '(m))
(cl:defmethod height_std-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:height_std-val is deprecated.  Use mrs_msgs-msg:height_std instead.")
  (height_std m))

(cl:ensure-generic-function 'base_station_id-val :lambda-list '(m))
(cl:defmethod base_station_id-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:base_station_id-val is deprecated.  Use mrs_msgs-msg:base_station_id instead.")
  (base_station_id m))

(cl:ensure-generic-function 'diff_age-val :lambda-list '(m))
(cl:defmethod diff_age-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:diff_age-val is deprecated.  Use mrs_msgs-msg:diff_age instead.")
  (diff_age m))

(cl:ensure-generic-function 'solution_age-val :lambda-list '(m))
(cl:defmethod solution_age-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:solution_age-val is deprecated.  Use mrs_msgs-msg:solution_age instead.")
  (solution_age m))

(cl:ensure-generic-function 'num_satellites_tracked-val :lambda-list '(m))
(cl:defmethod num_satellites_tracked-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_satellites_tracked-val is deprecated.  Use mrs_msgs-msg:num_satellites_tracked instead.")
  (num_satellites_tracked m))

(cl:ensure-generic-function 'num_satellites_used_in_solution-val :lambda-list '(m))
(cl:defmethod num_satellites_used_in_solution-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_satellites_used_in_solution-val is deprecated.  Use mrs_msgs-msg:num_satellites_used_in_solution instead.")
  (num_satellites_used_in_solution m))

(cl:ensure-generic-function 'num_gps_and_glonass_l1_used_in_solution-val :lambda-list '(m))
(cl:defmethod num_gps_and_glonass_l1_used_in_solution-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_gps_and_glonass_l1_used_in_solution-val is deprecated.  Use mrs_msgs-msg:num_gps_and_glonass_l1_used_in_solution instead.")
  (num_gps_and_glonass_l1_used_in_solution m))

(cl:ensure-generic-function 'num_gps_and_glonass_l1_and_l2_used_in_solution-val :lambda-list '(m))
(cl:defmethod num_gps_and_glonass_l1_and_l2_used_in_solution-val ((m <Bestpos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_gps_and_glonass_l1_and_l2_used_in_solution-val is deprecated.  Use mrs_msgs-msg:num_gps_and_glonass_l1_and_l2_used_in_solution instead.")
  (num_gps_and_glonass_l1_and_l2_used_in_solution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bestpos>) ostream)
  "Serializes a message object of type '<Bestpos>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tersus_msg_header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'solution_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'solution_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position_type))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'undulation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'datum_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'datum_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_station_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_station_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'diff_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'solution_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_tracked)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_used_in_solution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_and_glonass_l1_used_in_solution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_and_glonass_l1_and_l2_used_in_solution)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bestpos>) istream)
  "Deserializes a message object of type '<Bestpos>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tersus_msg_header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'solution_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
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
      (cl:setf (cl:slot-value msg 'datum_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'datum_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_station_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_station_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'solution_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_tracked)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_satellites_used_in_solution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_and_glonass_l1_used_in_solution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_gps_and_glonass_l1_and_l2_used_in_solution)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bestpos>)))
  "Returns string type for a message object of type '<Bestpos>"
  "mrs_msgs/Bestpos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bestpos)))
  "Returns string type for a message object of type 'Bestpos"
  "mrs_msgs/Bestpos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bestpos>)))
  "Returns md5sum for a message object of type '<Bestpos>"
  "842f440d0b9e96e1173ab70db85161dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bestpos)))
  "Returns md5sum for a message object of type 'Bestpos"
  "842f440d0b9e96e1173ab70db85161dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bestpos>)))
  "Returns full string definition for message of type '<Bestpos>"
  (cl:format cl:nil "# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/BESTPOS.html~%# For Tersus see section 3.1.3 BESTPOS in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# --------------------------------------------------------------------------------------~%~%Header header~%~%# message 42~%TersusMessageHeader tersus_msg_header~%~%string solution_status~%string position_type~%~%float64 latitude  # (degrees) ~%float64 longitude # (degrees) ~%float64 height    # Height above mean sea level (meters)~%~%float32 undulation  # Undulation - the relationship between the geoid and the ellipsoid (m) of the chosen datum~%string datum_id~%~%float32 latitude_std  # Latitude standard deviation (m) ~%float32 longitude_std # Longitude standard deviation (m) ~%float32 height_std    # Height standard deviation (m) ~%~%string base_station_id   # Base station ID~%~%float32 diff_age      # Differential age in seconds~%float32 solution_age  # Solution age in seconds~%~%uint8 num_satellites_tracked                          # Number of satellites tracked~%uint8 num_satellites_used_in_solution                 # Number of satellites used in solution ~%uint8 num_gps_and_glonass_l1_used_in_solution         # Number of satellites with L1/E1/B1 signals used in solution~%uint8 num_gps_and_glonass_l1_and_l2_used_in_solution  # Number of satellites with multi-frequency signals used in solution~%# TODO: define the rest of the message if it is necessary~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/TersusMessageHeader~%# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bestpos)))
  "Returns full string definition for message of type 'Bestpos"
  (cl:format cl:nil "# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/BESTPOS.html~%# For Tersus see section 3.1.3 BESTPOS in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# --------------------------------------------------------------------------------------~%~%Header header~%~%# message 42~%TersusMessageHeader tersus_msg_header~%~%string solution_status~%string position_type~%~%float64 latitude  # (degrees) ~%float64 longitude # (degrees) ~%float64 height    # Height above mean sea level (meters)~%~%float32 undulation  # Undulation - the relationship between the geoid and the ellipsoid (m) of the chosen datum~%string datum_id~%~%float32 latitude_std  # Latitude standard deviation (m) ~%float32 longitude_std # Longitude standard deviation (m) ~%float32 height_std    # Height standard deviation (m) ~%~%string base_station_id   # Base station ID~%~%float32 diff_age      # Differential age in seconds~%float32 solution_age  # Solution age in seconds~%~%uint8 num_satellites_tracked                          # Number of satellites tracked~%uint8 num_satellites_used_in_solution                 # Number of satellites used in solution ~%uint8 num_gps_and_glonass_l1_used_in_solution         # Number of satellites with L1/E1/B1 signals used in solution~%uint8 num_gps_and_glonass_l1_and_l2_used_in_solution  # Number of satellites with multi-frequency signals used in solution~%# TODO: define the rest of the message if it is necessary~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/TersusMessageHeader~%# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bestpos>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tersus_msg_header))
     4 (cl:length (cl:slot-value msg 'solution_status))
     4 (cl:length (cl:slot-value msg 'position_type))
     8
     8
     8
     4
     4 (cl:length (cl:slot-value msg 'datum_id))
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'base_station_id))
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bestpos>))
  "Converts a ROS message object to a list"
  (cl:list 'Bestpos
    (cl:cons ':header (header msg))
    (cl:cons ':tersus_msg_header (tersus_msg_header msg))
    (cl:cons ':solution_status (solution_status msg))
    (cl:cons ':position_type (position_type msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':height (height msg))
    (cl:cons ':undulation (undulation msg))
    (cl:cons ':datum_id (datum_id msg))
    (cl:cons ':latitude_std (latitude_std msg))
    (cl:cons ':longitude_std (longitude_std msg))
    (cl:cons ':height_std (height_std msg))
    (cl:cons ':base_station_id (base_station_id msg))
    (cl:cons ':diff_age (diff_age msg))
    (cl:cons ':solution_age (solution_age msg))
    (cl:cons ':num_satellites_tracked (num_satellites_tracked msg))
    (cl:cons ':num_satellites_used_in_solution (num_satellites_used_in_solution msg))
    (cl:cons ':num_gps_and_glonass_l1_used_in_solution (num_gps_and_glonass_l1_used_in_solution msg))
    (cl:cons ':num_gps_and_glonass_l1_and_l2_used_in_solution (num_gps_and_glonass_l1_and_l2_used_in_solution msg))
))
