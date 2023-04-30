; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude BigDofecArm-request.msg.html

(cl:defclass <BigDofecArm-request> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BigDofecArm-request (<BigDofecArm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecArm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecArm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecArm-request> is deprecated: use mrs_msgs-srv:BigDofecArm-request instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <BigDofecArm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:arm-val is deprecated.  Use mrs_msgs-srv:arm instead.")
  (arm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecArm-request>) ostream)
  "Serializes a message object of type '<BigDofecArm-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'arm) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecArm-request>) istream)
  "Deserializes a message object of type '<BigDofecArm-request>"
    (cl:setf (cl:slot-value msg 'arm) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecArm-request>)))
  "Returns string type for a service object of type '<BigDofecArm-request>"
  "mrs_msgs/BigDofecArmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecArm-request)))
  "Returns string type for a service object of type 'BigDofecArm-request"
  "mrs_msgs/BigDofecArmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecArm-request>)))
  "Returns md5sum for a message object of type '<BigDofecArm-request>"
  "b937cef067d7c684e0a7c0d4fc2d0a3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecArm-request)))
  "Returns md5sum for a message object of type 'BigDofecArm-request"
  "b937cef067d7c684e0a7c0d4fc2d0a3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecArm-request>)))
  "Returns full string definition for message of type '<BigDofecArm-request>"
  (cl:format cl:nil "bool arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecArm-request)))
  "Returns full string definition for message of type 'BigDofecArm-request"
  (cl:format cl:nil "bool arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecArm-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecArm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecArm-request
    (cl:cons ':arm (arm msg))
))
;//! \htmlinclude BigDofecArm-response.msg.html

(cl:defclass <BigDofecArm-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass BigDofecArm-response (<BigDofecArm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecArm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecArm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<BigDofecArm-response> is deprecated: use mrs_msgs-srv:BigDofecArm-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BigDofecArm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <BigDofecArm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecArm-response>) ostream)
  "Serializes a message object of type '<BigDofecArm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecArm-response>) istream)
  "Deserializes a message object of type '<BigDofecArm-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecArm-response>)))
  "Returns string type for a service object of type '<BigDofecArm-response>"
  "mrs_msgs/BigDofecArmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecArm-response)))
  "Returns string type for a service object of type 'BigDofecArm-response"
  "mrs_msgs/BigDofecArmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecArm-response>)))
  "Returns md5sum for a message object of type '<BigDofecArm-response>"
  "b937cef067d7c684e0a7c0d4fc2d0a3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecArm-response)))
  "Returns md5sum for a message object of type 'BigDofecArm-response"
  "b937cef067d7c684e0a7c0d4fc2d0a3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecArm-response>)))
  "Returns full string definition for message of type '<BigDofecArm-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecArm-response)))
  "Returns full string definition for message of type 'BigDofecArm-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecArm-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecArm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecArm-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BigDofecArm)))
  'BigDofecArm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BigDofecArm)))
  'BigDofecArm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecArm)))
  "Returns string type for a service object of type '<BigDofecArm>"
  "mrs_msgs/BigDofecArm")