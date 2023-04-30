; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude SystemDiagnostics.msg.html

(cl:defclass <SystemDiagnostics> (roslisp-msg-protocol:ros-message)
  ((cpu_load
    :reader cpu_load
    :initarg :cpu_load
    :type cl:float
    :initform 0.0)
   (errors_comm
    :reader errors_comm
    :initarg :errors_comm
    :type cl:integer
    :initform 0))
)

(cl:defclass SystemDiagnostics (<SystemDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<SystemDiagnostics> is deprecated: use mrs_msgs-msg:SystemDiagnostics instead.")))

(cl:ensure-generic-function 'cpu_load-val :lambda-list '(m))
(cl:defmethod cpu_load-val ((m <SystemDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cpu_load-val is deprecated.  Use mrs_msgs-msg:cpu_load instead.")
  (cpu_load m))

(cl:ensure-generic-function 'errors_comm-val :lambda-list '(m))
(cl:defmethod errors_comm-val ((m <SystemDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:errors_comm-val is deprecated.  Use mrs_msgs-msg:errors_comm instead.")
  (errors_comm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemDiagnostics>) ostream)
  "Serializes a message object of type '<SystemDiagnostics>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errors_comm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errors_comm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'errors_comm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'errors_comm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemDiagnostics>) istream)
  "Deserializes a message object of type '<SystemDiagnostics>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_load) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'errors_comm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'errors_comm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'errors_comm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'errors_comm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemDiagnostics>)))
  "Returns string type for a message object of type '<SystemDiagnostics>"
  "mrs_msgs/SystemDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemDiagnostics)))
  "Returns string type for a message object of type 'SystemDiagnostics"
  "mrs_msgs/SystemDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemDiagnostics>)))
  "Returns md5sum for a message object of type '<SystemDiagnostics>"
  "cde81d66be8af36e6d2be4bdc2a22417")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemDiagnostics)))
  "Returns md5sum for a message object of type 'SystemDiagnostics"
  "cde81d66be8af36e6d2be4bdc2a22417")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemDiagnostics>)))
  "Returns full string definition for message of type '<SystemDiagnostics>"
  (cl:format cl:nil "float32 cpu_load~%uint32 errors_comm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemDiagnostics)))
  "Returns full string definition for message of type 'SystemDiagnostics"
  (cl:format cl:nil "float32 cpu_load~%uint32 errors_comm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemDiagnostics>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemDiagnostics
    (cl:cons ':cpu_load (cpu_load msg))
    (cl:cons ':errors_comm (errors_comm msg))
))
