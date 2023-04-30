; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude GazeboDeleteModel-request.msg.html

(cl:defclass <GazeboDeleteModel-request> (roslisp-msg-protocol:ros-message)
  ((model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform ""))
)

(cl:defclass GazeboDeleteModel-request (<GazeboDeleteModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboDeleteModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboDeleteModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboDeleteModel-request> is deprecated: use mrs_msgs-srv:GazeboDeleteModel-request instead.")))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <GazeboDeleteModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:model_name-val is deprecated.  Use mrs_msgs-srv:model_name instead.")
  (model_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboDeleteModel-request>) ostream)
  "Serializes a message object of type '<GazeboDeleteModel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboDeleteModel-request>) istream)
  "Deserializes a message object of type '<GazeboDeleteModel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboDeleteModel-request>)))
  "Returns string type for a service object of type '<GazeboDeleteModel-request>"
  "mrs_msgs/GazeboDeleteModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboDeleteModel-request)))
  "Returns string type for a service object of type 'GazeboDeleteModel-request"
  "mrs_msgs/GazeboDeleteModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboDeleteModel-request>)))
  "Returns md5sum for a message object of type '<GazeboDeleteModel-request>"
  "7fbee826e882b5a106f0e80ba4b38712")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboDeleteModel-request)))
  "Returns md5sum for a message object of type 'GazeboDeleteModel-request"
  "7fbee826e882b5a106f0e80ba4b38712")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboDeleteModel-request>)))
  "Returns full string definition for message of type '<GazeboDeleteModel-request>"
  (cl:format cl:nil "# A service to delete a model in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package.~%~%# Name of the model to be deleted.~%string model_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboDeleteModel-request)))
  "Returns full string definition for message of type 'GazeboDeleteModel-request"
  (cl:format cl:nil "# A service to delete a model in a Gazebo simulation~%# using the mrs_gazebo_ros_interface package.~%~%# Name of the model to be deleted.~%string model_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboDeleteModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboDeleteModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboDeleteModel-request
    (cl:cons ':model_name (model_name msg))
))
;//! \htmlinclude GazeboDeleteModel-response.msg.html

(cl:defclass <GazeboDeleteModel-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GazeboDeleteModel-response (<GazeboDeleteModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GazeboDeleteModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GazeboDeleteModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GazeboDeleteModel-response> is deprecated: use mrs_msgs-srv:GazeboDeleteModel-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <GazeboDeleteModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:ok-val is deprecated.  Use mrs_msgs-srv:ok instead.")
  (ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GazeboDeleteModel-response>) ostream)
  "Serializes a message object of type '<GazeboDeleteModel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GazeboDeleteModel-response>) istream)
  "Deserializes a message object of type '<GazeboDeleteModel-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GazeboDeleteModel-response>)))
  "Returns string type for a service object of type '<GazeboDeleteModel-response>"
  "mrs_msgs/GazeboDeleteModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboDeleteModel-response)))
  "Returns string type for a service object of type 'GazeboDeleteModel-response"
  "mrs_msgs/GazeboDeleteModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GazeboDeleteModel-response>)))
  "Returns md5sum for a message object of type '<GazeboDeleteModel-response>"
  "7fbee826e882b5a106f0e80ba4b38712")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GazeboDeleteModel-response)))
  "Returns md5sum for a message object of type 'GazeboDeleteModel-response"
  "7fbee826e882b5a106f0e80ba4b38712")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GazeboDeleteModel-response>)))
  "Returns full string definition for message of type '<GazeboDeleteModel-response>"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GazeboDeleteModel-response)))
  "Returns full string definition for message of type 'GazeboDeleteModel-response"
  (cl:format cl:nil "~%# Indicates whether the requested operation was carried out successfully.~%bool ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GazeboDeleteModel-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GazeboDeleteModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GazeboDeleteModel-response
    (cl:cons ':ok (ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GazeboDeleteModel)))
  'GazeboDeleteModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GazeboDeleteModel)))
  'GazeboDeleteModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GazeboDeleteModel)))
  "Returns string type for a service object of type '<GazeboDeleteModel>"
  "mrs_msgs/GazeboDeleteModel")