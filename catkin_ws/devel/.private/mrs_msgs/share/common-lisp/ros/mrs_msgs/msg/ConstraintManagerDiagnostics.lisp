; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ConstraintManagerDiagnostics.msg.html

(cl:defclass <ConstraintManagerDiagnostics> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (loaded
    :reader loaded
    :initarg :loaded
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (available
    :reader available
    :initarg :available
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (current_name
    :reader current_name
    :initarg :current_name
    :type cl:string
    :initform "")
   (current_values
    :reader current_values
    :initarg :current_values
    :type mrs_msgs-msg:DynamicsConstraints
    :initform (cl:make-instance 'mrs_msgs-msg:DynamicsConstraints)))
)

(cl:defclass ConstraintManagerDiagnostics (<ConstraintManagerDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConstraintManagerDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConstraintManagerDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ConstraintManagerDiagnostics> is deprecated: use mrs_msgs-msg:ConstraintManagerDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ConstraintManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'loaded-val :lambda-list '(m))
(cl:defmethod loaded-val ((m <ConstraintManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:loaded-val is deprecated.  Use mrs_msgs-msg:loaded instead.")
  (loaded m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ConstraintManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:available-val is deprecated.  Use mrs_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'current_name-val :lambda-list '(m))
(cl:defmethod current_name-val ((m <ConstraintManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:current_name-val is deprecated.  Use mrs_msgs-msg:current_name instead.")
  (current_name m))

(cl:ensure-generic-function 'current_values-val :lambda-list '(m))
(cl:defmethod current_values-val ((m <ConstraintManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:current_values-val is deprecated.  Use mrs_msgs-msg:current_values instead.")
  (current_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConstraintManagerDiagnostics>) ostream)
  "Serializes a message object of type '<ConstraintManagerDiagnostics>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'loaded))))
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
   (cl:slot-value msg 'loaded))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available))))
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
   (cl:slot-value msg 'available))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_values) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConstraintManagerDiagnostics>) istream)
  "Deserializes a message object of type '<ConstraintManagerDiagnostics>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'loaded) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'loaded)))
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
  (cl:setf (cl:slot-value msg 'available) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_values) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConstraintManagerDiagnostics>)))
  "Returns string type for a message object of type '<ConstraintManagerDiagnostics>"
  "mrs_msgs/ConstraintManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstraintManagerDiagnostics)))
  "Returns string type for a message object of type 'ConstraintManagerDiagnostics"
  "mrs_msgs/ConstraintManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConstraintManagerDiagnostics>)))
  "Returns md5sum for a message object of type '<ConstraintManagerDiagnostics>"
  "4492970994a46fd3abfb96a139dcd930")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConstraintManagerDiagnostics)))
  "Returns md5sum for a message object of type 'ConstraintManagerDiagnostics"
  "4492970994a46fd3abfb96a139dcd930")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConstraintManagerDiagnostics>)))
  "Returns full string definition for message of type '<ConstraintManagerDiagnostics>"
  (cl:format cl:nil "# The diagnostics of the ConstraintManager.~%~%time stamp~%~%# The list of all loaded constraints.~%string[] loaded~%~%# The list of constraints which are available for the currently active state estimator.~%string[] available~%~%# The name of the current constraints.~%string current_name~%~%# The particular values of the current constraints.~%# Beware, those might be overloaded by the current controller.~%# Subscribe to \"control_manager/current_constraints\" for the~%# true values.~%mrs_msgs/DynamicsConstraints current_values~%~%================================================================================~%MSG: mrs_msgs/DynamicsConstraints~%# UAV dynamics constraints~%~%# speed: m/s~%# acceleration: m/s^2~%# jerk: m/s^3~%# snap: m/s^4~%~%# translational dynamics~%~%float64 horizontal_speed~%float64 horizontal_acceleration~%float64 horizontal_jerk~%float64 horizontal_snap~%~%float64 vertical_ascending_speed~%float64 vertical_ascending_acceleration~%float64 vertical_ascending_jerk~%float64 vertical_ascending_snap~%~%float64 vertical_descending_speed~%float64 vertical_descending_acceleration~%float64 vertical_descending_jerk~%float64 vertical_descending_snap~%~%# heading~%~%float64 heading_speed~%float64 heading_acceleration~%float64 heading_jerk~%float64 heading_snap~%~%# angular rates: rad/s~%~%float64 roll_rate~%float64 pitch_rate~%float64 yaw_rate~%~%# maximum tilt, rad~%# max angle between body-3 and world-3 axes~%~%float64 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConstraintManagerDiagnostics)))
  "Returns full string definition for message of type 'ConstraintManagerDiagnostics"
  (cl:format cl:nil "# The diagnostics of the ConstraintManager.~%~%time stamp~%~%# The list of all loaded constraints.~%string[] loaded~%~%# The list of constraints which are available for the currently active state estimator.~%string[] available~%~%# The name of the current constraints.~%string current_name~%~%# The particular values of the current constraints.~%# Beware, those might be overloaded by the current controller.~%# Subscribe to \"control_manager/current_constraints\" for the~%# true values.~%mrs_msgs/DynamicsConstraints current_values~%~%================================================================================~%MSG: mrs_msgs/DynamicsConstraints~%# UAV dynamics constraints~%~%# speed: m/s~%# acceleration: m/s^2~%# jerk: m/s^3~%# snap: m/s^4~%~%# translational dynamics~%~%float64 horizontal_speed~%float64 horizontal_acceleration~%float64 horizontal_jerk~%float64 horizontal_snap~%~%float64 vertical_ascending_speed~%float64 vertical_ascending_acceleration~%float64 vertical_ascending_jerk~%float64 vertical_ascending_snap~%~%float64 vertical_descending_speed~%float64 vertical_descending_acceleration~%float64 vertical_descending_jerk~%float64 vertical_descending_snap~%~%# heading~%~%float64 heading_speed~%float64 heading_acceleration~%float64 heading_jerk~%float64 heading_snap~%~%# angular rates: rad/s~%~%float64 roll_rate~%float64 pitch_rate~%float64 yaw_rate~%~%# maximum tilt, rad~%# max angle between body-3 and world-3 axes~%~%float64 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConstraintManagerDiagnostics>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'loaded) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'current_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_values))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConstraintManagerDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'ConstraintManagerDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':loaded (loaded msg))
    (cl:cons ':available (available msg))
    (cl:cons ':current_name (current_name msg))
    (cl:cons ':current_values (current_values msg))
))
