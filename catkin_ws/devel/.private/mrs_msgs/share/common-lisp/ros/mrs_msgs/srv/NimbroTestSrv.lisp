; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude NimbroTestSrv-request.msg.html

(cl:defclass <NimbroTestSrv-request> (roslisp-msg-protocol:ros-message)
  ((uav_name
    :reader uav_name
    :initarg :uav_name
    :type cl:string
    :initform "")
   (payload
    :reader payload
    :initarg :payload
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NimbroTestSrv-request (<NimbroTestSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NimbroTestSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NimbroTestSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<NimbroTestSrv-request> is deprecated: use mrs_msgs-srv:NimbroTestSrv-request instead.")))

(cl:ensure-generic-function 'uav_name-val :lambda-list '(m))
(cl:defmethod uav_name-val ((m <NimbroTestSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:uav_name-val is deprecated.  Use mrs_msgs-srv:uav_name instead.")
  (uav_name m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <NimbroTestSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:payload-val is deprecated.  Use mrs_msgs-srv:payload instead.")
  (payload m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NimbroTestSrv-request>) ostream)
  "Serializes a message object of type '<NimbroTestSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'payload))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NimbroTestSrv-request>) istream)
  "Deserializes a message object of type '<NimbroTestSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uav_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'payload) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'payload)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NimbroTestSrv-request>)))
  "Returns string type for a service object of type '<NimbroTestSrv-request>"
  "mrs_msgs/NimbroTestSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NimbroTestSrv-request)))
  "Returns string type for a service object of type 'NimbroTestSrv-request"
  "mrs_msgs/NimbroTestSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NimbroTestSrv-request>)))
  "Returns md5sum for a message object of type '<NimbroTestSrv-request>"
  "d75faa959a02195d82deada15533aecd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NimbroTestSrv-request)))
  "Returns md5sum for a message object of type 'NimbroTestSrv-request"
  "d75faa959a02195d82deada15533aecd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NimbroTestSrv-request>)))
  "Returns full string definition for message of type '<NimbroTestSrv-request>"
  (cl:format cl:nil "string uav_name~%float64[] payload~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NimbroTestSrv-request)))
  "Returns full string definition for message of type 'NimbroTestSrv-request"
  (cl:format cl:nil "string uav_name~%float64[] payload~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NimbroTestSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uav_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'payload) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NimbroTestSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NimbroTestSrv-request
    (cl:cons ':uav_name (uav_name msg))
    (cl:cons ':payload (payload msg))
))
;//! \htmlinclude NimbroTestSrv-response.msg.html

(cl:defclass <NimbroTestSrv-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass NimbroTestSrv-response (<NimbroTestSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NimbroTestSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NimbroTestSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<NimbroTestSrv-response> is deprecated: use mrs_msgs-srv:NimbroTestSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NimbroTestSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <NimbroTestSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NimbroTestSrv-response>) ostream)
  "Serializes a message object of type '<NimbroTestSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NimbroTestSrv-response>) istream)
  "Deserializes a message object of type '<NimbroTestSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NimbroTestSrv-response>)))
  "Returns string type for a service object of type '<NimbroTestSrv-response>"
  "mrs_msgs/NimbroTestSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NimbroTestSrv-response)))
  "Returns string type for a service object of type 'NimbroTestSrv-response"
  "mrs_msgs/NimbroTestSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NimbroTestSrv-response>)))
  "Returns md5sum for a message object of type '<NimbroTestSrv-response>"
  "d75faa959a02195d82deada15533aecd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NimbroTestSrv-response)))
  "Returns md5sum for a message object of type 'NimbroTestSrv-response"
  "d75faa959a02195d82deada15533aecd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NimbroTestSrv-response>)))
  "Returns full string definition for message of type '<NimbroTestSrv-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NimbroTestSrv-response)))
  "Returns full string definition for message of type 'NimbroTestSrv-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NimbroTestSrv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NimbroTestSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NimbroTestSrv-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NimbroTestSrv)))
  'NimbroTestSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NimbroTestSrv)))
  'NimbroTestSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NimbroTestSrv)))
  "Returns string type for a service object of type '<NimbroTestSrv>"
  "mrs_msgs/NimbroTestSrv")