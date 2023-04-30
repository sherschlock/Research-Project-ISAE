; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude GetFloat64-request.msg.html

(cl:defclass <GetFloat64-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFloat64-request (<GetFloat64-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloat64-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloat64-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GetFloat64-request> is deprecated: use mrs_msgs-srv:GetFloat64-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloat64-request>) ostream)
  "Serializes a message object of type '<GetFloat64-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloat64-request>) istream)
  "Deserializes a message object of type '<GetFloat64-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloat64-request>)))
  "Returns string type for a service object of type '<GetFloat64-request>"
  "mrs_msgs/GetFloat64Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloat64-request)))
  "Returns string type for a service object of type 'GetFloat64-request"
  "mrs_msgs/GetFloat64Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloat64-request>)))
  "Returns md5sum for a message object of type '<GetFloat64-request>"
  "13e23e74b0a02943a0d2f6c5c29a5cd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloat64-request)))
  "Returns md5sum for a message object of type 'GetFloat64-request"
  "13e23e74b0a02943a0d2f6c5c29a5cd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloat64-request>)))
  "Returns full string definition for message of type '<GetFloat64-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloat64-request)))
  "Returns full string definition for message of type 'GetFloat64-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloat64-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloat64-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloat64-request
))
;//! \htmlinclude GetFloat64-response.msg.html

(cl:defclass <GetFloat64-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetFloat64-response (<GetFloat64-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFloat64-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFloat64-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<GetFloat64-response> is deprecated: use mrs_msgs-srv:GetFloat64-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GetFloat64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:value-val is deprecated.  Use mrs_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetFloat64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFloat64-response>) ostream)
  "Serializes a message object of type '<GetFloat64-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFloat64-response>) istream)
  "Deserializes a message object of type '<GetFloat64-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFloat64-response>)))
  "Returns string type for a service object of type '<GetFloat64-response>"
  "mrs_msgs/GetFloat64Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloat64-response)))
  "Returns string type for a service object of type 'GetFloat64-response"
  "mrs_msgs/GetFloat64Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFloat64-response>)))
  "Returns md5sum for a message object of type '<GetFloat64-response>"
  "13e23e74b0a02943a0d2f6c5c29a5cd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFloat64-response)))
  "Returns md5sum for a message object of type 'GetFloat64-response"
  "13e23e74b0a02943a0d2f6c5c29a5cd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFloat64-response>)))
  "Returns full string definition for message of type '<GetFloat64-response>"
  (cl:format cl:nil "float64 value~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFloat64-response)))
  "Returns full string definition for message of type 'GetFloat64-response"
  (cl:format cl:nil "float64 value~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFloat64-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFloat64-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFloat64-response
    (cl:cons ':value (value msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFloat64)))
  'GetFloat64-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFloat64)))
  'GetFloat64-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFloat64)))
  "Returns string type for a service object of type '<GetFloat64>"
  "mrs_msgs/GetFloat64")