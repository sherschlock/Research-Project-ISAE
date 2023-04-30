; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ReferenceSrv-request.msg.html

(cl:defclass <ReferenceSrv-request> (roslisp-msg-protocol:ros-message)
  ((reference
    :reader reference
    :initarg :reference
    :type mrs_msgs-msg:Reference
    :initform (cl:make-instance 'mrs_msgs-msg:Reference)))
)

(cl:defclass ReferenceSrv-request (<ReferenceSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ReferenceSrv-request> is deprecated: use mrs_msgs-srv:ReferenceSrv-request instead.")))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <ReferenceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:reference-val is deprecated.  Use mrs_msgs-srv:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceSrv-request>) ostream)
  "Serializes a message object of type '<ReferenceSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceSrv-request>) istream)
  "Deserializes a message object of type '<ReferenceSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceSrv-request>)))
  "Returns string type for a service object of type '<ReferenceSrv-request>"
  "mrs_msgs/ReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceSrv-request)))
  "Returns string type for a service object of type 'ReferenceSrv-request"
  "mrs_msgs/ReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceSrv-request>)))
  "Returns md5sum for a message object of type '<ReferenceSrv-request>"
  "d2bd04078f0e6934b3b579215143a7f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceSrv-request)))
  "Returns md5sum for a message object of type 'ReferenceSrv-request"
  "d2bd04078f0e6934b3b579215143a7f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceSrv-request>)))
  "Returns full string definition for message of type '<ReferenceSrv-request>"
  (cl:format cl:nil "mrs_msgs/Reference reference~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceSrv-request)))
  "Returns full string definition for message of type 'ReferenceSrv-request"
  (cl:format cl:nil "mrs_msgs/Reference reference~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceSrv-request
    (cl:cons ':reference (reference msg))
))
;//! \htmlinclude ReferenceSrv-response.msg.html

(cl:defclass <ReferenceSrv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ReferenceSrv-response (<ReferenceSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ReferenceSrv-response> is deprecated: use mrs_msgs-srv:ReferenceSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceSrv-response>) ostream)
  "Serializes a message object of type '<ReferenceSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceSrv-response>) istream)
  "Deserializes a message object of type '<ReferenceSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceSrv-response>)))
  "Returns string type for a service object of type '<ReferenceSrv-response>"
  "mrs_msgs/ReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceSrv-response)))
  "Returns string type for a service object of type 'ReferenceSrv-response"
  "mrs_msgs/ReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceSrv-response>)))
  "Returns md5sum for a message object of type '<ReferenceSrv-response>"
  "d2bd04078f0e6934b3b579215143a7f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceSrv-response)))
  "Returns md5sum for a message object of type 'ReferenceSrv-response"
  "d2bd04078f0e6934b3b579215143a7f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceSrv-response>)))
  "Returns full string definition for message of type '<ReferenceSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceSrv-response)))
  "Returns full string definition for message of type 'ReferenceSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReferenceSrv)))
  'ReferenceSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReferenceSrv)))
  'ReferenceSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceSrv)))
  "Returns string type for a service object of type '<ReferenceSrv>"
  "mrs_msgs/ReferenceSrv")