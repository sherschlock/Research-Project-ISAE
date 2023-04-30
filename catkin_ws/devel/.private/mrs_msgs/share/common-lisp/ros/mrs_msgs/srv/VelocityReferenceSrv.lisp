; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude VelocityReferenceSrv-request.msg.html

(cl:defclass <VelocityReferenceSrv-request> (roslisp-msg-protocol:ros-message)
  ((reference
    :reader reference
    :initarg :reference
    :type mrs_msgs-msg:VelocityReference
    :initform (cl:make-instance 'mrs_msgs-msg:VelocityReference)))
)

(cl:defclass VelocityReferenceSrv-request (<VelocityReferenceSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityReferenceSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityReferenceSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<VelocityReferenceSrv-request> is deprecated: use mrs_msgs-srv:VelocityReferenceSrv-request instead.")))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <VelocityReferenceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:reference-val is deprecated.  Use mrs_msgs-srv:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityReferenceSrv-request>) ostream)
  "Serializes a message object of type '<VelocityReferenceSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityReferenceSrv-request>) istream)
  "Deserializes a message object of type '<VelocityReferenceSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityReferenceSrv-request>)))
  "Returns string type for a service object of type '<VelocityReferenceSrv-request>"
  "mrs_msgs/VelocityReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReferenceSrv-request)))
  "Returns string type for a service object of type 'VelocityReferenceSrv-request"
  "mrs_msgs/VelocityReferenceSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityReferenceSrv-request>)))
  "Returns md5sum for a message object of type '<VelocityReferenceSrv-request>"
  "0cfa385329ffcd17cfb0ba49845e356c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityReferenceSrv-request)))
  "Returns md5sum for a message object of type 'VelocityReferenceSrv-request"
  "0cfa385329ffcd17cfb0ba49845e356c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityReferenceSrv-request>)))
  "Returns full string definition for message of type '<VelocityReferenceSrv-request>"
  (cl:format cl:nil "mrs_msgs/VelocityReference reference~%~%================================================================================~%MSG: mrs_msgs/VelocityReference~%# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityReferenceSrv-request)))
  "Returns full string definition for message of type 'VelocityReferenceSrv-request"
  (cl:format cl:nil "mrs_msgs/VelocityReference reference~%~%================================================================================~%MSG: mrs_msgs/VelocityReference~%# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityReferenceSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityReferenceSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityReferenceSrv-request
    (cl:cons ':reference (reference msg))
))
;//! \htmlinclude VelocityReferenceSrv-response.msg.html

(cl:defclass <VelocityReferenceSrv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass VelocityReferenceSrv-response (<VelocityReferenceSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityReferenceSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityReferenceSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<VelocityReferenceSrv-response> is deprecated: use mrs_msgs-srv:VelocityReferenceSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VelocityReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <VelocityReferenceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityReferenceSrv-response>) ostream)
  "Serializes a message object of type '<VelocityReferenceSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityReferenceSrv-response>) istream)
  "Deserializes a message object of type '<VelocityReferenceSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityReferenceSrv-response>)))
  "Returns string type for a service object of type '<VelocityReferenceSrv-response>"
  "mrs_msgs/VelocityReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReferenceSrv-response)))
  "Returns string type for a service object of type 'VelocityReferenceSrv-response"
  "mrs_msgs/VelocityReferenceSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityReferenceSrv-response>)))
  "Returns md5sum for a message object of type '<VelocityReferenceSrv-response>"
  "0cfa385329ffcd17cfb0ba49845e356c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityReferenceSrv-response)))
  "Returns md5sum for a message object of type 'VelocityReferenceSrv-response"
  "0cfa385329ffcd17cfb0ba49845e356c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityReferenceSrv-response>)))
  "Returns full string definition for message of type '<VelocityReferenceSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityReferenceSrv-response)))
  "Returns full string definition for message of type 'VelocityReferenceSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityReferenceSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityReferenceSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityReferenceSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VelocityReferenceSrv)))
  'VelocityReferenceSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VelocityReferenceSrv)))
  'VelocityReferenceSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReferenceSrv)))
  "Returns string type for a service object of type '<VelocityReferenceSrv>"
  "mrs_msgs/VelocityReferenceSrv")