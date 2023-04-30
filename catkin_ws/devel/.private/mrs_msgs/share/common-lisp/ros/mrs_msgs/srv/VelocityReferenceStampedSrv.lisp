; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude VelocityReferenceStampedSrv-request.msg.html

(cl:defclass <VelocityReferenceStampedSrv-request> (roslisp-msg-protocol:ros-message)
  ((reference
    :reader reference
    :initarg :reference
    :type mrs_msgs-msg:VelocityReferenceStamped
    :initform (cl:make-instance 'mrs_msgs-msg:VelocityReferenceStamped)))
)

(cl:defclass VelocityReferenceStampedSrv-request (<VelocityReferenceStampedSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityReferenceStampedSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityReferenceStampedSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<VelocityReferenceStampedSrv-request> is deprecated: use mrs_msgs-srv:VelocityReferenceStampedSrv-request instead.")))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <VelocityReferenceStampedSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:reference-val is deprecated.  Use mrs_msgs-srv:reference instead.")
  (reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityReferenceStampedSrv-request>) ostream)
  "Serializes a message object of type '<VelocityReferenceStampedSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityReferenceStampedSrv-request>) istream)
  "Deserializes a message object of type '<VelocityReferenceStampedSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityReferenceStampedSrv-request>)))
  "Returns string type for a service object of type '<VelocityReferenceStampedSrv-request>"
  "mrs_msgs/VelocityReferenceStampedSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReferenceStampedSrv-request)))
  "Returns string type for a service object of type 'VelocityReferenceStampedSrv-request"
  "mrs_msgs/VelocityReferenceStampedSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityReferenceStampedSrv-request>)))
  "Returns md5sum for a message object of type '<VelocityReferenceStampedSrv-request>"
  "2049bed7ddaf936a6b0c045878f5182e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityReferenceStampedSrv-request)))
  "Returns md5sum for a message object of type 'VelocityReferenceStampedSrv-request"
  "2049bed7ddaf936a6b0c045878f5182e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityReferenceStampedSrv-request>)))
  "Returns full string definition for message of type '<VelocityReferenceStampedSrv-request>"
  (cl:format cl:nil "mrs_msgs/VelocityReferenceStamped reference~%~%================================================================================~%MSG: mrs_msgs/VelocityReferenceStamped~%# contains the frame_id = your reference frame of choice~%std_msgs/Header header~%~%mrs_msgs/VelocityReference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/VelocityReference~%# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityReferenceStampedSrv-request)))
  "Returns full string definition for message of type 'VelocityReferenceStampedSrv-request"
  (cl:format cl:nil "mrs_msgs/VelocityReferenceStamped reference~%~%================================================================================~%MSG: mrs_msgs/VelocityReferenceStamped~%# contains the frame_id = your reference frame of choice~%std_msgs/Header header~%~%mrs_msgs/VelocityReference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/VelocityReference~%# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityReferenceStampedSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityReferenceStampedSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityReferenceStampedSrv-request
    (cl:cons ':reference (reference msg))
))
;//! \htmlinclude VelocityReferenceStampedSrv-response.msg.html

(cl:defclass <VelocityReferenceStampedSrv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass VelocityReferenceStampedSrv-response (<VelocityReferenceStampedSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityReferenceStampedSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityReferenceStampedSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<VelocityReferenceStampedSrv-response> is deprecated: use mrs_msgs-srv:VelocityReferenceStampedSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VelocityReferenceStampedSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <VelocityReferenceStampedSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityReferenceStampedSrv-response>) ostream)
  "Serializes a message object of type '<VelocityReferenceStampedSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityReferenceStampedSrv-response>) istream)
  "Deserializes a message object of type '<VelocityReferenceStampedSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityReferenceStampedSrv-response>)))
  "Returns string type for a service object of type '<VelocityReferenceStampedSrv-response>"
  "mrs_msgs/VelocityReferenceStampedSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReferenceStampedSrv-response)))
  "Returns string type for a service object of type 'VelocityReferenceStampedSrv-response"
  "mrs_msgs/VelocityReferenceStampedSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityReferenceStampedSrv-response>)))
  "Returns md5sum for a message object of type '<VelocityReferenceStampedSrv-response>"
  "2049bed7ddaf936a6b0c045878f5182e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityReferenceStampedSrv-response)))
  "Returns md5sum for a message object of type 'VelocityReferenceStampedSrv-response"
  "2049bed7ddaf936a6b0c045878f5182e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityReferenceStampedSrv-response>)))
  "Returns full string definition for message of type '<VelocityReferenceStampedSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityReferenceStampedSrv-response)))
  "Returns full string definition for message of type 'VelocityReferenceStampedSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityReferenceStampedSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityReferenceStampedSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityReferenceStampedSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VelocityReferenceStampedSrv)))
  'VelocityReferenceStampedSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VelocityReferenceStampedSrv)))
  'VelocityReferenceStampedSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReferenceStampedSrv)))
  "Returns string type for a service object of type '<VelocityReferenceStampedSrv>"
  "mrs_msgs/VelocityReferenceStampedSrv")