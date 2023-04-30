; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ValidateReferenceList-request.msg.html

(cl:defclass <ValidateReferenceList-request> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type mrs_msgs-msg:ReferenceList
    :initform (cl:make-instance 'mrs_msgs-msg:ReferenceList)))
)

(cl:defclass ValidateReferenceList-request (<ValidateReferenceList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ValidateReferenceList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ValidateReferenceList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ValidateReferenceList-request> is deprecated: use mrs_msgs-srv:ValidateReferenceList-request instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <ValidateReferenceList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:list-val is deprecated.  Use mrs_msgs-srv:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ValidateReferenceList-request>) ostream)
  "Serializes a message object of type '<ValidateReferenceList-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'list) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ValidateReferenceList-request>) istream)
  "Deserializes a message object of type '<ValidateReferenceList-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'list) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ValidateReferenceList-request>)))
  "Returns string type for a service object of type '<ValidateReferenceList-request>"
  "mrs_msgs/ValidateReferenceListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ValidateReferenceList-request)))
  "Returns string type for a service object of type 'ValidateReferenceList-request"
  "mrs_msgs/ValidateReferenceListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ValidateReferenceList-request>)))
  "Returns md5sum for a message object of type '<ValidateReferenceList-request>"
  "816d5618f8279774a4a676445fc80658")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ValidateReferenceList-request)))
  "Returns md5sum for a message object of type 'ValidateReferenceList-request"
  "816d5618f8279774a4a676445fc80658")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ValidateReferenceList-request>)))
  "Returns full string definition for message of type '<ValidateReferenceList-request>"
  (cl:format cl:nil "mrs_msgs/ReferenceList list~%~%================================================================================~%MSG: mrs_msgs/ReferenceList~%# A list of references.~%~%std_msgs/Header header~%mrs_msgs/Reference[] list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ValidateReferenceList-request)))
  "Returns full string definition for message of type 'ValidateReferenceList-request"
  (cl:format cl:nil "mrs_msgs/ReferenceList list~%~%================================================================================~%MSG: mrs_msgs/ReferenceList~%# A list of references.~%~%std_msgs/Header header~%mrs_msgs/Reference[] list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ValidateReferenceList-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ValidateReferenceList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ValidateReferenceList-request
    (cl:cons ':list (list msg))
))
;//! \htmlinclude ValidateReferenceList-response.msg.html

(cl:defclass <ValidateReferenceList-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ValidateReferenceList-response (<ValidateReferenceList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ValidateReferenceList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ValidateReferenceList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ValidateReferenceList-response> is deprecated: use mrs_msgs-srv:ValidateReferenceList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ValidateReferenceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ValidateReferenceList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ValidateReferenceList-response>) ostream)
  "Serializes a message object of type '<ValidateReferenceList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'success))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'success))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ValidateReferenceList-response>) istream)
  "Deserializes a message object of type '<ValidateReferenceList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'success) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'success)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ValidateReferenceList-response>)))
  "Returns string type for a service object of type '<ValidateReferenceList-response>"
  "mrs_msgs/ValidateReferenceListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ValidateReferenceList-response)))
  "Returns string type for a service object of type 'ValidateReferenceList-response"
  "mrs_msgs/ValidateReferenceListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ValidateReferenceList-response>)))
  "Returns md5sum for a message object of type '<ValidateReferenceList-response>"
  "816d5618f8279774a4a676445fc80658")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ValidateReferenceList-response)))
  "Returns md5sum for a message object of type 'ValidateReferenceList-response"
  "816d5618f8279774a4a676445fc80658")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ValidateReferenceList-response>)))
  "Returns full string definition for message of type '<ValidateReferenceList-response>"
  (cl:format cl:nil "bool[] success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ValidateReferenceList-response)))
  "Returns full string definition for message of type 'ValidateReferenceList-response"
  (cl:format cl:nil "bool[] success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ValidateReferenceList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'success) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ValidateReferenceList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ValidateReferenceList-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ValidateReferenceList)))
  'ValidateReferenceList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ValidateReferenceList)))
  'ValidateReferenceList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ValidateReferenceList)))
  "Returns string type for a service object of type '<ValidateReferenceList>"
  "mrs_msgs/ValidateReferenceList")