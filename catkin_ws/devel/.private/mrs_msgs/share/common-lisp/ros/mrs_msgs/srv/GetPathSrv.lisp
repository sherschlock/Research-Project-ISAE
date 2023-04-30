; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude GetPathSrv-request.msg.html

(cl:defclass <GetPathSrv-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type mrs_msgs-msg:Path
    :initform (cl:make-instance 'mrs_msgs-msg:Path)))
)

(cl:defclass GetPathSrv-request (<GetPathSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPathSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPathSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GetPathSrv-request> is deprecated: use mrs_msgs-srv:GetPathSrv-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GetPathSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:path-val is deprecated.  Use mrs_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPathSrv-request>) ostream)
  "Serializes a message object of type '<GetPathSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPathSrv-request>) istream)
  "Deserializes a message object of type '<GetPathSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPathSrv-request>)))
  "Returns string type for a service object of type '<GetPathSrv-request>"
  "mrs_msgs/GetPathSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathSrv-request)))
  "Returns string type for a service object of type 'GetPathSrv-request"
  "mrs_msgs/GetPathSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPathSrv-request>)))
  "Returns md5sum for a message object of type '<GetPathSrv-request>"
  "2a60d1d5c00a767af0cb4448e8a7d3af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPathSrv-request)))
  "Returns md5sum for a message object of type 'GetPathSrv-request"
  "2a60d1d5c00a767af0cb4448e8a7d3af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPathSrv-request>)))
  "Returns full string definition for message of type '<GetPathSrv-request>"
  (cl:format cl:nil "mrs_msgs/Path path~%~%================================================================================~%MSG: mrs_msgs/Path~%Header header~%~%int64 input_id~%~%bool use_heading~%bool fly_now~%bool stop_at_waypoints~%bool loop~%~%bool override_constraints~%float64 override_max_velocity_horizontal~%float64 override_max_acceleration_horizontal~%float64 override_max_jerk_horizontal~%float64 override_max_velocity_vertical~%float64 override_max_acceleration_vertical~%float64 override_max_jerk_vertical~%~%bool relax_heading~%~%Reference[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPathSrv-request)))
  "Returns full string definition for message of type 'GetPathSrv-request"
  (cl:format cl:nil "mrs_msgs/Path path~%~%================================================================================~%MSG: mrs_msgs/Path~%Header header~%~%int64 input_id~%~%bool use_heading~%bool fly_now~%bool stop_at_waypoints~%bool loop~%~%bool override_constraints~%float64 override_max_velocity_horizontal~%float64 override_max_acceleration_horizontal~%float64 override_max_jerk_horizontal~%float64 override_max_velocity_vertical~%float64 override_max_acceleration_vertical~%float64 override_max_jerk_vertical~%~%bool relax_heading~%~%Reference[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPathSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPathSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPathSrv-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude GetPathSrv-response.msg.html

(cl:defclass <GetPathSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type mrs_msgs-msg:TrajectoryReference
    :initform (cl:make-instance 'mrs_msgs-msg:TrajectoryReference)))
)

(cl:defclass GetPathSrv-response (<GetPathSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPathSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPathSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GetPathSrv-response> is deprecated: use mrs_msgs-srv:GetPathSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPathSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetPathSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <GetPathSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:trajectory-val is deprecated.  Use mrs_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPathSrv-response>) ostream)
  "Serializes a message object of type '<GetPathSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPathSrv-response>) istream)
  "Deserializes a message object of type '<GetPathSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPathSrv-response>)))
  "Returns string type for a service object of type '<GetPathSrv-response>"
  "mrs_msgs/GetPathSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathSrv-response)))
  "Returns string type for a service object of type 'GetPathSrv-response"
  "mrs_msgs/GetPathSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPathSrv-response>)))
  "Returns md5sum for a message object of type '<GetPathSrv-response>"
  "2a60d1d5c00a767af0cb4448e8a7d3af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPathSrv-response)))
  "Returns md5sum for a message object of type 'GetPathSrv-response"
  "2a60d1d5c00a767af0cb4448e8a7d3af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPathSrv-response>)))
  "Returns full string definition for message of type '<GetPathSrv-response>"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/TrajectoryReference trajectory~%~%~%================================================================================~%MSG: mrs_msgs/TrajectoryReference~%# The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.~%~%Header header~%~%# uniquely identifies the user input~%int64 input_id~%~%# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.~%bool use_heading~%~%# True if the trajectory should start being tracked immediately after receiving it.~%# Beware the header time stamp matters in this case.~%bool fly_now~%~%# True if the trajectory should be looped.~%bool loop~%~%# The time difference between the trajectory samples.~%# It falls back to 0.2 s if left unset.~%float64 dt~%~%# The list of points in the trajectory, spaced by the dt.~%Reference[] points ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPathSrv-response)))
  "Returns full string definition for message of type 'GetPathSrv-response"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/TrajectoryReference trajectory~%~%~%================================================================================~%MSG: mrs_msgs/TrajectoryReference~%# The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.~%~%Header header~%~%# uniquely identifies the user input~%int64 input_id~%~%# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.~%bool use_heading~%~%# True if the trajectory should start being tracked immediately after receiving it.~%# Beware the header time stamp matters in this case.~%bool fly_now~%~%# True if the trajectory should be looped.~%bool loop~%~%# The time difference between the trajectory samples.~%# It falls back to 0.2 s if left unset.~%float64 dt~%~%# The list of points in the trajectory, spaced by the dt.~%Reference[] points ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPathSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPathSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPathSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPathSrv)))
  'GetPathSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPathSrv)))
  'GetPathSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathSrv)))
  "Returns string type for a service object of type '<GetPathSrv>"
  "mrs_msgs/GetPathSrv")