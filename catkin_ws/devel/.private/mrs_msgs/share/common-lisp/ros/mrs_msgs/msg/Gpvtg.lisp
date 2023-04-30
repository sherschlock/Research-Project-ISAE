; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Gpvtg.msg.html

(cl:defclass <Gpvtg> (roslisp-msg-protocol:ros-message)
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
   (track_true
    :reader track_true
    :initarg :track_true
    :type cl:float
    :initform 0.0)
   (track_true_indicator
    :reader track_true_indicator
    :initarg :track_true_indicator
    :type cl:string
    :initform "")
   (track_mag
    :reader track_mag
    :initarg :track_mag
    :type cl:float
    :initform 0.0)
   (track_mag_indicator
    :reader track_mag_indicator
    :initarg :track_mag_indicator
    :type cl:string
    :initform "")
   (speed_knots
    :reader speed_knots
    :initarg :speed_knots
    :type cl:float
    :initform 0.0)
   (speed_knots_indicator
    :reader speed_knots_indicator
    :initarg :speed_knots_indicator
    :type cl:string
    :initform "")
   (speed_kmh
    :reader speed_kmh
    :initarg :speed_kmh
    :type cl:float
    :initform 0.0)
   (speed_kmh_indicator
    :reader speed_kmh_indicator
    :initarg :speed_kmh_indicator
    :type cl:string
    :initform "")
   (mode_indicator
    :reader mode_indicator
    :initarg :mode_indicator
    :type cl:string
    :initform ""))
)

(cl:defclass Gpvtg (<Gpvtg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gpvtg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gpvtg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Gpvtg> is deprecated: use mrs_msgs-msg:Gpvtg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:message_id-val is deprecated.  Use mrs_msgs-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'track_true-val :lambda-list '(m))
(cl:defmethod track_true-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:track_true-val is deprecated.  Use mrs_msgs-msg:track_true instead.")
  (track_true m))

(cl:ensure-generic-function 'track_true_indicator-val :lambda-list '(m))
(cl:defmethod track_true_indicator-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:track_true_indicator-val is deprecated.  Use mrs_msgs-msg:track_true_indicator instead.")
  (track_true_indicator m))

(cl:ensure-generic-function 'track_mag-val :lambda-list '(m))
(cl:defmethod track_mag-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:track_mag-val is deprecated.  Use mrs_msgs-msg:track_mag instead.")
  (track_mag m))

(cl:ensure-generic-function 'track_mag_indicator-val :lambda-list '(m))
(cl:defmethod track_mag_indicator-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:track_mag_indicator-val is deprecated.  Use mrs_msgs-msg:track_mag_indicator instead.")
  (track_mag_indicator m))

(cl:ensure-generic-function 'speed_knots-val :lambda-list '(m))
(cl:defmethod speed_knots-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:speed_knots-val is deprecated.  Use mrs_msgs-msg:speed_knots instead.")
  (speed_knots m))

(cl:ensure-generic-function 'speed_knots_indicator-val :lambda-list '(m))
(cl:defmethod speed_knots_indicator-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:speed_knots_indicator-val is deprecated.  Use mrs_msgs-msg:speed_knots_indicator instead.")
  (speed_knots_indicator m))

(cl:ensure-generic-function 'speed_kmh-val :lambda-list '(m))
(cl:defmethod speed_kmh-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:speed_kmh-val is deprecated.  Use mrs_msgs-msg:speed_kmh instead.")
  (speed_kmh m))

(cl:ensure-generic-function 'speed_kmh_indicator-val :lambda-list '(m))
(cl:defmethod speed_kmh_indicator-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:speed_kmh_indicator-val is deprecated.  Use mrs_msgs-msg:speed_kmh_indicator instead.")
  (speed_kmh_indicator m))

(cl:ensure-generic-function 'mode_indicator-val :lambda-list '(m))
(cl:defmethod mode_indicator-val ((m <Gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mode_indicator-val is deprecated.  Use mrs_msgs-msg:mode_indicator instead.")
  (mode_indicator m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gpvtg>) ostream)
  "Serializes a message object of type '<Gpvtg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message_id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'track_true))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'track_true_indicator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'track_true_indicator))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'track_mag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'track_mag_indicator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'track_mag_indicator))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_knots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speed_knots_indicator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speed_knots_indicator))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_kmh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speed_kmh_indicator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speed_kmh_indicator))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode_indicator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode_indicator))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gpvtg>) istream)
  "Deserializes a message object of type '<Gpvtg>"
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
    (cl:setf (cl:slot-value msg 'track_true) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_true_indicator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'track_true_indicator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track_mag) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_mag_indicator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'track_mag_indicator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_knots) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_knots_indicator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speed_knots_indicator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_kmh) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_kmh_indicator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speed_kmh_indicator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gpvtg>)))
  "Returns string type for a message object of type '<Gpvtg>"
  "mrs_msgs/Gpvtg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gpvtg)))
  "Returns string type for a message object of type 'Gpvtg"
  "mrs_msgs/Gpvtg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gpvtg>)))
  "Returns md5sum for a message object of type '<Gpvtg>"
  "0b69a1dd6c8e499d5fb746b8067a62d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gpvtg)))
  "Returns md5sum for a message object of type 'Gpvtg"
  "0b69a1dd6c8e499d5fb746b8067a62d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gpvtg>)))
  "Returns full string definition for message of type '<Gpvtg>"
  (cl:format cl:nil "Header header~%~%string message_id~%~%float64 track_true~%string track_true_indicator~%~%float64 track_mag~%string track_mag_indicator~%~%float64 speed_knots~%string speed_knots_indicator~%~%float64 speed_kmh~%string speed_kmh_indicator~%~%string mode_indicator~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gpvtg)))
  "Returns full string definition for message of type 'Gpvtg"
  (cl:format cl:nil "Header header~%~%string message_id~%~%float64 track_true~%string track_true_indicator~%~%float64 track_mag~%string track_mag_indicator~%~%float64 speed_knots~%string speed_knots_indicator~%~%float64 speed_kmh~%string speed_kmh_indicator~%~%string mode_indicator~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gpvtg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'message_id))
     8
     4 (cl:length (cl:slot-value msg 'track_true_indicator))
     8
     4 (cl:length (cl:slot-value msg 'track_mag_indicator))
     8
     4 (cl:length (cl:slot-value msg 'speed_knots_indicator))
     8
     4 (cl:length (cl:slot-value msg 'speed_kmh_indicator))
     4 (cl:length (cl:slot-value msg 'mode_indicator))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gpvtg>))
  "Converts a ROS message object to a list"
  (cl:list 'Gpvtg
    (cl:cons ':header (header msg))
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':track_true (track_true msg))
    (cl:cons ':track_true_indicator (track_true_indicator msg))
    (cl:cons ':track_mag (track_mag msg))
    (cl:cons ':track_mag_indicator (track_mag_indicator msg))
    (cl:cons ':speed_knots (speed_knots msg))
    (cl:cons ':speed_knots_indicator (speed_knots_indicator msg))
    (cl:cons ':speed_kmh (speed_kmh msg))
    (cl:cons ':speed_kmh_indicator (speed_kmh_indicator msg))
    (cl:cons ':mode_indicator (mode_indicator msg))
))
