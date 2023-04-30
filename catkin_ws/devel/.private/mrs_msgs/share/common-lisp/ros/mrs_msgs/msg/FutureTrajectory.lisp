; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude FutureTrajectory.msg.html

(cl:defclass <FutureTrajectory> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (uav_name
    :reader uav_name
    :initarg :uav_name
    :type cl:string
    :initform "")
   (priority
    :reader priority
    :initarg :priority
    :type cl:integer
    :initform 0)
   (collision_avoidance
    :reader collision_avoidance
    :initarg :collision_avoidance
    :type cl:boolean
    :initform cl:nil)
   (points
    :reader points
    :initarg :points
    :type (cl:vector mrs_msgs-msg:FuturePoint)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:FuturePoint :initial-element (cl:make-instance 'mrs_msgs-msg:FuturePoint))))
)

(cl:defclass FutureTrajectory (<FutureTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FutureTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FutureTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<FutureTrajectory> is deprecated: use mrs_msgs-msg:FutureTrajectory instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <FutureTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'uav_name-val :lambda-list '(m))
(cl:defmethod uav_name-val ((m <FutureTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:uav_name-val is deprecated.  Use mrs_msgs-msg:uav_name instead.")
  (uav_name m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <FutureTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:priority-val is deprecated.  Use mrs_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'collision_avoidance-val :lambda-list '(m))
(cl:defmethod collision_avoidance-val ((m <FutureTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:collision_avoidance-val is deprecated.  Use mrs_msgs-msg:collision_avoidance instead.")
  (collision_avoidance m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <FutureTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:points-val is deprecated.  Use mrs_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FutureTrajectory>) ostream)
  "Serializes a message object of type '<FutureTrajectory>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_name))
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision_avoidance) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FutureTrajectory>) istream)
  "Deserializes a message object of type '<FutureTrajectory>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uav_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'collision_avoidance) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:FuturePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FutureTrajectory>)))
  "Returns string type for a message object of type '<FutureTrajectory>"
  "mrs_msgs/FutureTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FutureTrajectory)))
  "Returns string type for a message object of type 'FutureTrajectory"
  "mrs_msgs/FutureTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FutureTrajectory>)))
  "Returns md5sum for a message object of type '<FutureTrajectory>"
  "f0fea67fc418564772e559179612541d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FutureTrajectory)))
  "Returns md5sum for a message object of type 'FutureTrajectory"
  "f0fea67fc418564772e559179612541d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FutureTrajectory>)))
  "Returns full string definition for message of type '<FutureTrajectory>"
  (cl:format cl:nil "time stamp~%string uav_name~%int32 priority~%bool collision_avoidance~%FuturePoint[] points ~%~%================================================================================~%MSG: mrs_msgs/FuturePoint~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FutureTrajectory)))
  "Returns full string definition for message of type 'FutureTrajectory"
  (cl:format cl:nil "time stamp~%string uav_name~%int32 priority~%bool collision_avoidance~%FuturePoint[] points ~%~%================================================================================~%MSG: mrs_msgs/FuturePoint~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FutureTrajectory>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'uav_name))
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FutureTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'FutureTrajectory
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':uav_name (uav_name msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':collision_avoidance (collision_avoidance msg))
    (cl:cons ':points (points msg))
))
