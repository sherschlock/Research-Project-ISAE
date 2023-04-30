; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Bestvel.msg.html

(cl:defclass <Bestvel> (roslisp-msg-protocol:ros-message)
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
   (velocity_type
    :reader velocity_type
    :initarg :velocity_type
    :type cl:string
    :initform "")
   (latency
    :reader latency
    :initarg :latency
    :type cl:float
    :initform 0.0)
   (age
    :reader age
    :initarg :age
    :type cl:float
    :initform 0.0)
   (horizontal_speed
    :reader horizontal_speed
    :initarg :horizontal_speed
    :type cl:float
    :initform 0.0)
   (track_ground
    :reader track_ground
    :initarg :track_ground
    :type cl:float
    :initform 0.0)
   (vertical_speed
    :reader vertical_speed
    :initarg :vertical_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass Bestvel (<Bestvel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bestvel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bestvel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Bestvel> is deprecated: use mrs_msgs-msg:Bestvel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tersus_msg_header-val :lambda-list '(m))
(cl:defmethod tersus_msg_header-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:tersus_msg_header-val is deprecated.  Use mrs_msgs-msg:tersus_msg_header instead.")
  (tersus_msg_header m))

(cl:ensure-generic-function 'solution_status-val :lambda-list '(m))
(cl:defmethod solution_status-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:solution_status-val is deprecated.  Use mrs_msgs-msg:solution_status instead.")
  (solution_status m))

(cl:ensure-generic-function 'velocity_type-val :lambda-list '(m))
(cl:defmethod velocity_type-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity_type-val is deprecated.  Use mrs_msgs-msg:velocity_type instead.")
  (velocity_type m))

(cl:ensure-generic-function 'latency-val :lambda-list '(m))
(cl:defmethod latency-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:latency-val is deprecated.  Use mrs_msgs-msg:latency instead.")
  (latency m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:age-val is deprecated.  Use mrs_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'horizontal_speed-val :lambda-list '(m))
(cl:defmethod horizontal_speed-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:horizontal_speed-val is deprecated.  Use mrs_msgs-msg:horizontal_speed instead.")
  (horizontal_speed m))

(cl:ensure-generic-function 'track_ground-val :lambda-list '(m))
(cl:defmethod track_ground-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:track_ground-val is deprecated.  Use mrs_msgs-msg:track_ground instead.")
  (track_ground m))

(cl:ensure-generic-function 'vertical_speed-val :lambda-list '(m))
(cl:defmethod vertical_speed-val ((m <Bestvel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:vertical_speed-val is deprecated.  Use mrs_msgs-msg:vertical_speed instead.")
  (vertical_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bestvel>) ostream)
  "Serializes a message object of type '<Bestvel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tersus_msg_header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'solution_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'solution_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'velocity_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'velocity_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'track_ground))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vertical_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bestvel>) istream)
  "Deserializes a message object of type '<Bestvel>"
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
      (cl:setf (cl:slot-value msg 'velocity_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'velocity_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track_ground) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bestvel>)))
  "Returns string type for a message object of type '<Bestvel>"
  "mrs_msgs/Bestvel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bestvel)))
  "Returns string type for a message object of type 'Bestvel"
  "mrs_msgs/Bestvel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bestvel>)))
  "Returns md5sum for a message object of type '<Bestvel>"
  "02a85bdf86c56792843f3c24e6d61e43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bestvel)))
  "Returns md5sum for a message object of type 'Bestvel"
  "02a85bdf86c56792843f3c24e6d61e43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bestvel>)))
  "Returns full string definition for message of type '<Bestvel>"
  (cl:format cl:nil "# See section 3.1.4 BESTVEL in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# --------------------------------------------------------------------------------------~%~%Header header~%~%# message 99~%TersusMessageHeader tersus_msg_header~%~%string solution_status~%string velocity_type~%~%# A measure of the latency in the velocity time tag in seconds.~%float32 latency~%~%# Differential age in seconds~%float32 age~%~%# Horizontal speed over ground, meters/second~%float64 horizontal_speed~%~%# Direction of motion over ground with respect to true North, degrees~%float64 track_ground~%~%# Vertical speed, where positive values correspond to increasing altitude, meters/second~%float64 vertical_speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/TersusMessageHeader~%# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bestvel)))
  "Returns full string definition for message of type 'Bestvel"
  (cl:format cl:nil "# See section 3.1.4 BESTVEL in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# --------------------------------------------------------------------------------------~%~%Header header~%~%# message 99~%TersusMessageHeader tersus_msg_header~%~%string solution_status~%string velocity_type~%~%# A measure of the latency in the velocity time tag in seconds.~%float32 latency~%~%# Differential age in seconds~%float32 age~%~%# Horizontal speed over ground, meters/second~%float64 horizontal_speed~%~%# Direction of motion over ground with respect to true North, degrees~%float64 track_ground~%~%# Vertical speed, where positive values correspond to increasing altitude, meters/second~%float64 vertical_speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/TersusMessageHeader~%# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bestvel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tersus_msg_header))
     4 (cl:length (cl:slot-value msg 'solution_status))
     4 (cl:length (cl:slot-value msg 'velocity_type))
     4
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bestvel>))
  "Converts a ROS message object to a list"
  (cl:list 'Bestvel
    (cl:cons ':header (header msg))
    (cl:cons ':tersus_msg_header (tersus_msg_header msg))
    (cl:cons ':solution_status (solution_status msg))
    (cl:cons ':velocity_type (velocity_type msg))
    (cl:cons ':latency (latency msg))
    (cl:cons ':age (age msg))
    (cl:cons ':horizontal_speed (horizontal_speed msg))
    (cl:cons ':track_ground (track_ground msg))
    (cl:cons ':vertical_speed (vertical_speed msg))
))
