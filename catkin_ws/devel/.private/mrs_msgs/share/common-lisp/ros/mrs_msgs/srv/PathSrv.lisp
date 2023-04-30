; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude PathSrv-request.msg.html

(cl:defclass <PathSrv-request> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type mrs_msgs-msg:Path
    :initform (cl:make-instance 'mrs_msgs-msg:Path)))
)

(cl:defclass PathSrv-request (<PathSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<PathSrv-request> is deprecated: use mrs_msgs-srv:PathSrv-request instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:path-val is deprecated.  Use mrs_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathSrv-request>) ostream)
  "Serializes a message object of type '<PathSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathSrv-request>) istream)
  "Deserializes a message object of type '<PathSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathSrv-request>)))
  "Returns string type for a service object of type '<PathSrv-request>"
  "mrs_msgs/PathSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSrv-request)))
  "Returns string type for a service object of type 'PathSrv-request"
  "mrs_msgs/PathSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathSrv-request>)))
  "Returns md5sum for a message object of type '<PathSrv-request>"
  "cc0419be56f5b03e64c4b130ea5ebe7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathSrv-request)))
  "Returns md5sum for a message object of type 'PathSrv-request"
  "cc0419be56f5b03e64c4b130ea5ebe7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathSrv-request>)))
  "Returns full string definition for message of type '<PathSrv-request>"
  (cl:format cl:nil "mrs_msgs/Path path~%~%================================================================================~%MSG: mrs_msgs/Path~%Header header~%~%int64 input_id~%~%bool use_heading~%bool fly_now~%bool stop_at_waypoints~%bool loop~%~%bool override_constraints~%float64 override_max_velocity_horizontal~%float64 override_max_acceleration_horizontal~%float64 override_max_jerk_horizontal~%float64 override_max_velocity_vertical~%float64 override_max_acceleration_vertical~%float64 override_max_jerk_vertical~%~%bool relax_heading~%~%Reference[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathSrv-request)))
  "Returns full string definition for message of type 'PathSrv-request"
  (cl:format cl:nil "mrs_msgs/Path path~%~%================================================================================~%MSG: mrs_msgs/Path~%Header header~%~%int64 input_id~%~%bool use_heading~%bool fly_now~%bool stop_at_waypoints~%bool loop~%~%bool override_constraints~%float64 override_max_velocity_horizontal~%float64 override_max_acceleration_horizontal~%float64 override_max_jerk_horizontal~%float64 override_max_velocity_vertical~%float64 override_max_acceleration_vertical~%float64 override_max_jerk_vertical~%~%bool relax_heading~%~%Reference[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PathSrv-request
    (cl:cons ':path (path msg))
))
;//! \htmlinclude PathSrv-response.msg.html

(cl:defclass <PathSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass PathSrv-response (<PathSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<PathSrv-response> is deprecated: use mrs_msgs-srv:PathSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PathSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PathSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathSrv-response>) ostream)
  "Serializes a message object of type '<PathSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathSrv-response>) istream)
  "Deserializes a message object of type '<PathSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathSrv-response>)))
  "Returns string type for a service object of type '<PathSrv-response>"
  "mrs_msgs/PathSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSrv-response)))
  "Returns string type for a service object of type 'PathSrv-response"
  "mrs_msgs/PathSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathSrv-response>)))
  "Returns md5sum for a message object of type '<PathSrv-response>"
  "cc0419be56f5b03e64c4b130ea5ebe7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathSrv-response)))
  "Returns md5sum for a message object of type 'PathSrv-response"
  "cc0419be56f5b03e64c4b130ea5ebe7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathSrv-response>)))
  "Returns full string definition for message of type '<PathSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathSrv-response)))
  "Returns full string definition for message of type 'PathSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PathSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PathSrv)))
  'PathSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PathSrv)))
  'PathSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathSrv)))
  "Returns string type for a service object of type '<PathSrv>"
  "mrs_msgs/PathSrv")