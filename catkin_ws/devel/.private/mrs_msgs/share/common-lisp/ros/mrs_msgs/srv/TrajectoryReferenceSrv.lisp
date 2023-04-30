; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude TrajectoryReferenceSrv-request.msg.html

(cl:defclass <TrajectoryReferenceSrv-request> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type mrs_msgs-msg:TrajectoryReference
    :initform (cl:make-instance 'mrs_msgs-msg:TrajectoryReference)))
)

(cl:defclass TrajectoryReferenceSrv-request (<TrajectoryReferenceSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryReferenceSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryReferenceSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TrajectoryReferenceSrv-request> is deprecated: use mrs_msgs-srv:TrajectoryReferenceSrv-request instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <TrajectoryReferenceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:trajectory-val is deprecated.  Use mrs_msgs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryReferenceSrv-request>) ostream)
  "Serializes a message object of type '<TrajectoryReferenceSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryReferenceSrv-request>) istream)
  "Deserializes a message object of type '<TrajectoryReferenceSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryReferenceSrv-request>)))
  "Returns string type for a service object of type '<TrajectoryReferenceSrv-request>"
  "mrs_msgs/TrajectoryReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryReferenceSrv-request)))
  "Returns string type for a service object of type 'TrajectoryReferenceSrv-request"
  "mrs_msgs/TrajectoryReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryReferenceSrv-request>)))
  "Returns md5sum for a message object of type '<TrajectoryReferenceSrv-request>"
  "c46e24277d96ed318e50872a694d7abc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryReferenceSrv-request)))
  "Returns md5sum for a message object of type 'TrajectoryReferenceSrv-request"
  "c46e24277d96ed318e50872a694d7abc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryReferenceSrv-request>)))
  "Returns full string definition for message of type '<TrajectoryReferenceSrv-request>"
  (cl:format cl:nil "mrs_msgs/TrajectoryReference trajectory~%~%================================================================================~%MSG: mrs_msgs/TrajectoryReference~%# The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.~%~%Header header~%~%# uniquely identifies the user input~%int64 input_id~%~%# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.~%bool use_heading~%~%# True if the trajectory should start being tracked immediately after receiving it.~%# Beware the header time stamp matters in this case.~%bool fly_now~%~%# True if the trajectory should be looped.~%bool loop~%~%# The time difference between the trajectory samples.~%# It falls back to 0.2 s if left unset.~%float64 dt~%~%# The list of points in the trajectory, spaced by the dt.~%Reference[] points ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryReferenceSrv-request)))
  "Returns full string definition for message of type 'TrajectoryReferenceSrv-request"
  (cl:format cl:nil "mrs_msgs/TrajectoryReference trajectory~%~%================================================================================~%MSG: mrs_msgs/TrajectoryReference~%# The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.~%~%Header header~%~%# uniquely identifies the user input~%int64 input_id~%~%# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.~%bool use_heading~%~%# True if the trajectory should start being tracked immediately after receiving it.~%# Beware the header time stamp matters in this case.~%bool fly_now~%~%# True if the trajectory should be looped.~%bool loop~%~%# The time difference between the trajectory samples.~%# It falls back to 0.2 s if left unset.~%float64 dt~%~%# The list of points in the trajectory, spaced by the dt.~%Reference[] points ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryReferenceSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryReferenceSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryReferenceSrv-request
    (cl:cons ':trajectory (trajectory msg))
))
;//! \htmlinclude TrajectoryReferenceSrv-response.msg.html

(cl:defclass <TrajectoryReferenceSrv-response> (roslisp-msg-protocol:ros-message)
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
   (modified
    :reader modified
    :initarg :modified
    :type cl:boolean
    :initform cl:nil)
   (tracker_names
    :reader tracker_names
    :initarg :tracker_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (tracker_successes
    :reader tracker_successes
    :initarg :tracker_successes
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (tracker_messages
    :reader tracker_messages
    :initarg :tracker_messages
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass TrajectoryReferenceSrv-response (<TrajectoryReferenceSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryReferenceSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryReferenceSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TrajectoryReferenceSrv-response> is deprecated: use mrs_msgs-srv:TrajectoryReferenceSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TrajectoryReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TrajectoryReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'modified-val :lambda-list '(m))
(cl:defmethod modified-val ((m <TrajectoryReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:modified-val is deprecated.  Use mrs_msgs-srv:modified instead.")
  (modified m))

(cl:ensure-generic-function 'tracker_names-val :lambda-list '(m))
(cl:defmethod tracker_names-val ((m <TrajectoryReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:tracker_names-val is deprecated.  Use mrs_msgs-srv:tracker_names instead.")
  (tracker_names m))

(cl:ensure-generic-function 'tracker_successes-val :lambda-list '(m))
(cl:defmethod tracker_successes-val ((m <TrajectoryReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:tracker_successes-val is deprecated.  Use mrs_msgs-srv:tracker_successes instead.")
  (tracker_successes m))

(cl:ensure-generic-function 'tracker_messages-val :lambda-list '(m))
(cl:defmethod tracker_messages-val ((m <TrajectoryReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:tracker_messages-val is deprecated.  Use mrs_msgs-srv:tracker_messages instead.")
  (tracker_messages m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryReferenceSrv-response>) ostream)
  "Serializes a message object of type '<TrajectoryReferenceSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'modified) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracker_names))))
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
   (cl:slot-value msg 'tracker_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracker_successes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'tracker_successes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tracker_messages))))
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
   (cl:slot-value msg 'tracker_messages))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryReferenceSrv-response>) istream)
  "Deserializes a message object of type '<TrajectoryReferenceSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'modified) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracker_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracker_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracker_successes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracker_successes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tracker_messages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tracker_messages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryReferenceSrv-response>)))
  "Returns string type for a service object of type '<TrajectoryReferenceSrv-response>"
  "mrs_msgs/TrajectoryReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryReferenceSrv-response)))
  "Returns string type for a service object of type 'TrajectoryReferenceSrv-response"
  "mrs_msgs/TrajectoryReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryReferenceSrv-response>)))
  "Returns md5sum for a message object of type '<TrajectoryReferenceSrv-response>"
  "c46e24277d96ed318e50872a694d7abc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryReferenceSrv-response)))
  "Returns md5sum for a message object of type 'TrajectoryReferenceSrv-response"
  "c46e24277d96ed318e50872a694d7abc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryReferenceSrv-response>)))
  "Returns full string definition for message of type '<TrajectoryReferenceSrv-response>"
  (cl:format cl:nil "~%# response of the currently active tracker~%bool success~%string message~%bool modified~%~%# responses of each loaded tracker~%string[] tracker_names~%bool[] tracker_successes~%string[] tracker_messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryReferenceSrv-response)))
  "Returns full string definition for message of type 'TrajectoryReferenceSrv-response"
  (cl:format cl:nil "~%# response of the currently active tracker~%bool success~%string message~%bool modified~%~%# responses of each loaded tracker~%string[] tracker_names~%bool[] tracker_successes~%string[] tracker_messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryReferenceSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracker_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracker_successes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tracker_messages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryReferenceSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryReferenceSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':modified (modified msg))
    (cl:cons ':tracker_names (tracker_names msg))
    (cl:cons ':tracker_successes (tracker_successes msg))
    (cl:cons ':tracker_messages (tracker_messages msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrajectoryReferenceSrv)))
  'TrajectoryReferenceSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrajectoryReferenceSrv)))
  'TrajectoryReferenceSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryReferenceSrv)))
  "Returns string type for a service object of type '<TrajectoryReferenceSrv>"
  "mrs_msgs/TrajectoryReferenceSrv")