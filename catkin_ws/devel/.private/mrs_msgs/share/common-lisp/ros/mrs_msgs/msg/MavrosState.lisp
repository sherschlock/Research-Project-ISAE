; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude MavrosState.msg.html

(cl:defclass <MavrosState> (roslisp-msg-protocol:ros-message)
  ((armed
    :reader armed
    :initarg :armed
    :type cl:boolean
    :initform cl:nil)
   (offboard
    :reader offboard
    :initarg :offboard
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MavrosState (<MavrosState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MavrosState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MavrosState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<MavrosState> is deprecated: use mrs_msgs-msg:MavrosState instead.")))

(cl:ensure-generic-function 'armed-val :lambda-list '(m))
(cl:defmethod armed-val ((m <MavrosState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:armed-val is deprecated.  Use mrs_msgs-msg:armed instead.")
  (armed m))

(cl:ensure-generic-function 'offboard-val :lambda-list '(m))
(cl:defmethod offboard-val ((m <MavrosState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:offboard-val is deprecated.  Use mrs_msgs-msg:offboard instead.")
  (offboard m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MavrosState>) ostream)
  "Serializes a message object of type '<MavrosState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'offboard) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MavrosState>) istream)
  "Deserializes a message object of type '<MavrosState>"
    (cl:setf (cl:slot-value msg 'armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'offboard) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MavrosState>)))
  "Returns string type for a message object of type '<MavrosState>"
  "mrs_msgs/MavrosState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MavrosState)))
  "Returns string type for a message object of type 'MavrosState"
  "mrs_msgs/MavrosState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MavrosState>)))
  "Returns md5sum for a message object of type '<MavrosState>"
  "16648b716cc061680e9afcd8a78601a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MavrosState)))
  "Returns md5sum for a message object of type 'MavrosState"
  "16648b716cc061680e9afcd8a78601a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MavrosState>)))
  "Returns full string definition for message of type '<MavrosState>"
  (cl:format cl:nil "bool armed~%bool offboard~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MavrosState)))
  "Returns full string definition for message of type 'MavrosState"
  (cl:format cl:nil "bool armed~%bool offboard~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MavrosState>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MavrosState>))
  "Converts a ROS message object to a list"
  (cl:list 'MavrosState
    (cl:cons ':armed (armed msg))
    (cl:cons ':offboard (offboard msg))
))
