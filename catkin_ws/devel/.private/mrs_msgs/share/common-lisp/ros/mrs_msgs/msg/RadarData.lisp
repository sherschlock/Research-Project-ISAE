; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude RadarData.msg.html

(cl:defclass <RadarData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (direction
    :reader direction
    :initarg :direction
    :type cl:boolean
    :initform cl:nil)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (counter
    :reader counter
    :initarg :counter
    :type cl:integer
    :initform 0))
)

(cl:defclass RadarData (<RadarData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<RadarData> is deprecated: use mrs_msgs-msg:RadarData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:direction-val is deprecated.  Use mrs_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity-val is deprecated.  Use mrs_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:counter-val is deprecated.  Use mrs_msgs-msg:counter instead.")
  (counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarData>) ostream)
  "Serializes a message object of type '<RadarData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'direction) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarData>) istream)
  "Deserializes a message object of type '<RadarData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarData>)))
  "Returns string type for a message object of type '<RadarData>"
  "mrs_msgs/RadarData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarData)))
  "Returns string type for a message object of type 'RadarData"
  "mrs_msgs/RadarData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarData>)))
  "Returns md5sum for a message object of type '<RadarData>"
  "b201a3c91369a1dcb1372493c6e8ca4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarData)))
  "Returns md5sum for a message object of type 'RadarData"
  "b201a3c91369a1dcb1372493c6e8ca4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarData>)))
  "Returns full string definition for message of type '<RadarData>"
  (cl:format cl:nil "Header header~%bool direction~%float32 velocity~%int32 counter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarData)))
  "Returns full string definition for message of type 'RadarData"
  (cl:format cl:nil "Header header~%bool direction~%float32 velocity~%int32 counter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarData>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarData
    (cl:cons ':header (header msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':counter (counter msg))
))
