; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude TrackerStatus.msg.html

(cl:defclass <TrackerStatus> (roslisp-msg-protocol:ros-message)
  ((active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (callbacks_enabled
    :reader callbacks_enabled
    :initarg :callbacks_enabled
    :type cl:boolean
    :initform cl:nil)
   (have_goal
    :reader have_goal
    :initarg :have_goal
    :type cl:boolean
    :initform cl:nil)
   (tracking_trajectory
    :reader tracking_trajectory
    :initarg :tracking_trajectory
    :type cl:boolean
    :initform cl:nil)
   (trajectory_length
    :reader trajectory_length
    :initarg :trajectory_length
    :type cl:integer
    :initform 0)
   (trajectory_idx
    :reader trajectory_idx
    :initarg :trajectory_idx
    :type cl:integer
    :initform 0)
   (trajectory_reference
    :reader trajectory_reference
    :initarg :trajectory_reference
    :type mrs_msgs-msg:ReferenceStamped
    :initform (cl:make-instance 'mrs_msgs-msg:ReferenceStamped)))
)

(cl:defclass TrackerStatus (<TrackerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<TrackerStatus> is deprecated: use mrs_msgs-msg:TrackerStatus instead.")))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:active-val is deprecated.  Use mrs_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'callbacks_enabled-val :lambda-list '(m))
(cl:defmethod callbacks_enabled-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:callbacks_enabled-val is deprecated.  Use mrs_msgs-msg:callbacks_enabled instead.")
  (callbacks_enabled m))

(cl:ensure-generic-function 'have_goal-val :lambda-list '(m))
(cl:defmethod have_goal-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:have_goal-val is deprecated.  Use mrs_msgs-msg:have_goal instead.")
  (have_goal m))

(cl:ensure-generic-function 'tracking_trajectory-val :lambda-list '(m))
(cl:defmethod tracking_trajectory-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:tracking_trajectory-val is deprecated.  Use mrs_msgs-msg:tracking_trajectory instead.")
  (tracking_trajectory m))

(cl:ensure-generic-function 'trajectory_length-val :lambda-list '(m))
(cl:defmethod trajectory_length-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:trajectory_length-val is deprecated.  Use mrs_msgs-msg:trajectory_length instead.")
  (trajectory_length m))

(cl:ensure-generic-function 'trajectory_idx-val :lambda-list '(m))
(cl:defmethod trajectory_idx-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:trajectory_idx-val is deprecated.  Use mrs_msgs-msg:trajectory_idx instead.")
  (trajectory_idx m))

(cl:ensure-generic-function 'trajectory_reference-val :lambda-list '(m))
(cl:defmethod trajectory_reference-val ((m <TrackerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:trajectory_reference-val is deprecated.  Use mrs_msgs-msg:trajectory_reference instead.")
  (trajectory_reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackerStatus>) ostream)
  "Serializes a message object of type '<TrackerStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'callbacks_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'have_goal) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tracking_trajectory) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'trajectory_length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trajectory_idx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackerStatus>) istream)
  "Deserializes a message object of type '<TrackerStatus>"
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'callbacks_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'have_goal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tracking_trajectory) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_idx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackerStatus>)))
  "Returns string type for a message object of type '<TrackerStatus>"
  "mrs_msgs/TrackerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackerStatus)))
  "Returns string type for a message object of type 'TrackerStatus"
  "mrs_msgs/TrackerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackerStatus>)))
  "Returns md5sum for a message object of type '<TrackerStatus>"
  "7b7beb41d4138c0f4dea92d6c49a50c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackerStatus)))
  "Returns md5sum for a message object of type 'TrackerStatus"
  "7b7beb41d4138c0f4dea92d6c49a50c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackerStatus>)))
  "Returns full string definition for message of type '<TrackerStatus>"
  (cl:format cl:nil "bool active~%bool callbacks_enabled~%~%# is true whenever the tracker is doing something~%# in other words, not idling~%bool have_goal~%~%# is true only then a trajectory is being tracked~%bool tracking_trajectory~%~%int32 trajectory_length~%int32 trajectory_idx~%~%# only when following trajectory~%# the current reference in the trajectory UNINTERPOLATED~%mrs_msgs/ReferenceStamped trajectory_reference~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackerStatus)))
  "Returns full string definition for message of type 'TrackerStatus"
  (cl:format cl:nil "bool active~%bool callbacks_enabled~%~%# is true whenever the tracker is doing something~%# in other words, not idling~%bool have_goal~%~%# is true only then a trajectory is being tracked~%bool tracking_trajectory~%~%int32 trajectory_length~%int32 trajectory_idx~%~%# only when following trajectory~%# the current reference in the trajectory UNINTERPOLATED~%mrs_msgs/ReferenceStamped trajectory_reference~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackerStatus>))
  (cl:+ 0
     1
     1
     1
     1
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackerStatus
    (cl:cons ':active (active msg))
    (cl:cons ':callbacks_enabled (callbacks_enabled msg))
    (cl:cons ':have_goal (have_goal msg))
    (cl:cons ':tracking_trajectory (tracking_trajectory msg))
    (cl:cons ':trajectory_length (trajectory_length msg))
    (cl:cons ':trajectory_idx (trajectory_idx msg))
    (cl:cons ':trajectory_reference (trajectory_reference msg))
))
