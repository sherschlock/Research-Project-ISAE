; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude TarotGimbalState.msg.html

(cl:defclass <TarotGimbalState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gimbal_tilt
    :reader gimbal_tilt
    :initarg :gimbal_tilt
    :type cl:fixnum
    :initform 0)
   (gimbal_pan
    :reader gimbal_pan
    :initarg :gimbal_pan
    :type cl:fixnum
    :initform 0)
   (is_on
    :reader is_on
    :initarg :is_on
    :type cl:boolean
    :initform cl:nil)
   (fpv_mode
    :reader fpv_mode
    :initarg :fpv_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TarotGimbalState (<TarotGimbalState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TarotGimbalState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TarotGimbalState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<TarotGimbalState> is deprecated: use mrs_msgs-msg:TarotGimbalState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TarotGimbalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gimbal_tilt-val :lambda-list '(m))
(cl:defmethod gimbal_tilt-val ((m <TarotGimbalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gimbal_tilt-val is deprecated.  Use mrs_msgs-msg:gimbal_tilt instead.")
  (gimbal_tilt m))

(cl:ensure-generic-function 'gimbal_pan-val :lambda-list '(m))
(cl:defmethod gimbal_pan-val ((m <TarotGimbalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gimbal_pan-val is deprecated.  Use mrs_msgs-msg:gimbal_pan instead.")
  (gimbal_pan m))

(cl:ensure-generic-function 'is_on-val :lambda-list '(m))
(cl:defmethod is_on-val ((m <TarotGimbalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:is_on-val is deprecated.  Use mrs_msgs-msg:is_on instead.")
  (is_on m))

(cl:ensure-generic-function 'fpv_mode-val :lambda-list '(m))
(cl:defmethod fpv_mode-val ((m <TarotGimbalState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fpv_mode-val is deprecated.  Use mrs_msgs-msg:fpv_mode instead.")
  (fpv_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TarotGimbalState>) ostream)
  "Serializes a message object of type '<TarotGimbalState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_tilt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gimbal_tilt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_pan)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gimbal_pan)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fpv_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TarotGimbalState>) istream)
  "Deserializes a message object of type '<TarotGimbalState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_tilt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gimbal_tilt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_pan)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gimbal_pan)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fpv_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TarotGimbalState>)))
  "Returns string type for a message object of type '<TarotGimbalState>"
  "mrs_msgs/TarotGimbalState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TarotGimbalState)))
  "Returns string type for a message object of type 'TarotGimbalState"
  "mrs_msgs/TarotGimbalState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TarotGimbalState>)))
  "Returns md5sum for a message object of type '<TarotGimbalState>"
  "de0150cd7cbfca812804963fee3d23ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TarotGimbalState)))
  "Returns md5sum for a message object of type 'TarotGimbalState"
  "de0150cd7cbfca812804963fee3d23ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TarotGimbalState>)))
  "Returns full string definition for message of type '<TarotGimbalState>"
  (cl:format cl:nil "std_msgs/Header header~%~%uint16 gimbal_tilt~%uint16 gimbal_pan~%~%bool is_on~%bool fpv_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TarotGimbalState)))
  "Returns full string definition for message of type 'TarotGimbalState"
  (cl:format cl:nil "std_msgs/Header header~%~%uint16 gimbal_tilt~%uint16 gimbal_pan~%~%bool is_on~%bool fpv_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TarotGimbalState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TarotGimbalState>))
  "Converts a ROS message object to a list"
  (cl:list 'TarotGimbalState
    (cl:cons ':header (header msg))
    (cl:cons ':gimbal_tilt (gimbal_tilt msg))
    (cl:cons ':gimbal_pan (gimbal_pan msg))
    (cl:cons ':is_on (is_on msg))
    (cl:cons ':fpv_mode (fpv_mode msg))
))
