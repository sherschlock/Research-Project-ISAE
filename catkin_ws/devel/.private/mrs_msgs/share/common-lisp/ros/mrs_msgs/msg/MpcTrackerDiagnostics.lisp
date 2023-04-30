; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude MpcTrackerDiagnostics.msg.html

(cl:defclass <MpcTrackerDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uav_name
    :reader uav_name
    :initarg :uav_name
    :type cl:string
    :initform "")
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (collision_avoidance_active
    :reader collision_avoidance_active
    :initarg :collision_avoidance_active
    :type cl:boolean
    :initform cl:nil)
   (avoiding_collision
    :reader avoiding_collision
    :initarg :avoiding_collision
    :type cl:boolean
    :initform cl:nil)
   (avoidance_active_uavs
    :reader avoidance_active_uavs
    :initarg :avoidance_active_uavs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (setpoint
    :reader setpoint
    :initarg :setpoint
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass MpcTrackerDiagnostics (<MpcTrackerDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MpcTrackerDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MpcTrackerDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<MpcTrackerDiagnostics> is deprecated: use mrs_msgs-msg:MpcTrackerDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MpcTrackerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uav_name-val :lambda-list '(m))
(cl:defmethod uav_name-val ((m <MpcTrackerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:uav_name-val is deprecated.  Use mrs_msgs-msg:uav_name instead.")
  (uav_name m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <MpcTrackerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:active-val is deprecated.  Use mrs_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'collision_avoidance_active-val :lambda-list '(m))
(cl:defmethod collision_avoidance_active-val ((m <MpcTrackerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:collision_avoidance_active-val is deprecated.  Use mrs_msgs-msg:collision_avoidance_active instead.")
  (collision_avoidance_active m))

(cl:ensure-generic-function 'avoiding_collision-val :lambda-list '(m))
(cl:defmethod avoiding_collision-val ((m <MpcTrackerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:avoiding_collision-val is deprecated.  Use mrs_msgs-msg:avoiding_collision instead.")
  (avoiding_collision m))

(cl:ensure-generic-function 'avoidance_active_uavs-val :lambda-list '(m))
(cl:defmethod avoidance_active_uavs-val ((m <MpcTrackerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:avoidance_active_uavs-val is deprecated.  Use mrs_msgs-msg:avoidance_active_uavs instead.")
  (avoidance_active_uavs m))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <MpcTrackerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:setpoint-val is deprecated.  Use mrs_msgs-msg:setpoint instead.")
  (setpoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MpcTrackerDiagnostics>) ostream)
  "Serializes a message object of type '<MpcTrackerDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision_avoidance_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'avoiding_collision) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'avoidance_active_uavs))))
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
   (cl:slot-value msg 'avoidance_active_uavs))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'setpoint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MpcTrackerDiagnostics>) istream)
  "Deserializes a message object of type '<MpcTrackerDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uav_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'collision_avoidance_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'avoiding_collision) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'avoidance_active_uavs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'avoidance_active_uavs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'setpoint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MpcTrackerDiagnostics>)))
  "Returns string type for a message object of type '<MpcTrackerDiagnostics>"
  "mrs_msgs/MpcTrackerDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MpcTrackerDiagnostics)))
  "Returns string type for a message object of type 'MpcTrackerDiagnostics"
  "mrs_msgs/MpcTrackerDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MpcTrackerDiagnostics>)))
  "Returns md5sum for a message object of type '<MpcTrackerDiagnostics>"
  "3fcb4d421dc34e3a114f4a7a3e1f6ee8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MpcTrackerDiagnostics)))
  "Returns md5sum for a message object of type 'MpcTrackerDiagnostics"
  "3fcb4d421dc34e3a114f4a7a3e1f6ee8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MpcTrackerDiagnostics>)))
  "Returns full string definition for message of type '<MpcTrackerDiagnostics>"
  (cl:format cl:nil "Header header~%~%string uav_name~%bool active~%bool collision_avoidance_active~%bool avoiding_collision~%string[] avoidance_active_uavs~%geometry_msgs/Pose setpoint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MpcTrackerDiagnostics)))
  "Returns full string definition for message of type 'MpcTrackerDiagnostics"
  (cl:format cl:nil "Header header~%~%string uav_name~%bool active~%bool collision_avoidance_active~%bool avoiding_collision~%string[] avoidance_active_uavs~%geometry_msgs/Pose setpoint~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MpcTrackerDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'uav_name))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'avoidance_active_uavs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'setpoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MpcTrackerDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'MpcTrackerDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':uav_name (uav_name msg))
    (cl:cons ':active (active msg))
    (cl:cons ':collision_avoidance_active (collision_avoidance_active msg))
    (cl:cons ':avoiding_collision (avoiding_collision msg))
    (cl:cons ':avoidance_active_uavs (avoidance_active_uavs msg))
    (cl:cons ':setpoint (setpoint msg))
))
