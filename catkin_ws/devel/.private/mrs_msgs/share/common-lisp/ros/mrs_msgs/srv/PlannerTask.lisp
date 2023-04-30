; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude PlannerTask-request.msg.html

(cl:defclass <PlannerTask-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (finish
    :reader finish
    :initarg :finish
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PlannerTask-request (<PlannerTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<PlannerTask-request> is deprecated: use mrs_msgs-srv:PlannerTask-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PlannerTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:start-val is deprecated.  Use mrs_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'finish-val :lambda-list '(m))
(cl:defmethod finish-val ((m <PlannerTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:finish-val is deprecated.  Use mrs_msgs-srv:finish instead.")
  (finish m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerTask-request>) ostream)
  "Serializes a message object of type '<PlannerTask-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'start))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'finish))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerTask-request>) istream)
  "Deserializes a message object of type '<PlannerTask-request>"
  (cl:setf (cl:slot-value msg 'start) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'start)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'finish) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'finish)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerTask-request>)))
  "Returns string type for a service object of type '<PlannerTask-request>"
  "mrs_msgs/PlannerTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerTask-request)))
  "Returns string type for a service object of type 'PlannerTask-request"
  "mrs_msgs/PlannerTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerTask-request>)))
  "Returns md5sum for a message object of type '<PlannerTask-request>"
  "6dc53075a8451e1b38f8acc478452c9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerTask-request)))
  "Returns md5sum for a message object of type 'PlannerTask-request"
  "6dc53075a8451e1b38f8acc478452c9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerTask-request>)))
  "Returns full string definition for message of type '<PlannerTask-request>"
  (cl:format cl:nil "float64[4] start~%float64[4] finish~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerTask-request)))
  "Returns full string definition for message of type 'PlannerTask-request"
  (cl:format cl:nil "float64[4] start~%float64[4] finish~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerTask-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'start) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'finish) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerTask-request
    (cl:cons ':start (start msg))
    (cl:cons ':finish (finish msg))
))
;//! \htmlinclude PlannerTask-response.msg.html

(cl:defclass <PlannerTask-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass PlannerTask-response (<PlannerTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<PlannerTask-response> is deprecated: use mrs_msgs-srv:PlannerTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlannerTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PlannerTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerTask-response>) ostream)
  "Serializes a message object of type '<PlannerTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerTask-response>) istream)
  "Deserializes a message object of type '<PlannerTask-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerTask-response>)))
  "Returns string type for a service object of type '<PlannerTask-response>"
  "mrs_msgs/PlannerTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerTask-response)))
  "Returns string type for a service object of type 'PlannerTask-response"
  "mrs_msgs/PlannerTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerTask-response>)))
  "Returns md5sum for a message object of type '<PlannerTask-response>"
  "6dc53075a8451e1b38f8acc478452c9d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerTask-response)))
  "Returns md5sum for a message object of type 'PlannerTask-response"
  "6dc53075a8451e1b38f8acc478452c9d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerTask-response>)))
  "Returns full string definition for message of type '<PlannerTask-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerTask-response)))
  "Returns full string definition for message of type 'PlannerTask-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerTask-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerTask-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlannerTask)))
  'PlannerTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlannerTask)))
  'PlannerTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerTask)))
  "Returns string type for a service object of type '<PlannerTask>"
  "mrs_msgs/PlannerTask")