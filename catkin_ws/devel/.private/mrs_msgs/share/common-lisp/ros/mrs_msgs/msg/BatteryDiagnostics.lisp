; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude BatteryDiagnostics.msg.html

(cl:defclass <BatteryDiagnostics> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0))
)

(cl:defclass BatteryDiagnostics (<BatteryDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<BatteryDiagnostics> is deprecated: use mrs_msgs-msg:BatteryDiagnostics instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <BatteryDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:voltage-val is deprecated.  Use mrs_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <BatteryDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:current-val is deprecated.  Use mrs_msgs-msg:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryDiagnostics>) ostream)
  "Serializes a message object of type '<BatteryDiagnostics>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryDiagnostics>) istream)
  "Deserializes a message object of type '<BatteryDiagnostics>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryDiagnostics>)))
  "Returns string type for a message object of type '<BatteryDiagnostics>"
  "mrs_msgs/BatteryDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryDiagnostics)))
  "Returns string type for a message object of type 'BatteryDiagnostics"
  "mrs_msgs/BatteryDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryDiagnostics>)))
  "Returns md5sum for a message object of type '<BatteryDiagnostics>"
  "9e237a0971ec09fc952c0717bd077bf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryDiagnostics)))
  "Returns md5sum for a message object of type 'BatteryDiagnostics"
  "9e237a0971ec09fc952c0717bd077bf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryDiagnostics>)))
  "Returns full string definition for message of type '<BatteryDiagnostics>"
  (cl:format cl:nil "float32 voltage~%float32 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryDiagnostics)))
  "Returns full string definition for message of type 'BatteryDiagnostics"
  (cl:format cl:nil "float32 voltage~%float32 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryDiagnostics>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryDiagnostics
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
))
