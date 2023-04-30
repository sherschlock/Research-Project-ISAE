; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude SpeedTrackerCommand.msg.html

(cl:defclass <SpeedTrackerCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (force
    :reader force
    :initarg :force
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (heading_rate
    :reader heading_rate
    :initarg :heading_rate
    :type cl:float
    :initform 0.0)
   (use_velocity
    :reader use_velocity
    :initarg :use_velocity
    :type cl:boolean
    :initform cl:nil)
   (use_acceleration
    :reader use_acceleration
    :initarg :use_acceleration
    :type cl:boolean
    :initform cl:nil)
   (use_force
    :reader use_force
    :initarg :use_force
    :type cl:boolean
    :initform cl:nil)
   (use_height
    :reader use_height
    :initarg :use_height
    :type cl:boolean
    :initform cl:nil)
   (use_heading
    :reader use_heading
    :initarg :use_heading
    :type cl:boolean
    :initform cl:nil)
   (use_heading_rate
    :reader use_heading_rate
    :initarg :use_heading_rate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpeedTrackerCommand (<SpeedTrackerCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedTrackerCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedTrackerCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<SpeedTrackerCommand> is deprecated: use mrs_msgs-msg:SpeedTrackerCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity-val is deprecated.  Use mrs_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:acceleration-val is deprecated.  Use mrs_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:force-val is deprecated.  Use mrs_msgs-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:height-val is deprecated.  Use mrs_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heading-val is deprecated.  Use mrs_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'heading_rate-val :lambda-list '(m))
(cl:defmethod heading_rate-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heading_rate-val is deprecated.  Use mrs_msgs-msg:heading_rate instead.")
  (heading_rate m))

(cl:ensure-generic-function 'use_velocity-val :lambda-list '(m))
(cl:defmethod use_velocity-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_velocity-val is deprecated.  Use mrs_msgs-msg:use_velocity instead.")
  (use_velocity m))

(cl:ensure-generic-function 'use_acceleration-val :lambda-list '(m))
(cl:defmethod use_acceleration-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_acceleration-val is deprecated.  Use mrs_msgs-msg:use_acceleration instead.")
  (use_acceleration m))

(cl:ensure-generic-function 'use_force-val :lambda-list '(m))
(cl:defmethod use_force-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_force-val is deprecated.  Use mrs_msgs-msg:use_force instead.")
  (use_force m))

(cl:ensure-generic-function 'use_height-val :lambda-list '(m))
(cl:defmethod use_height-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_height-val is deprecated.  Use mrs_msgs-msg:use_height instead.")
  (use_height m))

(cl:ensure-generic-function 'use_heading-val :lambda-list '(m))
(cl:defmethod use_heading-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_heading-val is deprecated.  Use mrs_msgs-msg:use_heading instead.")
  (use_heading m))

(cl:ensure-generic-function 'use_heading_rate-val :lambda-list '(m))
(cl:defmethod use_heading_rate-val ((m <SpeedTrackerCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_heading_rate-val is deprecated.  Use mrs_msgs-msg:use_heading_rate instead.")
  (use_heading_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedTrackerCommand>) ostream)
  "Serializes a message object of type '<SpeedTrackerCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_velocity) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_acceleration) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_force) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_height) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_heading) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_heading_rate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedTrackerCommand>) istream)
  "Deserializes a message object of type '<SpeedTrackerCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
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
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'use_velocity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_acceleration) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_force) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_height) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_heading) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_heading_rate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedTrackerCommand>)))
  "Returns string type for a message object of type '<SpeedTrackerCommand>"
  "mrs_msgs/SpeedTrackerCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedTrackerCommand)))
  "Returns string type for a message object of type 'SpeedTrackerCommand"
  "mrs_msgs/SpeedTrackerCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedTrackerCommand>)))
  "Returns md5sum for a message object of type '<SpeedTrackerCommand>"
  "8bbd615ad5a88ff6da152b220d857737")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedTrackerCommand)))
  "Returns md5sum for a message object of type 'SpeedTrackerCommand"
  "8bbd615ad5a88ff6da152b220d857737")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedTrackerCommand>)))
  "Returns full string definition for message of type '<SpeedTrackerCommand>"
  (cl:format cl:nil "# contains the frame_id = your reference frame of choice~%std_msgs/Header header~%~%# desired velocity [m/s], optional~%geometry_msgs/Vector3 velocity~%~%# desired acceleration [m/s^2], optional~%geometry_msgs/Vector3 acceleration~%~%# desired force [N], optional~%geometry_msgs/Vector3 force~%~%# height above ground, optional~%float64 height~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# set to \"true\" if you want to control the state~%bool use_velocity~%bool use_acceleration~%bool use_force~%bool use_height~%bool use_heading~%bool use_heading_rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedTrackerCommand)))
  "Returns full string definition for message of type 'SpeedTrackerCommand"
  (cl:format cl:nil "# contains the frame_id = your reference frame of choice~%std_msgs/Header header~%~%# desired velocity [m/s], optional~%geometry_msgs/Vector3 velocity~%~%# desired acceleration [m/s^2], optional~%geometry_msgs/Vector3 acceleration~%~%# desired force [N], optional~%geometry_msgs/Vector3 force~%~%# height above ground, optional~%float64 height~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# set to \"true\" if you want to control the state~%bool use_velocity~%bool use_acceleration~%bool use_force~%bool use_height~%bool use_heading~%bool use_heading_rate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedTrackerCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     8
     8
     8
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedTrackerCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedTrackerCommand
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':force (force msg))
    (cl:cons ':height (height msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':heading_rate (heading_rate msg))
    (cl:cons ':use_velocity (use_velocity msg))
    (cl:cons ':use_acceleration (use_acceleration msg))
    (cl:cons ':use_force (use_force msg))
    (cl:cons ':use_height (use_height msg))
    (cl:cons ':use_heading (use_heading msg))
    (cl:cons ':use_heading_rate (use_heading_rate msg))
))
