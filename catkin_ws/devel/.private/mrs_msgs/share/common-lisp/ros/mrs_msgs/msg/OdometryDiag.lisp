; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude OdometryDiag.msg.html

(cl:defclass <OdometryDiag> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (max_altitude
    :reader max_altitude
    :initarg :max_altitude
    :type cl:float
    :initform 0.0)
   (estimator_type
    :reader estimator_type
    :initarg :estimator_type
    :type mrs_msgs-msg:EstimatorType
    :initform (cl:make-instance 'mrs_msgs-msg:EstimatorType))
   (heading_type
    :reader heading_type
    :initarg :heading_type
    :type mrs_msgs-msg:HeadingType
    :initform (cl:make-instance 'mrs_msgs-msg:HeadingType))
   (altitude_type
    :reader altitude_type
    :initarg :altitude_type
    :type mrs_msgs-msg:AltitudeType
    :initform (cl:make-instance 'mrs_msgs-msg:AltitudeType))
   (available_lat_estimators
    :reader available_lat_estimators
    :initarg :available_lat_estimators
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (available_hdg_estimators
    :reader available_hdg_estimators
    :initarg :available_hdg_estimators
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (available_alt_estimators
    :reader available_alt_estimators
    :initarg :available_alt_estimators
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass OdometryDiag (<OdometryDiag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdometryDiag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdometryDiag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<OdometryDiag> is deprecated: use mrs_msgs-msg:OdometryDiag instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'max_altitude-val :lambda-list '(m))
(cl:defmethod max_altitude-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:max_altitude-val is deprecated.  Use mrs_msgs-msg:max_altitude instead.")
  (max_altitude m))

(cl:ensure-generic-function 'estimator_type-val :lambda-list '(m))
(cl:defmethod estimator_type-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:estimator_type-val is deprecated.  Use mrs_msgs-msg:estimator_type instead.")
  (estimator_type m))

(cl:ensure-generic-function 'heading_type-val :lambda-list '(m))
(cl:defmethod heading_type-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heading_type-val is deprecated.  Use mrs_msgs-msg:heading_type instead.")
  (heading_type m))

(cl:ensure-generic-function 'altitude_type-val :lambda-list '(m))
(cl:defmethod altitude_type-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:altitude_type-val is deprecated.  Use mrs_msgs-msg:altitude_type instead.")
  (altitude_type m))

(cl:ensure-generic-function 'available_lat_estimators-val :lambda-list '(m))
(cl:defmethod available_lat_estimators-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:available_lat_estimators-val is deprecated.  Use mrs_msgs-msg:available_lat_estimators instead.")
  (available_lat_estimators m))

(cl:ensure-generic-function 'available_hdg_estimators-val :lambda-list '(m))
(cl:defmethod available_hdg_estimators-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:available_hdg_estimators-val is deprecated.  Use mrs_msgs-msg:available_hdg_estimators instead.")
  (available_hdg_estimators m))

(cl:ensure-generic-function 'available_alt_estimators-val :lambda-list '(m))
(cl:defmethod available_alt_estimators-val ((m <OdometryDiag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:available_alt_estimators-val is deprecated.  Use mrs_msgs-msg:available_alt_estimators instead.")
  (available_alt_estimators m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdometryDiag>) ostream)
  "Serializes a message object of type '<OdometryDiag>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heading_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'altitude_type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_lat_estimators))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'available_lat_estimators))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_hdg_estimators))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'available_hdg_estimators))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_alt_estimators))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'available_alt_estimators))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdometryDiag>) istream)
  "Deserializes a message object of type '<OdometryDiag>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_altitude) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heading_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'altitude_type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available_lat_estimators) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_lat_estimators)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available_hdg_estimators) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_hdg_estimators)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available_alt_estimators) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_alt_estimators)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdometryDiag>)))
  "Returns string type for a message object of type '<OdometryDiag>"
  "mrs_msgs/OdometryDiag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdometryDiag)))
  "Returns string type for a message object of type 'OdometryDiag"
  "mrs_msgs/OdometryDiag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdometryDiag>)))
  "Returns md5sum for a message object of type '<OdometryDiag>"
  "b3eedf113f8464b7a0aafebba055d3cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdometryDiag)))
  "Returns md5sum for a message object of type 'OdometryDiag"
  "b3eedf113f8464b7a0aafebba055d3cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdometryDiag>)))
  "Returns full string definition for message of type '<OdometryDiag>"
  (cl:format cl:nil "std_msgs/Header header~%float64 max_altitude~%mrs_msgs/EstimatorType estimator_type~%mrs_msgs/HeadingType heading_type~%mrs_msgs/AltitudeType altitude_type~%string[] available_lat_estimators~%string[] available_hdg_estimators~%string[] available_alt_estimators~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdometryDiag)))
  "Returns full string definition for message of type 'OdometryDiag"
  (cl:format cl:nil "std_msgs/Header header~%float64 max_altitude~%mrs_msgs/EstimatorType estimator_type~%mrs_msgs/HeadingType heading_type~%mrs_msgs/AltitudeType altitude_type~%string[] available_lat_estimators~%string[] available_hdg_estimators~%string[] available_alt_estimators~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdometryDiag>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heading_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'altitude_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_lat_estimators) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_hdg_estimators) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_alt_estimators) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdometryDiag>))
  "Converts a ROS message object to a list"
  (cl:list 'OdometryDiag
    (cl:cons ':header (header msg))
    (cl:cons ':max_altitude (max_altitude msg))
    (cl:cons ':estimator_type (estimator_type msg))
    (cl:cons ':heading_type (heading_type msg))
    (cl:cons ':altitude_type (altitude_type msg))
    (cl:cons ':available_lat_estimators (available_lat_estimators msg))
    (cl:cons ':available_hdg_estimators (available_hdg_estimators msg))
    (cl:cons ':available_alt_estimators (available_alt_estimators msg))
))
