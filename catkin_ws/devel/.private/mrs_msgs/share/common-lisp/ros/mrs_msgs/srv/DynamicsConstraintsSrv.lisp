; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude DynamicsConstraintsSrv-request.msg.html

(cl:defclass <DynamicsConstraintsSrv-request> (roslisp-msg-protocol:ros-message)
  ((constraints
    :reader constraints
    :initarg :constraints
    :type mrs_msgs-msg:DynamicsConstraints
    :initform (cl:make-instance 'mrs_msgs-msg:DynamicsConstraints)))
)

(cl:defclass DynamicsConstraintsSrv-request (<DynamicsConstraintsSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicsConstraintsSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicsConstraintsSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<DynamicsConstraintsSrv-request> is deprecated: use mrs_msgs-srv:DynamicsConstraintsSrv-request instead.")))

(cl:ensure-generic-function 'constraints-val :lambda-list '(m))
(cl:defmethod constraints-val ((m <DynamicsConstraintsSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:constraints-val is deprecated.  Use mrs_msgs-srv:constraints instead.")
  (constraints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicsConstraintsSrv-request>) ostream)
  "Serializes a message object of type '<DynamicsConstraintsSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'constraints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicsConstraintsSrv-request>) istream)
  "Deserializes a message object of type '<DynamicsConstraintsSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'constraints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicsConstraintsSrv-request>)))
  "Returns string type for a service object of type '<DynamicsConstraintsSrv-request>"
  "mrs_msgs/DynamicsConstraintsSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicsConstraintsSrv-request)))
  "Returns string type for a service object of type 'DynamicsConstraintsSrv-request"
  "mrs_msgs/DynamicsConstraintsSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicsConstraintsSrv-request>)))
  "Returns md5sum for a message object of type '<DynamicsConstraintsSrv-request>"
  "6a22936cf27079c2902612f5c225d1df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicsConstraintsSrv-request)))
  "Returns md5sum for a message object of type 'DynamicsConstraintsSrv-request"
  "6a22936cf27079c2902612f5c225d1df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicsConstraintsSrv-request>)))
  "Returns full string definition for message of type '<DynamicsConstraintsSrv-request>"
  (cl:format cl:nil "mrs_msgs/DynamicsConstraints constraints~%~%================================================================================~%MSG: mrs_msgs/DynamicsConstraints~%# UAV dynamics constraints~%~%# speed: m/s~%# acceleration: m/s^2~%# jerk: m/s^3~%# snap: m/s^4~%~%# translational dynamics~%~%float64 horizontal_speed~%float64 horizontal_acceleration~%float64 horizontal_jerk~%float64 horizontal_snap~%~%float64 vertical_ascending_speed~%float64 vertical_ascending_acceleration~%float64 vertical_ascending_jerk~%float64 vertical_ascending_snap~%~%float64 vertical_descending_speed~%float64 vertical_descending_acceleration~%float64 vertical_descending_jerk~%float64 vertical_descending_snap~%~%# heading~%~%float64 heading_speed~%float64 heading_acceleration~%float64 heading_jerk~%float64 heading_snap~%~%# angular rates: rad/s~%~%float64 roll_rate~%float64 pitch_rate~%float64 yaw_rate~%~%# maximum tilt, rad~%# max angle between body-3 and world-3 axes~%~%float64 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicsConstraintsSrv-request)))
  "Returns full string definition for message of type 'DynamicsConstraintsSrv-request"
  (cl:format cl:nil "mrs_msgs/DynamicsConstraints constraints~%~%================================================================================~%MSG: mrs_msgs/DynamicsConstraints~%# UAV dynamics constraints~%~%# speed: m/s~%# acceleration: m/s^2~%# jerk: m/s^3~%# snap: m/s^4~%~%# translational dynamics~%~%float64 horizontal_speed~%float64 horizontal_acceleration~%float64 horizontal_jerk~%float64 horizontal_snap~%~%float64 vertical_ascending_speed~%float64 vertical_ascending_acceleration~%float64 vertical_ascending_jerk~%float64 vertical_ascending_snap~%~%float64 vertical_descending_speed~%float64 vertical_descending_acceleration~%float64 vertical_descending_jerk~%float64 vertical_descending_snap~%~%# heading~%~%float64 heading_speed~%float64 heading_acceleration~%float64 heading_jerk~%float64 heading_snap~%~%# angular rates: rad/s~%~%float64 roll_rate~%float64 pitch_rate~%float64 yaw_rate~%~%# maximum tilt, rad~%# max angle between body-3 and world-3 axes~%~%float64 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicsConstraintsSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'constraints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicsConstraintsSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicsConstraintsSrv-request
    (cl:cons ':constraints (constraints msg))
))
;//! \htmlinclude DynamicsConstraintsSrv-response.msg.html

(cl:defclass <DynamicsConstraintsSrv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DynamicsConstraintsSrv-response (<DynamicsConstraintsSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicsConstraintsSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicsConstraintsSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<DynamicsConstraintsSrv-response> is deprecated: use mrs_msgs-srv:DynamicsConstraintsSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DynamicsConstraintsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DynamicsConstraintsSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicsConstraintsSrv-response>) ostream)
  "Serializes a message object of type '<DynamicsConstraintsSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicsConstraintsSrv-response>) istream)
  "Deserializes a message object of type '<DynamicsConstraintsSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicsConstraintsSrv-response>)))
  "Returns string type for a service object of type '<DynamicsConstraintsSrv-response>"
  "mrs_msgs/DynamicsConstraintsSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicsConstraintsSrv-response)))
  "Returns string type for a service object of type 'DynamicsConstraintsSrv-response"
  "mrs_msgs/DynamicsConstraintsSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicsConstraintsSrv-response>)))
  "Returns md5sum for a message object of type '<DynamicsConstraintsSrv-response>"
  "6a22936cf27079c2902612f5c225d1df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicsConstraintsSrv-response)))
  "Returns md5sum for a message object of type 'DynamicsConstraintsSrv-response"
  "6a22936cf27079c2902612f5c225d1df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicsConstraintsSrv-response>)))
  "Returns full string definition for message of type '<DynamicsConstraintsSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicsConstraintsSrv-response)))
  "Returns full string definition for message of type 'DynamicsConstraintsSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicsConstraintsSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicsConstraintsSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicsConstraintsSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DynamicsConstraintsSrv)))
  'DynamicsConstraintsSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DynamicsConstraintsSrv)))
  'DynamicsConstraintsSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicsConstraintsSrv)))
  "Returns string type for a service object of type '<DynamicsConstraintsSrv>"
  "mrs_msgs/DynamicsConstraintsSrv")