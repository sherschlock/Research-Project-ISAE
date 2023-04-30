; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude GazeboApplyForce-request.msg.html

(cl:defclass <GazeboApplyForce-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform "")
   (force
    :reader force
    :initarg :force
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GazeboApplyForce-request (<GazeboApplyForce-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboApplyForce-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboApplyForce-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboApplyForce-request> is deprecated: use mrs_msgs-srv:GazeboApplyForce-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <GazeboApplyForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:model_name-val is deprecated.  Use mrs_msgs-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <GazeboApplyForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:link_name-val is deprecated.  Use mrs_msgs-srv:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <GazeboApplyForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:force-val is deprecated.  Use mrs_msgs-srv:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <GazeboApplyForce-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:torque-val is deprecated.  Use mrs_msgs-srv:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboApplyForce-request>) ostream)
  "Serializes a message object of type '<GazeboApplyForce-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'force))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboApplyForce-request>) istream)
  "Deserializes a message object of type '<GazeboApplyForce-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'force) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'force)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboApplyForce-request>)))
  "Returns string type for a service object of type '<GazeboApplyForce-request>"
  "mrs_msgs/GazeboApplyForceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboApplyForce-request)))
  "Returns string type for a service object of type 'GazeboApplyForce-request"
  "mrs_msgs/GazeboApplyForceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboApplyForce-request>)))
  "Returns md5sum for a message object of type '<GazeboApplyForce-request>"
  "77ac0ae8a686941daaff7f70c849280e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboApplyForce-request)))
  "Returns md5sum for a message object of type 'GazeboApplyForce-request"
  "77ac0ae8a686941daaff7f70c849280e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboApplyForce-request>)))
  "Returns full string definition for message of type '<GazeboApplyForce-request>"
  (cl:format cl:nil "# A service to apply a force and/or torque to a link in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package.~%~%# Name of the model, containing the link to apply the force/torque to.~%string model_name~%~%# Name of the link to apply the force/torque to.~%string link_name~%~%# The force vector to apply (in the Gazebo global coordinate system).~%float64[3] force~%~%# The torque vector to apply (in the Gazebo global coordinate system).~%float64[3] torque~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboApplyForce-request)))
  "Returns full string definition for message of type 'GazeboApplyForce-request"
  (cl:format cl:nil "# A service to apply a force and/or torque to a link in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package.~%~%# Name of the model, containing the link to apply the force/torque to.~%string model_name~%~%# Name of the link to apply the force/torque to.~%string link_name~%~%# The force vector to apply (in the Gazebo global coordinate system).~%float64[3] force~%~%# The torque vector to apply (in the Gazebo global coordinate system).~%float64[3] torque~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboApplyForce-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
     4 (cl:length (cl:slot-value msg 'link_name))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'force) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboApplyForce-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboApplyForce-request
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
;//! \htmlinclude GazeboApplyForce-response.msg.html

(cl:defclass <GazeboApplyForce-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GazeboApplyForce-response (<GazeboApplyForce-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboApplyForce-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboApplyForce-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboApplyForce-response> is deprecated: use mrs_msgs-srv:GazeboApplyForce-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <GazeboApplyForce-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:ok-val is deprecated.  Use mrs_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboApplyForce-response>) ostream)
  "Serializes a message object of type '<GazeboApplyForce-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboApplyForce-response>) istream)
  "Deserializes a message object of type '<GazeboApplyForce-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboApplyForce-response>)))
  "Returns string type for a service object of type '<GazeboApplyForce-response>"
  "mrs_msgs/GazeboApplyForceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboApplyForce-response)))
  "Returns string type for a service object of type 'GazeboApplyForce-response"
  "mrs_msgs/GazeboApplyForceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboApplyForce-response>)))
  "Returns md5sum for a message object of type '<GazeboApplyForce-response>"
  "77ac0ae8a686941daaff7f70c849280e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboApplyForce-response)))
  "Returns md5sum for a message object of type 'GazeboApplyForce-response"
  "77ac0ae8a686941daaff7f70c849280e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboApplyForce-response>)))
  "Returns full string definition for message of type '<GazeboApplyForce-response>"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboApplyForce-response)))
  "Returns full string definition for message of type 'GazeboApplyForce-response"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboApplyForce-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboApplyForce-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboApplyForce-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GazeboApplyForce)))
  'GazeboApplyForce-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GazeboApplyForce)))
  'GazeboApplyForce-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboApplyForce)))
  "Returns string type for a service object of type '<GazeboApplyForce>"
  "mrs_msgs/GazeboApplyForce")