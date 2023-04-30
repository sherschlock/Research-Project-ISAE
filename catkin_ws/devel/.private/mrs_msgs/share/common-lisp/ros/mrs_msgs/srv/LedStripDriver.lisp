; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude LedStripDriver-request.msg.html

(cl:defclass <LedStripDriver-request> (roslisp-msg-protocol:ros-message)
  ((output_a
    :reader output_a
    :initarg :output_a
    :type cl:fixnum
    :initform 0)
   (output_b
    :reader output_b
    :initarg :output_b
    :type cl:fixnum
    :initform 0)
   (output_vbat
    :reader output_vbat
    :initarg :output_vbat
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LedStripDriver-request (<LedStripDriver-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedStripDriver-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedStripDriver-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<LedStripDriver-request> is deprecated: use mrs_msgs-srv:LedStripDriver-request instead.")))

(cl:ensure-generic-function 'output_a-val :lambda-list '(m))
(cl:defmethod output_a-val ((m <LedStripDriver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:output_a-val is deprecated.  Use mrs_msgs-srv:output_a instead.")
  (output_a m))

(cl:ensure-generic-function 'output_b-val :lambda-list '(m))
(cl:defmethod output_b-val ((m <LedStripDriver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:output_b-val is deprecated.  Use mrs_msgs-srv:output_b instead.")
  (output_b m))

(cl:ensure-generic-function 'output_vbat-val :lambda-list '(m))
(cl:defmethod output_vbat-val ((m <LedStripDriver-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:output_vbat-val is deprecated.  Use mrs_msgs-srv:output_vbat instead.")
  (output_vbat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedStripDriver-request>) ostream)
  "Serializes a message object of type '<LedStripDriver-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'output_vbat) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedStripDriver-request>) istream)
  "Deserializes a message object of type '<LedStripDriver-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_b)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'output_vbat) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedStripDriver-request>)))
  "Returns string type for a service object of type '<LedStripDriver-request>"
  "mrs_msgs/LedStripDriverRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedStripDriver-request)))
  "Returns string type for a service object of type 'LedStripDriver-request"
  "mrs_msgs/LedStripDriverRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedStripDriver-request>)))
  "Returns md5sum for a message object of type '<LedStripDriver-request>"
  "699df7492006841ba00430a91859da78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedStripDriver-request)))
  "Returns md5sum for a message object of type 'LedStripDriver-request"
  "699df7492006841ba00430a91859da78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedStripDriver-request>)))
  "Returns full string definition for message of type '<LedStripDriver-request>"
  (cl:format cl:nil "uint8 output_a~%uint8 output_b~%bool output_vbat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedStripDriver-request)))
  "Returns full string definition for message of type 'LedStripDriver-request"
  (cl:format cl:nil "uint8 output_a~%uint8 output_b~%bool output_vbat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedStripDriver-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedStripDriver-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LedStripDriver-request
    (cl:cons ':output_a (output_a msg))
    (cl:cons ':output_b (output_b msg))
    (cl:cons ':output_vbat (output_vbat msg))
))
;//! \htmlinclude LedStripDriver-response.msg.html

(cl:defclass <LedStripDriver-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LedStripDriver-response (<LedStripDriver-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedStripDriver-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedStripDriver-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<LedStripDriver-response> is deprecated: use mrs_msgs-srv:LedStripDriver-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <LedStripDriver-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <LedStripDriver-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedStripDriver-response>) ostream)
  "Serializes a message object of type '<LedStripDriver-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedStripDriver-response>) istream)
  "Deserializes a message object of type '<LedStripDriver-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedStripDriver-response>)))
  "Returns string type for a service object of type '<LedStripDriver-response>"
  "mrs_msgs/LedStripDriverResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedStripDriver-response)))
  "Returns string type for a service object of type 'LedStripDriver-response"
  "mrs_msgs/LedStripDriverResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedStripDriver-response>)))
  "Returns md5sum for a message object of type '<LedStripDriver-response>"
  "699df7492006841ba00430a91859da78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedStripDriver-response)))
  "Returns md5sum for a message object of type 'LedStripDriver-response"
  "699df7492006841ba00430a91859da78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedStripDriver-response>)))
  "Returns full string definition for message of type '<LedStripDriver-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedStripDriver-response)))
  "Returns full string definition for message of type 'LedStripDriver-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedStripDriver-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedStripDriver-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LedStripDriver-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LedStripDriver)))
  'LedStripDriver-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LedStripDriver)))
  'LedStripDriver-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedStripDriver)))
  "Returns string type for a service object of type '<LedStripDriver>"
  "mrs_msgs/LedStripDriver")