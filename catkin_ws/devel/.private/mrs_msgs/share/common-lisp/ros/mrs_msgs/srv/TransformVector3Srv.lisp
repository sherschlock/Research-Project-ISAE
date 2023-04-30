; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude TransformVector3Srv-request.msg.html

(cl:defclass <TransformVector3Srv-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (vector
    :reader vector
    :initarg :vector
    :type geometry_msgs-msg:Vector3Stamped
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3Stamped)))
)

(cl:defclass TransformVector3Srv-request (<TransformVector3Srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformVector3Srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformVector3Srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TransformVector3Srv-request> is deprecated: use mrs_msgs-srv:TransformVector3Srv-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <TransformVector3Srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:frame_id-val is deprecated.  Use mrs_msgs-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'vector-val :lambda-list '(m))
(cl:defmethod vector-val ((m <TransformVector3Srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:vector-val is deprecated.  Use mrs_msgs-srv:vector instead.")
  (vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformVector3Srv-request>) ostream)
  "Serializes a message object of type '<TransformVector3Srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformVector3Srv-request>) istream)
  "Deserializes a message object of type '<TransformVector3Srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformVector3Srv-request>)))
  "Returns string type for a service object of type '<TransformVector3Srv-request>"
  "mrs_msgs/TransformVector3SrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformVector3Srv-request)))
  "Returns string type for a service object of type 'TransformVector3Srv-request"
  "mrs_msgs/TransformVector3SrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformVector3Srv-request>)))
  "Returns md5sum for a message object of type '<TransformVector3Srv-request>"
  "997fb77f6976e071a4e765fdba14bb92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformVector3Srv-request)))
  "Returns md5sum for a message object of type 'TransformVector3Srv-request"
  "997fb77f6976e071a4e765fdba14bb92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformVector3Srv-request>)))
  "Returns full string definition for message of type '<TransformVector3Srv-request>"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Vector3Stamped vector~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformVector3Srv-request)))
  "Returns full string definition for message of type 'TransformVector3Srv-request"
  (cl:format cl:nil "string frame_id~%geometry_msgs/Vector3Stamped vector~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformVector3Srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformVector3Srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformVector3Srv-request
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':vector (vector msg))
))
;//! \htmlinclude TransformVector3Srv-response.msg.html

(cl:defclass <TransformVector3Srv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (vector
    :reader vector
    :initarg :vector
    :type geometry_msgs-msg:Vector3Stamped
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3Stamped)))
)

(cl:defclass TransformVector3Srv-response (<TransformVector3Srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformVector3Srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformVector3Srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TransformVector3Srv-response> is deprecated: use mrs_msgs-srv:TransformVector3Srv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TransformVector3Srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TransformVector3Srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'vector-val :lambda-list '(m))
(cl:defmethod vector-val ((m <TransformVector3Srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:vector-val is deprecated.  Use mrs_msgs-srv:vector instead.")
  (vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformVector3Srv-response>) ostream)
  "Serializes a message object of type '<TransformVector3Srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformVector3Srv-response>) istream)
  "Deserializes a message object of type '<TransformVector3Srv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformVector3Srv-response>)))
  "Returns string type for a service object of type '<TransformVector3Srv-response>"
  "mrs_msgs/TransformVector3SrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformVector3Srv-response)))
  "Returns string type for a service object of type 'TransformVector3Srv-response"
  "mrs_msgs/TransformVector3SrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformVector3Srv-response>)))
  "Returns md5sum for a message object of type '<TransformVector3Srv-response>"
  "997fb77f6976e071a4e765fdba14bb92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformVector3Srv-response)))
  "Returns md5sum for a message object of type 'TransformVector3Srv-response"
  "997fb77f6976e071a4e765fdba14bb92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformVector3Srv-response>)))
  "Returns full string definition for message of type '<TransformVector3Srv-response>"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/Vector3Stamped vector~%~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformVector3Srv-response)))
  "Returns full string definition for message of type 'TransformVector3Srv-response"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/Vector3Stamped vector~%~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformVector3Srv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformVector3Srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformVector3Srv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':vector (vector msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TransformVector3Srv)))
  'TransformVector3Srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TransformVector3Srv)))
  'TransformVector3Srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformVector3Srv)))
  "Returns string type for a service object of type '<TransformVector3Srv>"
  "mrs_msgs/TransformVector3Srv")