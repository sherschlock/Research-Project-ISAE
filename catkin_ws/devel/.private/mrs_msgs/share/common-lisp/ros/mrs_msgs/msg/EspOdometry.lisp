; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude EspOdometry.msg.html

(cl:defclass <EspOdometry> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (posx
    :reader posx
    :initarg :posx
    :type cl:float
    :initform 0.0)
   (posy
    :reader posy
    :initarg :posy
    :type cl:float
    :initform 0.0)
   (posz
    :reader posz
    :initarg :posz
    :type cl:float
    :initform 0.0)
   (velx
    :reader velx
    :initarg :velx
    :type cl:float
    :initform 0.0)
   (vely
    :reader vely
    :initarg :vely
    :type cl:float
    :initform 0.0)
   (velz
    :reader velz
    :initarg :velz
    :type cl:float
    :initform 0.0))
)

(cl:defclass EspOdometry (<EspOdometry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EspOdometry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EspOdometry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<EspOdometry> is deprecated: use mrs_msgs-msg:EspOdometry instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EspOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'posx-val :lambda-list '(m))
(cl:defmethod posx-val ((m <EspOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:posx-val is deprecated.  Use mrs_msgs-msg:posx instead.")
  (posx m))

(cl:ensure-generic-function 'posy-val :lambda-list '(m))
(cl:defmethod posy-val ((m <EspOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:posy-val is deprecated.  Use mrs_msgs-msg:posy instead.")
  (posy m))

(cl:ensure-generic-function 'posz-val :lambda-list '(m))
(cl:defmethod posz-val ((m <EspOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:posz-val is deprecated.  Use mrs_msgs-msg:posz instead.")
  (posz m))

(cl:ensure-generic-function 'velx-val :lambda-list '(m))
(cl:defmethod velx-val ((m <EspOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velx-val is deprecated.  Use mrs_msgs-msg:velx instead.")
  (velx m))

(cl:ensure-generic-function 'vely-val :lambda-list '(m))
(cl:defmethod vely-val ((m <EspOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:vely-val is deprecated.  Use mrs_msgs-msg:vely instead.")
  (vely m))

(cl:ensure-generic-function 'velz-val :lambda-list '(m))
(cl:defmethod velz-val ((m <EspOdometry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velz-val is deprecated.  Use mrs_msgs-msg:velz instead.")
  (velz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EspOdometry>) ostream)
  "Serializes a message object of type '<EspOdometry>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vely))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EspOdometry>) istream)
  "Deserializes a message object of type '<EspOdometry>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vely) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EspOdometry>)))
  "Returns string type for a message object of type '<EspOdometry>"
  "mrs_msgs/EspOdometry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EspOdometry)))
  "Returns string type for a message object of type 'EspOdometry"
  "mrs_msgs/EspOdometry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EspOdometry>)))
  "Returns md5sum for a message object of type '<EspOdometry>"
  "2f7d12bb5cb403c9fb6fccc4c9c047a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EspOdometry)))
  "Returns md5sum for a message object of type 'EspOdometry"
  "2f7d12bb5cb403c9fb6fccc4c9c047a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EspOdometry>)))
  "Returns full string definition for message of type '<EspOdometry>"
  (cl:format cl:nil "std_msgs/Header header~%float32 posx~%float32 posy~%float32 posz~%float32 velx~%float32 vely~%float32 velz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EspOdometry)))
  "Returns full string definition for message of type 'EspOdometry"
  (cl:format cl:nil "std_msgs/Header header~%float32 posx~%float32 posy~%float32 posz~%float32 velx~%float32 vely~%float32 velz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EspOdometry>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EspOdometry>))
  "Converts a ROS message object to a list"
  (cl:list 'EspOdometry
    (cl:cons ':header (header msg))
    (cl:cons ':posx (posx msg))
    (cl:cons ':posy (posy msg))
    (cl:cons ':posz (posz msg))
    (cl:cons ':velx (velx msg))
    (cl:cons ':vely (vely msg))
    (cl:cons ':velz (velz msg))
))
