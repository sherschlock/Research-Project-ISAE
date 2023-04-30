; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude UavManagerDiagnostics.msg.html

(cl:defclass <UavManagerDiagnostics> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (uav_name
    :reader uav_name
    :initarg :uav_name
    :type cl:string
    :initform "")
   (home_latitude
    :reader home_latitude
    :initarg :home_latitude
    :type cl:float
    :initform 0.0)
   (home_longitude
    :reader home_longitude
    :initarg :home_longitude
    :type cl:float
    :initform 0.0)
   (cur_latitude
    :reader cur_latitude
    :initarg :cur_latitude
    :type cl:float
    :initform 0.0)
   (cur_longitude
    :reader cur_longitude
    :initarg :cur_longitude
    :type cl:float
    :initform 0.0)
   (flight_time
    :reader flight_time
    :initarg :flight_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass UavManagerDiagnostics (<UavManagerDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavManagerDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavManagerDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<UavManagerDiagnostics> is deprecated: use mrs_msgs-msg:UavManagerDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <UavManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'uav_name-val :lambda-list '(m))
(cl:defmethod uav_name-val ((m <UavManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:uav_name-val is deprecated.  Use mrs_msgs-msg:uav_name instead.")
  (uav_name m))

(cl:ensure-generic-function 'home_latitude-val :lambda-list '(m))
(cl:defmethod home_latitude-val ((m <UavManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:home_latitude-val is deprecated.  Use mrs_msgs-msg:home_latitude instead.")
  (home_latitude m))

(cl:ensure-generic-function 'home_longitude-val :lambda-list '(m))
(cl:defmethod home_longitude-val ((m <UavManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:home_longitude-val is deprecated.  Use mrs_msgs-msg:home_longitude instead.")
  (home_longitude m))

(cl:ensure-generic-function 'cur_latitude-val :lambda-list '(m))
(cl:defmethod cur_latitude-val ((m <UavManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cur_latitude-val is deprecated.  Use mrs_msgs-msg:cur_latitude instead.")
  (cur_latitude m))

(cl:ensure-generic-function 'cur_longitude-val :lambda-list '(m))
(cl:defmethod cur_longitude-val ((m <UavManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cur_longitude-val is deprecated.  Use mrs_msgs-msg:cur_longitude instead.")
  (cur_longitude m))

(cl:ensure-generic-function 'flight_time-val :lambda-list '(m))
(cl:defmethod flight_time-val ((m <UavManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:flight_time-val is deprecated.  Use mrs_msgs-msg:flight_time instead.")
  (flight_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavManagerDiagnostics>) ostream)
  "Serializes a message object of type '<UavManagerDiagnostics>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'home_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'home_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'flight_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavManagerDiagnostics>) istream)
  "Deserializes a message object of type '<UavManagerDiagnostics>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uav_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'home_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'home_longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flight_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavManagerDiagnostics>)))
  "Returns string type for a message object of type '<UavManagerDiagnostics>"
  "mrs_msgs/UavManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavManagerDiagnostics)))
  "Returns string type for a message object of type 'UavManagerDiagnostics"
  "mrs_msgs/UavManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavManagerDiagnostics>)))
  "Returns md5sum for a message object of type '<UavManagerDiagnostics>"
  "36596a45f051bddf37b9b0dd00de0c80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavManagerDiagnostics)))
  "Returns md5sum for a message object of type 'UavManagerDiagnostics"
  "36596a45f051bddf37b9b0dd00de0c80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavManagerDiagnostics>)))
  "Returns full string definition for message of type '<UavManagerDiagnostics>"
  (cl:format cl:nil "# This reports on the state of the UavManager~%~%time stamp~%~%string uav_name~%~%# home position latitude and longitude, if available~%float64 home_latitude~%float64 home_longitude~%~%# current latitude and longitude, if available~%float64 cur_latitude~%float64 cur_longitude~%~%float64 flight_time # [s]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavManagerDiagnostics)))
  "Returns full string definition for message of type 'UavManagerDiagnostics"
  (cl:format cl:nil "# This reports on the state of the UavManager~%~%time stamp~%~%string uav_name~%~%# home position latitude and longitude, if available~%float64 home_latitude~%float64 home_longitude~%~%# current latitude and longitude, if available~%float64 cur_latitude~%float64 cur_longitude~%~%float64 flight_time # [s]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavManagerDiagnostics>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'uav_name))
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavManagerDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'UavManagerDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':uav_name (uav_name msg))
    (cl:cons ':home_latitude (home_latitude msg))
    (cl:cons ':home_longitude (home_longitude msg))
    (cl:cons ':cur_latitude (cur_latitude msg))
    (cl:cons ':cur_longitude (cur_longitude msg))
    (cl:cons ':flight_time (flight_time msg))
))
