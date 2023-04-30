; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Range.msg.html

(cl:defclass <Range> (roslisp-msg-protocol:ros-message)
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
   (numb_of_observ
    :reader numb_of_observ
    :initarg :numb_of_observ
    :type cl:integer
    :initform 0)
   (info
    :reader info
    :initarg :info
    :type (cl:vector mrs_msgs-msg:RangeInformation)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:RangeInformation :initial-element (cl:make-instance 'mrs_msgs-msg:RangeInformation))))
)

(cl:defclass Range (<Range>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Range>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Range)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Range> is deprecated: use mrs_msgs-msg:Range instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tersus_msg_header-val :lambda-list '(m))
(cl:defmethod tersus_msg_header-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:tersus_msg_header-val is deprecated.  Use mrs_msgs-msg:tersus_msg_header instead.")
  (tersus_msg_header m))

(cl:ensure-generic-function 'numb_of_observ-val :lambda-list '(m))
(cl:defmethod numb_of_observ-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:numb_of_observ-val is deprecated.  Use mrs_msgs-msg:numb_of_observ instead.")
  (numb_of_observ m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:info-val is deprecated.  Use mrs_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Range>) ostream)
  "Serializes a message object of type '<Range>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tersus_msg_header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'numb_of_observ)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Range>) istream)
  "Deserializes a message object of type '<Range>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tersus_msg_header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numb_of_observ) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:RangeInformation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Range>)))
  "Returns string type for a message object of type '<Range>"
  "mrs_msgs/Range")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Range)))
  "Returns string type for a message object of type 'Range"
  "mrs_msgs/Range")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Range>)))
  "Returns md5sum for a message object of type '<Range>"
  "6f8bff0e61f983e7883647ba50e7b66d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Range)))
  "Returns md5sum for a message object of type 'Range"
  "6f8bff0e61f983e7883647ba50e7b66d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Range>)))
  "Returns full string definition for message of type '<Range>"
  (cl:format cl:nil "#Satellite Range information from Tersus receiver~%~%Header header~%~%TersusMessageHeader tersus_msg_header~%~%#number of observations~%int32 numb_of_observ~%~%#range information for the observed ~%RangeInformation[] info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/TersusMessageHeader~%# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%================================================================================~%MSG: mrs_msgs/RangeInformation~%#Satellite Range information structure used in range messages~%~%#Satelite PRN number of range measurement~%uint16 prn_number~%~%#GLONASS Frequency~%uint16 glofreq~%~%#Pseudorange measurement(m)~%float64 psr~%~%#Pseudorange measurement standard deviation(m)~%float32 psr_std~%~%#Carrier phase, in cycles~%float64 adr~%~%#Estimated carrier phase standard deviation(cycles)~%float32 adr_std~%~%#Instantaneous carrier Doppler frequency(Hz)~%float32 dopp~%~%#Carrier to noise density ratio~%float32 noise_density_ratio~%~%## of seconds of continous tracking~%float32 locktime~%~%#Tracking status~%uint32 tracking_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Range)))
  "Returns full string definition for message of type 'Range"
  (cl:format cl:nil "#Satellite Range information from Tersus receiver~%~%Header header~%~%TersusMessageHeader tersus_msg_header~%~%#number of observations~%int32 numb_of_observ~%~%#range information for the observed ~%RangeInformation[] info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/TersusMessageHeader~%# This is modified version from Novatel~%# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html~%# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf~%# See section 1.5 in the Tersus manual.~%# --------------------------------------------------------------------------------------~%~%# On the wire, this header is preceeded by three sync bytes,~%# which are 0xAA 0x44 0x12, and a uint8 which is the header length.~%~%# Measurement source, format, response bit.~%string message_name~%~%string port_address~%~%uint16 sequence~%~%float32 idle_time~%~%# Table 1 in the Tersus manual.~%string time_status~%~%uint16 gps_week~%float32 gps_week_seconds~%~%uint32 receiver_status~%uint16 software_version~%~%================================================================================~%MSG: mrs_msgs/RangeInformation~%#Satellite Range information structure used in range messages~%~%#Satelite PRN number of range measurement~%uint16 prn_number~%~%#GLONASS Frequency~%uint16 glofreq~%~%#Pseudorange measurement(m)~%float64 psr~%~%#Pseudorange measurement standard deviation(m)~%float32 psr_std~%~%#Carrier phase, in cycles~%float64 adr~%~%#Estimated carrier phase standard deviation(cycles)~%float32 adr_std~%~%#Instantaneous carrier Doppler frequency(Hz)~%float32 dopp~%~%#Carrier to noise density ratio~%float32 noise_density_ratio~%~%## of seconds of continous tracking~%float32 locktime~%~%#Tracking status~%uint32 tracking_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Range>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tersus_msg_header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Range>))
  "Converts a ROS message object to a list"
  (cl:list 'Range
    (cl:cons ':header (header msg))
    (cl:cons ':tersus_msg_header (tersus_msg_header msg))
    (cl:cons ':numb_of_observ (numb_of_observ msg))
    (cl:cons ':info (info msg))
))
