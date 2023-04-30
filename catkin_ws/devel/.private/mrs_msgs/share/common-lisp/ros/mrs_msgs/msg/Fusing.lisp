; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Fusing.msg.html

(cl:defclass <Fusing> (roslisp-msg-protocol:ros-message)
  ((model_state
    :reader model_state
    :initarg :model_state
    :type mrs_msgs-msg:ModelState
    :initform (cl:make-instance 'mrs_msgs-msg:ModelState))
   (is_fusing
    :reader is_fusing
    :initarg :is_fusing
    :type cl:boolean
    :initform cl:nil)
   (covariance
    :reader covariance
    :initarg :covariance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Fusing (<Fusing>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fusing>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fusing)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Fusing> is deprecated: use mrs_msgs-msg:Fusing instead.")))

(cl:ensure-generic-function 'model_state-val :lambda-list '(m))
(cl:defmethod model_state-val ((m <Fusing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:model_state-val is deprecated.  Use mrs_msgs-msg:model_state instead.")
  (model_state m))

(cl:ensure-generic-function 'is_fusing-val :lambda-list '(m))
(cl:defmethod is_fusing-val ((m <Fusing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:is_fusing-val is deprecated.  Use mrs_msgs-msg:is_fusing instead.")
  (is_fusing m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <Fusing>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:covariance-val is deprecated.  Use mrs_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fusing>) ostream)
  "Serializes a message object of type '<Fusing>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_fusing) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fusing>) istream)
  "Deserializes a message object of type '<Fusing>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_state) istream)
    (cl:setf (cl:slot-value msg 'is_fusing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'covariance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fusing>)))
  "Returns string type for a message object of type '<Fusing>"
  "mrs_msgs/Fusing")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fusing)))
  "Returns string type for a message object of type 'Fusing"
  "mrs_msgs/Fusing")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fusing>)))
  "Returns md5sum for a message object of type '<Fusing>"
  "140fb768711cb5688a03db600c114f3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fusing)))
  "Returns md5sum for a message object of type 'Fusing"
  "140fb768711cb5688a03db600c114f3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fusing>)))
  "Returns full string definition for message of type '<Fusing>"
  (cl:format cl:nil "mrs_msgs/ModelState model_state~%bool is_fusing~%float64 covariance~%~%================================================================================~%MSG: mrs_msgs/ModelState~%uint8 TILT=5~%uint8 ACCELERATION=3~%uint8 VELOCITY=1~%uint8 POSITION=0~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fusing)))
  "Returns full string definition for message of type 'Fusing"
  (cl:format cl:nil "mrs_msgs/ModelState model_state~%bool is_fusing~%float64 covariance~%~%================================================================================~%MSG: mrs_msgs/ModelState~%uint8 TILT=5~%uint8 ACCELERATION=3~%uint8 VELOCITY=1~%uint8 POSITION=0~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fusing>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_state))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fusing>))
  "Converts a ROS message object to a list"
  (cl:list 'Fusing
    (cl:cons ':model_state (model_state msg))
    (cl:cons ':is_fusing (is_fusing msg))
    (cl:cons ':covariance (covariance msg))
))
