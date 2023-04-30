; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude GazeboAttachTyped-request.msg.html

(cl:defclass <GazeboAttachTyped-request> (roslisp-msg-protocol:ros-message)
  ((model_name_1
    :reader model_name_1
    :initarg :model_name_1
    :type cl:string
    :initform "")
   (link_name_1
    :reader link_name_1
    :initarg :link_name_1
    :type cl:string
    :initform "")
   (model_name_2
    :reader model_name_2
    :initarg :model_name_2
    :type cl:string
    :initform "")
   (link_name_2
    :reader link_name_2
    :initarg :link_name_2
    :type cl:string
    :initform "")
   (joint_type
    :reader joint_type
    :initarg :joint_type
    :type cl:string
    :initform ""))
)

(cl:defclass GazeboAttachTyped-request (<GazeboAttachTyped-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboAttachTyped-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboAttachTyped-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboAttachTyped-request> is deprecated: use mrs_msgs-srv:GazeboAttachTyped-request instead.")))

(cl:ensure-generic-function 'model_name_1-val :lambda-list '(m))
(cl:defmethod model_name_1-val ((m <GazeboAttachTyped-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:model_name_1-val is deprecated.  Use mrs_msgs-srv:model_name_1 instead.")
  (model_name_1 m))

(cl:ensure-generic-function 'link_name_1-val :lambda-list '(m))
(cl:defmethod link_name_1-val ((m <GazeboAttachTyped-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:link_name_1-val is deprecated.  Use mrs_msgs-srv:link_name_1 instead.")
  (link_name_1 m))

(cl:ensure-generic-function 'model_name_2-val :lambda-list '(m))
(cl:defmethod model_name_2-val ((m <GazeboAttachTyped-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:model_name_2-val is deprecated.  Use mrs_msgs-srv:model_name_2 instead.")
  (model_name_2 m))

(cl:ensure-generic-function 'link_name_2-val :lambda-list '(m))
(cl:defmethod link_name_2-val ((m <GazeboAttachTyped-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:link_name_2-val is deprecated.  Use mrs_msgs-srv:link_name_2 instead.")
  (link_name_2 m))

(cl:ensure-generic-function 'joint_type-val :lambda-list '(m))
(cl:defmethod joint_type-val ((m <GazeboAttachTyped-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:joint_type-val is deprecated.  Use mrs_msgs-srv:joint_type instead.")
  (joint_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboAttachTyped-request>) ostream)
  "Serializes a message object of type '<GazeboAttachTyped-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name_1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name_1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name_2))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name_2))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboAttachTyped-request>) istream)
  "Deserializes a message object of type '<GazeboAttachTyped-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name_1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name_1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name_1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name_1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name_2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name_2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name_2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name_2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboAttachTyped-request>)))
  "Returns string type for a service object of type '<GazeboAttachTyped-request>"
  "mrs_msgs/GazeboAttachTypedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboAttachTyped-request)))
  "Returns string type for a service object of type 'GazeboAttachTyped-request"
  "mrs_msgs/GazeboAttachTypedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboAttachTyped-request>)))
  "Returns md5sum for a message object of type '<GazeboAttachTyped-request>"
  "c8a200edf35f852bddb91566c6d0dc97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboAttachTyped-request)))
  "Returns md5sum for a message object of type 'GazeboAttachTyped-request"
  "c8a200edf35f852bddb91566c6d0dc97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboAttachTyped-request>)))
  "Returns full string definition for message of type '<GazeboAttachTyped-request>"
  (cl:format cl:nil "# A service to apply a force and/or torque to a link in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package.~%~%# Name of the model, containing the first link to be joined.~%string model_name_1~%~%# Name the first link to be joined.~%string link_name_1~%~%# Name of the model, containing the second link to be joined.~%string model_name_2~%~%# Name of the second link to be joined.~%string link_name_2~%~%# Type of the joint to be created.~%# This should be one of the following values:~%# \"revolute\"~%# \"ball\"~%# \"gearbox\"~%# \"prismatic\"~%# \"revolute2\"~%# \"universal\"~%# \"piston\"~%# \"fixed\"~%string joint_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboAttachTyped-request)))
  "Returns full string definition for message of type 'GazeboAttachTyped-request"
  (cl:format cl:nil "# A service to apply a force and/or torque to a link in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package.~%~%# Name of the model, containing the first link to be joined.~%string model_name_1~%~%# Name the first link to be joined.~%string link_name_1~%~%# Name of the model, containing the second link to be joined.~%string model_name_2~%~%# Name of the second link to be joined.~%string link_name_2~%~%# Type of the joint to be created.~%# This should be one of the following values:~%# \"revolute\"~%# \"ball\"~%# \"gearbox\"~%# \"prismatic\"~%# \"revolute2\"~%# \"universal\"~%# \"piston\"~%# \"fixed\"~%string joint_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboAttachTyped-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name_1))
     4 (cl:length (cl:slot-value msg 'link_name_1))
     4 (cl:length (cl:slot-value msg 'model_name_2))
     4 (cl:length (cl:slot-value msg 'link_name_2))
     4 (cl:length (cl:slot-value msg 'joint_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboAttachTyped-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboAttachTyped-request
    (cl:cons ':model_name_1 (model_name_1 msg))
    (cl:cons ':link_name_1 (link_name_1 msg))
    (cl:cons ':model_name_2 (model_name_2 msg))
    (cl:cons ':link_name_2 (link_name_2 msg))
    (cl:cons ':joint_type (joint_type msg))
))
;//! \htmlinclude GazeboAttachTyped-response.msg.html

(cl:defclass <GazeboAttachTyped-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GazeboAttachTyped-response (<GazeboAttachTyped-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboAttachTyped-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboAttachTyped-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboAttachTyped-response> is deprecated: use mrs_msgs-srv:GazeboAttachTyped-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <GazeboAttachTyped-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:ok-val is deprecated.  Use mrs_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboAttachTyped-response>) ostream)
  "Serializes a message object of type '<GazeboAttachTyped-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboAttachTyped-response>) istream)
  "Deserializes a message object of type '<GazeboAttachTyped-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboAttachTyped-response>)))
  "Returns string type for a service object of type '<GazeboAttachTyped-response>"
  "mrs_msgs/GazeboAttachTypedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboAttachTyped-response)))
  "Returns string type for a service object of type 'GazeboAttachTyped-response"
  "mrs_msgs/GazeboAttachTypedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboAttachTyped-response>)))
  "Returns md5sum for a message object of type '<GazeboAttachTyped-response>"
  "c8a200edf35f852bddb91566c6d0dc97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboAttachTyped-response)))
  "Returns md5sum for a message object of type 'GazeboAttachTyped-response"
  "c8a200edf35f852bddb91566c6d0dc97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboAttachTyped-response>)))
  "Returns full string definition for message of type '<GazeboAttachTyped-response>"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboAttachTyped-response)))
  "Returns full string definition for message of type 'GazeboAttachTyped-response"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboAttachTyped-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboAttachTyped-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboAttachTyped-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GazeboAttachTyped)))
  'GazeboAttachTyped-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GazeboAttachTyped)))
  'GazeboAttachTyped-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboAttachTyped)))
  "Returns string type for a service object of type '<GazeboAttachTyped>"
  "mrs_msgs/GazeboAttachTyped")