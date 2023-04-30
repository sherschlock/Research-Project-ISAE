; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude PathWithVelocity.msg.html

(cl:defclass <PathWithVelocity> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (input_id
    :reader input_id
    :initarg :input_id
    :type cl:integer
    :initform 0)
   (use_heading
    :reader use_heading
    :initarg :use_heading
    :type cl:boolean
    :initform cl:nil)
   (fly_now
    :reader fly_now
    :initarg :fly_now
    :type cl:boolean
    :initform cl:nil)
   (stop_at_waypoints
    :reader stop_at_waypoints
    :initarg :stop_at_waypoints
    :type cl:boolean
    :initform cl:nil)
   (loop
    :reader loop
    :initarg :loop
    :type cl:boolean
    :initform cl:nil)
   (override_constraints
    :reader override_constraints
    :initarg :override_constraints
    :type cl:boolean
    :initform cl:nil)
   (override_max_velocity_horizontal
    :reader override_max_velocity_horizontal
    :initarg :override_max_velocity_horizontal
    :type cl:float
    :initform 0.0)
   (override_max_acceleration_horizontal
    :reader override_max_acceleration_horizontal
    :initarg :override_max_acceleration_horizontal
    :type cl:float
    :initform 0.0)
   (override_max_velocity_vertical
    :reader override_max_velocity_vertical
    :initarg :override_max_velocity_vertical
    :type cl:float
    :initform 0.0)
   (override_max_acceleration_vertical
    :reader override_max_acceleration_vertical
    :initarg :override_max_acceleration_vertical
    :type cl:float
    :initform 0.0)
   (relax_heading
    :reader relax_heading
    :initarg :relax_heading
    :type cl:boolean
    :initform cl:nil)
   (points
    :reader points
    :initarg :points
    :type (cl:vector mrs_msgs-msg:ReferenceWithVelocity)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:ReferenceWithVelocity :initial-element (cl:make-instance 'mrs_msgs-msg:ReferenceWithVelocity))))
)

(cl:defclass PathWithVelocity (<PathWithVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathWithVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathWithVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<PathWithVelocity> is deprecated: use mrs_msgs-msg:PathWithVelocity instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'input_id-val :lambda-list '(m))
(cl:defmethod input_id-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:input_id-val is deprecated.  Use mrs_msgs-msg:input_id instead.")
  (input_id m))

(cl:ensure-generic-function 'use_heading-val :lambda-list '(m))
(cl:defmethod use_heading-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_heading-val is deprecated.  Use mrs_msgs-msg:use_heading instead.")
  (use_heading m))

(cl:ensure-generic-function 'fly_now-val :lambda-list '(m))
(cl:defmethod fly_now-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fly_now-val is deprecated.  Use mrs_msgs-msg:fly_now instead.")
  (fly_now m))

(cl:ensure-generic-function 'stop_at_waypoints-val :lambda-list '(m))
(cl:defmethod stop_at_waypoints-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stop_at_waypoints-val is deprecated.  Use mrs_msgs-msg:stop_at_waypoints instead.")
  (stop_at_waypoints m))

(cl:ensure-generic-function 'loop-val :lambda-list '(m))
(cl:defmethod loop-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:loop-val is deprecated.  Use mrs_msgs-msg:loop instead.")
  (loop m))

(cl:ensure-generic-function 'override_constraints-val :lambda-list '(m))
(cl:defmethod override_constraints-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:override_constraints-val is deprecated.  Use mrs_msgs-msg:override_constraints instead.")
  (override_constraints m))

(cl:ensure-generic-function 'override_max_velocity_horizontal-val :lambda-list '(m))
(cl:defmethod override_max_velocity_horizontal-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:override_max_velocity_horizontal-val is deprecated.  Use mrs_msgs-msg:override_max_velocity_horizontal instead.")
  (override_max_velocity_horizontal m))

(cl:ensure-generic-function 'override_max_acceleration_horizontal-val :lambda-list '(m))
(cl:defmethod override_max_acceleration_horizontal-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:override_max_acceleration_horizontal-val is deprecated.  Use mrs_msgs-msg:override_max_acceleration_horizontal instead.")
  (override_max_acceleration_horizontal m))

(cl:ensure-generic-function 'override_max_velocity_vertical-val :lambda-list '(m))
(cl:defmethod override_max_velocity_vertical-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:override_max_velocity_vertical-val is deprecated.  Use mrs_msgs-msg:override_max_velocity_vertical instead.")
  (override_max_velocity_vertical m))

(cl:ensure-generic-function 'override_max_acceleration_vertical-val :lambda-list '(m))
(cl:defmethod override_max_acceleration_vertical-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:override_max_acceleration_vertical-val is deprecated.  Use mrs_msgs-msg:override_max_acceleration_vertical instead.")
  (override_max_acceleration_vertical m))

(cl:ensure-generic-function 'relax_heading-val :lambda-list '(m))
(cl:defmethod relax_heading-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:relax_heading-val is deprecated.  Use mrs_msgs-msg:relax_heading instead.")
  (relax_heading m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PathWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:points-val is deprecated.  Use mrs_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathWithVelocity>) ostream)
  "Serializes a message object of type '<PathWithVelocity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'input_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_heading) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fly_now) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_at_waypoints) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'override_constraints) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'override_max_velocity_horizontal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'override_max_acceleration_horizontal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'override_max_velocity_vertical))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'override_max_acceleration_vertical))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relax_heading) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathWithVelocity>) istream)
  "Deserializes a message object of type '<PathWithVelocity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'use_heading) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fly_now) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stop_at_waypoints) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'loop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'override_constraints) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'override_max_velocity_horizontal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'override_max_acceleration_horizontal) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'override_max_velocity_vertical) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'override_max_acceleration_vertical) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'relax_heading) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:ReferenceWithVelocity))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathWithVelocity>)))
  "Returns string type for a message object of type '<PathWithVelocity>"
  "mrs_msgs/PathWithVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathWithVelocity)))
  "Returns string type for a message object of type 'PathWithVelocity"
  "mrs_msgs/PathWithVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathWithVelocity>)))
  "Returns md5sum for a message object of type '<PathWithVelocity>"
  "bcbfefbbc71a86c06377c2c60f2cf152")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathWithVelocity)))
  "Returns md5sum for a message object of type 'PathWithVelocity"
  "bcbfefbbc71a86c06377c2c60f2cf152")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathWithVelocity>)))
  "Returns full string definition for message of type '<PathWithVelocity>"
  (cl:format cl:nil "Header header~%~%int64 input_id~%~%bool use_heading~%bool fly_now~%bool stop_at_waypoints~%bool loop~%~%# if this is enabled, the slower velocity between the points and these overrides will be chosen~%bool override_constraints~%float64 override_max_velocity_horizontal~%float64 override_max_acceleration_horizontal~%float64 override_max_velocity_vertical~%float64 override_max_acceleration_vertical~%~%bool relax_heading~%~%ReferenceWithVelocity[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/ReferenceWithVelocity~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%bool enforce_velocity~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathWithVelocity)))
  "Returns full string definition for message of type 'PathWithVelocity"
  (cl:format cl:nil "Header header~%~%int64 input_id~%~%bool use_heading~%bool fly_now~%bool stop_at_waypoints~%bool loop~%~%# if this is enabled, the slower velocity between the points and these overrides will be chosen~%bool override_constraints~%float64 override_max_velocity_horizontal~%float64 override_max_acceleration_horizontal~%float64 override_max_velocity_vertical~%float64 override_max_acceleration_vertical~%~%bool relax_heading~%~%ReferenceWithVelocity[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/ReferenceWithVelocity~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%bool enforce_velocity~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathWithVelocity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     1
     1
     1
     1
     8
     8
     8
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathWithVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'PathWithVelocity
    (cl:cons ':header (header msg))
    (cl:cons ':input_id (input_id msg))
    (cl:cons ':use_heading (use_heading msg))
    (cl:cons ':fly_now (fly_now msg))
    (cl:cons ':stop_at_waypoints (stop_at_waypoints msg))
    (cl:cons ':loop (loop msg))
    (cl:cons ':override_constraints (override_constraints msg))
    (cl:cons ':override_max_velocity_horizontal (override_max_velocity_horizontal msg))
    (cl:cons ':override_max_acceleration_horizontal (override_max_acceleration_horizontal msg))
    (cl:cons ':override_max_velocity_vertical (override_max_velocity_vertical msg))
    (cl:cons ':override_max_acceleration_vertical (override_max_acceleration_vertical msg))
    (cl:cons ':relax_heading (relax_heading msg))
    (cl:cons ':points (points msg))
))
