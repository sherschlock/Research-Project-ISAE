; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude GainManagerDiagnostics.msg.html

(cl:defclass <GainManagerDiagnostics> (roslisp-msg-protocol:ros-message)
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
    :type mrs_msgs-msg:Se3Gains
    :initform (cl:make-instance 'mrs_msgs-msg:Se3Gains)))
)

(cl:defclass GainManagerDiagnostics (<GainManagerDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GainManagerDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GainManagerDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<GainManagerDiagnostics> is deprecated: use mrs_msgs-msg:GainManagerDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GainManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'loaded-val :lambda-list '(m))
(cl:defmethod loaded-val ((m <GainManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:loaded-val is deprecated.  Use mrs_msgs-msg:loaded instead.")
  (loaded m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <GainManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:available-val is deprecated.  Use mrs_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'current_name-val :lambda-list '(m))
(cl:defmethod current_name-val ((m <GainManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:current_name-val is deprecated.  Use mrs_msgs-msg:current_name instead.")
  (current_name m))

(cl:ensure-generic-function 'current_values-val :lambda-list '(m))
(cl:defmethod current_values-val ((m <GainManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:current_values-val is deprecated.  Use mrs_msgs-msg:current_values instead.")
  (current_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GainManagerDiagnostics>) ostream)
  "Serializes a message object of type '<GainManagerDiagnostics>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GainManagerDiagnostics>) istream)
  "Deserializes a message object of type '<GainManagerDiagnostics>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GainManagerDiagnostics>)))
  "Returns string type for a message object of type '<GainManagerDiagnostics>"
  "mrs_msgs/GainManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GainManagerDiagnostics)))
  "Returns string type for a message object of type 'GainManagerDiagnostics"
  "mrs_msgs/GainManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GainManagerDiagnostics>)))
  "Returns md5sum for a message object of type '<GainManagerDiagnostics>"
  "24039f9a2906ae6c07ed9b74d96b96e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GainManagerDiagnostics)))
  "Returns md5sum for a message object of type 'GainManagerDiagnostics"
  "24039f9a2906ae6c07ed9b74d96b96e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GainManagerDiagnostics>)))
  "Returns full string definition for message of type '<GainManagerDiagnostics>"
  (cl:format cl:nil "# The diagnostics of the GainManager.~%~%time stamp~%~%# The list of all loaded gains.~%string[] loaded~%~%# The list of gains which are available for the currently active state estimator.~%string[] available~%~%# The name of the current gains.~%string current_name~%~%# The particular values of the current gains.~%mrs_msgs/Se3Gains current_values~%~%================================================================================~%MSG: mrs_msgs/Se3Gains~%# This a set of gains for the SE(3) controller.~%~%# Horizontal position gain.~%float64 kpxy~%~%# Horizontal velocity gain.~%float64 kvxy~%~%# Horizontal acceleration gain.~%float64 kaxy~%~%# Vertical position gain.~%float64 kpz~%~%# Vertical velocity gain.~%float64 kvz~%~%# Vertical acceleration gain.~%float64 kaz~%~%# Roll+pitch attitude gain.~%float64 kqxy~%~%# Body disturbance gain.~%float64 kibxy~%~%# Body disturbance estimator limit ([N]).~%float64 kibxy_lim~%~%# World disturbance gain.~%float64 kiwxy~%~%# World disturbance estimator limit  ([N]).~%float64 kiwxy_lim~%~%# Yaw attitude gain.~%float64 kqz~%~%# Mass estimator gain.~%float64 km~%~%# Mass estimator limit ([m]).~%float64 km_lim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GainManagerDiagnostics)))
  "Returns full string definition for message of type 'GainManagerDiagnostics"
  (cl:format cl:nil "# The diagnostics of the GainManager.~%~%time stamp~%~%# The list of all loaded gains.~%string[] loaded~%~%# The list of gains which are available for the currently active state estimator.~%string[] available~%~%# The name of the current gains.~%string current_name~%~%# The particular values of the current gains.~%mrs_msgs/Se3Gains current_values~%~%================================================================================~%MSG: mrs_msgs/Se3Gains~%# This a set of gains for the SE(3) controller.~%~%# Horizontal position gain.~%float64 kpxy~%~%# Horizontal velocity gain.~%float64 kvxy~%~%# Horizontal acceleration gain.~%float64 kaxy~%~%# Vertical position gain.~%float64 kpz~%~%# Vertical velocity gain.~%float64 kvz~%~%# Vertical acceleration gain.~%float64 kaz~%~%# Roll+pitch attitude gain.~%float64 kqxy~%~%# Body disturbance gain.~%float64 kibxy~%~%# Body disturbance estimator limit ([N]).~%float64 kibxy_lim~%~%# World disturbance gain.~%float64 kiwxy~%~%# World disturbance estimator limit  ([N]).~%float64 kiwxy_lim~%~%# Yaw attitude gain.~%float64 kqz~%~%# Mass estimator gain.~%float64 km~%~%# Mass estimator limit ([m]).~%float64 km_lim~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GainManagerDiagnostics>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'loaded) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'current_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_values))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GainManagerDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'GainManagerDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':loaded (loaded msg))
    (cl:cons ':available (available msg))
    (cl:cons ':current_name (current_name msg))
    (cl:cons ':current_values (current_values msg))
))
