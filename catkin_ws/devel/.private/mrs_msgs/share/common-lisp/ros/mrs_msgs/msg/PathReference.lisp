; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude PathReference.msg.html

(cl:defclass <PathReference> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
   (loop
    :reader loop
    :initarg :loop
    :type cl:boolean
    :initform cl:nil)
   (points
    :reader points
    :initarg :points
    :type (cl:vector mrs_msgs-msg:Reference)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:Reference :initial-element (cl:make-instance 'mrs_msgs-msg:Reference))))
)

(cl:defclass PathReference (<PathReference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathReference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathReference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<PathReference> is deprecated: use mrs_msgs-msg:PathReference instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'use_heading-val :lambda-list '(m))
(cl:defmethod use_heading-val ((m <PathReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_heading-val is deprecated.  Use mrs_msgs-msg:use_heading instead.")
  (use_heading m))

(cl:ensure-generic-function 'fly_now-val :lambda-list '(m))
(cl:defmethod fly_now-val ((m <PathReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fly_now-val is deprecated.  Use mrs_msgs-msg:fly_now instead.")
  (fly_now m))

(cl:ensure-generic-function 'loop-val :lambda-list '(m))
(cl:defmethod loop-val ((m <PathReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:loop-val is deprecated.  Use mrs_msgs-msg:loop instead.")
  (loop m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PathReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:points-val is deprecated.  Use mrs_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathReference>) ostream)
  "Serializes a message object of type '<PathReference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_heading) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fly_now) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loop) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathReference>) istream)
  "Deserializes a message object of type '<PathReference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'use_heading) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fly_now) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'loop) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:Reference))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathReference>)))
  "Returns string type for a message object of type '<PathReference>"
  "mrs_msgs/PathReference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathReference)))
  "Returns string type for a message object of type 'PathReference"
  "mrs_msgs/PathReference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathReference>)))
  "Returns md5sum for a message object of type '<PathReference>"
  "b50abfb428c8f5152bf8e3026a07dc49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathReference)))
  "Returns md5sum for a message object of type 'PathReference"
  "b50abfb428c8f5152bf8e3026a07dc49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathReference>)))
  "Returns full string definition for message of type '<PathReference>"
  (cl:format cl:nil "# The Path reference~%~%Header header~%~%# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.~%bool use_heading~%~%# True if a planner should start being tracked immediately after receiving it.~%# Beware the header time stamp matters in this case.~%bool fly_now~%~%# True if the path should be looped.~%bool loop~%~%# The list of points in the path.~%Reference[] points ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathReference)))
  "Returns full string definition for message of type 'PathReference"
  (cl:format cl:nil "# The Path reference~%~%Header header~%~%# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.~%bool use_heading~%~%# True if a planner should start being tracked immediately after receiving it.~%# Beware the header time stamp matters in this case.~%bool fly_now~%~%# True if the path should be looped.~%bool loop~%~%# The list of points in the path.~%Reference[] points ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathReference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathReference>))
  "Converts a ROS message object to a list"
  (cl:list 'PathReference
    (cl:cons ':header (header msg))
    (cl:cons ':use_heading (use_heading msg))
    (cl:cons ':fly_now (fly_now msg))
    (cl:cons ':loop (loop msg))
    (cl:cons ':points (points msg))
))
