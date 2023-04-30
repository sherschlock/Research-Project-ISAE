; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude GazeboAttach-request.msg.html

(cl:defclass <GazeboAttach-request> (roslisp-msg-protocol:ros-message)
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
    :initform ""))
)

(cl:defclass GazeboAttach-request (<GazeboAttach-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboAttach-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboAttach-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboAttach-request> is deprecated: use mrs_msgs-srv:GazeboAttach-request instead.")))

(cl:ensure-generic-function 'model_name_1-val :lambda-list '(m))
(cl:defmethod model_name_1-val ((m <GazeboAttach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:model_name_1-val is deprecated.  Use mrs_msgs-srv:model_name_1 instead.")
  (model_name_1 m))

(cl:ensure-generic-function 'link_name_1-val :lambda-list '(m))
(cl:defmethod link_name_1-val ((m <GazeboAttach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:link_name_1-val is deprecated.  Use mrs_msgs-srv:link_name_1 instead.")
  (link_name_1 m))

(cl:ensure-generic-function 'model_name_2-val :lambda-list '(m))
(cl:defmethod model_name_2-val ((m <GazeboAttach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:model_name_2-val is deprecated.  Use mrs_msgs-srv:model_name_2 instead.")
  (model_name_2 m))

(cl:ensure-generic-function 'link_name_2-val :lambda-list '(m))
(cl:defmethod link_name_2-val ((m <GazeboAttach-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:link_name_2-val is deprecated.  Use mrs_msgs-srv:link_name_2 instead.")
  (link_name_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboAttach-request>) ostream)
  "Serializes a message object of type '<GazeboAttach-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboAttach-request>) istream)
  "Deserializes a message object of type '<GazeboAttach-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboAttach-request>)))
  "Returns string type for a service object of type '<GazeboAttach-request>"
  "mrs_msgs/GazeboAttachRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboAttach-request)))
  "Returns string type for a service object of type 'GazeboAttach-request"
  "mrs_msgs/GazeboAttachRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboAttach-request>)))
  "Returns md5sum for a message object of type '<GazeboAttach-request>"
  "c91fb3be70ce66d19130d40294cf4bd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboAttach-request)))
  "Returns md5sum for a message object of type 'GazeboAttach-request"
  "c91fb3be70ce66d19130d40294cf4bd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboAttach-request>)))
  "Returns full string definition for message of type '<GazeboAttach-request>"
  (cl:format cl:nil "# A service to apply a force and/or torque to a link in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package. The links will be joined~%# by a revolute joint type.~%~%# Name of the model, containing the first link to be joined.~%string model_name_1~%~%# Name the first link to be joined.~%string link_name_1~%~%# Name of the model, containing the second link to be joined.~%string model_name_2~%~%# Name of the second link to be joined.~%string link_name_2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboAttach-request)))
  "Returns full string definition for message of type 'GazeboAttach-request"
  (cl:format cl:nil "# A service to apply a force and/or torque to a link in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package. The links will be joined~%# by a revolute joint type.~%~%# Name of the model, containing the first link to be joined.~%string model_name_1~%~%# Name the first link to be joined.~%string link_name_1~%~%# Name of the model, containing the second link to be joined.~%string model_name_2~%~%# Name of the second link to be joined.~%string link_name_2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboAttach-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name_1))
     4 (cl:length (cl:slot-value msg 'link_name_1))
     4 (cl:length (cl:slot-value msg 'model_name_2))
     4 (cl:length (cl:slot-value msg 'link_name_2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboAttach-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboAttach-request
    (cl:cons ':model_name_1 (model_name_1 msg))
    (cl:cons ':link_name_1 (link_name_1 msg))
    (cl:cons ':model_name_2 (model_name_2 msg))
    (cl:cons ':link_name_2 (link_name_2 msg))
))
;//! \htmlinclude GazeboAttach-response.msg.html

(cl:defclass <GazeboAttach-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GazeboAttach-response (<GazeboAttach-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboAttach-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboAttach-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboAttach-response> is deprecated: use mrs_msgs-srv:GazeboAttach-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <GazeboAttach-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:ok-val is deprecated.  Use mrs_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboAttach-response>) ostream)
  "Serializes a message object of type '<GazeboAttach-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboAttach-response>) istream)
  "Deserializes a message object of type '<GazeboAttach-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboAttach-response>)))
  "Returns string type for a service object of type '<GazeboAttach-response>"
  "mrs_msgs/GazeboAttachResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboAttach-response)))
  "Returns string type for a service object of type 'GazeboAttach-response"
  "mrs_msgs/GazeboAttachResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboAttach-response>)))
  "Returns md5sum for a message object of type '<GazeboAttach-response>"
  "c91fb3be70ce66d19130d40294cf4bd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboAttach-response)))
  "Returns md5sum for a message object of type 'GazeboAttach-response"
  "c91fb3be70ce66d19130d40294cf4bd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboAttach-response>)))
  "Returns full string definition for message of type '<GazeboAttach-response>"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboAttach-response)))
  "Returns full string definition for message of type 'GazeboAttach-response"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboAttach-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboAttach-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboAttach-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GazeboAttach)))
  'GazeboAttach-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GazeboAttach)))
  'GazeboAttach-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboAttach)))
  "Returns string type for a service object of type '<GazeboAttach>"
  "mrs_msgs/GazeboAttach")