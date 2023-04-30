; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude TransformPoseSrv-request.msg.html

(cl:defclass <TransformPoseSrv-request> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass TransformPoseSrv-request (<TransformPoseSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformPoseSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformPoseSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TransformPoseSrv-request> is deprecated: use mrs_msgs-srv:TransformPoseSrv-request instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <TransformPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:frame_id-val is deprecated.  Use mrs_msgs-srv:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TransformPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pose-val is deprecated.  Use mrs_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformPoseSrv-request>) ostream)
  "Serializes a message object of type '<TransformPoseSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformPoseSrv-request>) istream)
  "Deserializes a message object of type '<TransformPoseSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformPoseSrv-request>)))
  "Returns string type for a service object of type '<TransformPoseSrv-request>"
  "mrs_msgs/TransformPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformPoseSrv-request)))
  "Returns string type for a service object of type 'TransformPoseSrv-request"
  "mrs_msgs/TransformPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformPoseSrv-request>)))
  "Returns md5sum for a message object of type '<TransformPoseSrv-request>"
  "1901b074a942ac07e72424a456ae1f45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformPoseSrv-request)))
  "Returns md5sum for a message object of type 'TransformPoseSrv-request"
  "1901b074a942ac07e72424a456ae1f45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformPoseSrv-request>)))
  "Returns full string definition for message of type '<TransformPoseSrv-request>"
  (cl:format cl:nil "string frame_id~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformPoseSrv-request)))
  "Returns full string definition for message of type 'TransformPoseSrv-request"
  (cl:format cl:nil "string frame_id~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformPoseSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformPoseSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformPoseSrv-request
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude TransformPoseSrv-response.msg.html

(cl:defclass <TransformPoseSrv-response> (roslisp-msg-protocol:ros-message)
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
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass TransformPoseSrv-response (<TransformPoseSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformPoseSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformPoseSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<TransformPoseSrv-response> is deprecated: use mrs_msgs-srv:TransformPoseSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TransformPoseSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TransformPoseSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TransformPoseSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:pose-val is deprecated.  Use mrs_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformPoseSrv-response>) ostream)
  "Serializes a message object of type '<TransformPoseSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformPoseSrv-response>) istream)
  "Deserializes a message object of type '<TransformPoseSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformPoseSrv-response>)))
  "Returns string type for a service object of type '<TransformPoseSrv-response>"
  "mrs_msgs/TransformPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformPoseSrv-response)))
  "Returns string type for a service object of type 'TransformPoseSrv-response"
  "mrs_msgs/TransformPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformPoseSrv-response>)))
  "Returns md5sum for a message object of type '<TransformPoseSrv-response>"
  "1901b074a942ac07e72424a456ae1f45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformPoseSrv-response)))
  "Returns md5sum for a message object of type 'TransformPoseSrv-response"
  "1901b074a942ac07e72424a456ae1f45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformPoseSrv-response>)))
  "Returns full string definition for message of type '<TransformPoseSrv-response>"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformPoseSrv-response)))
  "Returns full string definition for message of type 'TransformPoseSrv-response"
  (cl:format cl:nil "bool success~%string message~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformPoseSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformPoseSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformPoseSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TransformPoseSrv)))
  'TransformPoseSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TransformPoseSrv)))
  'TransformPoseSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformPoseSrv)))
  "Returns string type for a service object of type '<TransformPoseSrv>"
  "mrs_msgs/TransformPoseSrv")