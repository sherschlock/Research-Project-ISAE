; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ModelState.msg.html

(cl:defclass <ModelState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ModelState (<ModelState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModelState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModelState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ModelState> is deprecated: use mrs_msgs-msg:ModelState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ModelState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:state-val is deprecated.  Use mrs_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModelState>)))
    "Constants for message type '<ModelState>"
  '((:TILT . 5)
    (:ACCELERATION . 3)
    (:VELOCITY . 1)
    (:POSITION . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModelState)))
    "Constants for message type 'ModelState"
  '((:TILT . 5)
    (:ACCELERATION . 3)
    (:VELOCITY . 1)
    (:POSITION . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModelState>) ostream)
  "Serializes a message object of type '<ModelState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModelState>) istream)
  "Deserializes a message object of type '<ModelState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModelState>)))
  "Returns string type for a message object of type '<ModelState>"
  "mrs_msgs/ModelState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModelState)))
  "Returns string type for a message object of type 'ModelState"
  "mrs_msgs/ModelState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModelState>)))
  "Returns md5sum for a message object of type '<ModelState>"
  "a48c55bf77e2f2a8ec2e94f56ea6c941")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModelState)))
  "Returns md5sum for a message object of type 'ModelState"
  "a48c55bf77e2f2a8ec2e94f56ea6c941")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModelState>)))
  "Returns full string definition for message of type '<ModelState>"
  (cl:format cl:nil "uint8 TILT=5~%uint8 ACCELERATION=3~%uint8 VELOCITY=1~%uint8 POSITION=0~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModelState)))
  "Returns full string definition for message of type 'ModelState"
  (cl:format cl:nil "uint8 TILT=5~%uint8 ACCELERATION=3~%uint8 VELOCITY=1~%uint8 POSITION=0~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModelState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModelState>))
  "Converts a ROS message object to a list"
  (cl:list 'ModelState
    (cl:cons ':state (state msg))
))
