; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ControllerStatus.msg.html

(cl:defclass <ControllerStatus> (roslisp-msg-protocol:ros-message)
  ((active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControllerStatus (<ControllerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ControllerStatus> is deprecated: use mrs_msgs-msg:ControllerStatus instead.")))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <ControllerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:active-val is deprecated.  Use mrs_msgs-msg:active instead.")
  (active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerStatus>) ostream)
  "Serializes a message object of type '<ControllerStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerStatus>) istream)
  "Deserializes a message object of type '<ControllerStatus>"
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerStatus>)))
  "Returns string type for a message object of type '<ControllerStatus>"
  "mrs_msgs/ControllerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerStatus)))
  "Returns string type for a message object of type 'ControllerStatus"
  "mrs_msgs/ControllerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerStatus>)))
  "Returns md5sum for a message object of type '<ControllerStatus>"
  "2c5cfb0a2565df41de6873994aee57d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerStatus)))
  "Returns md5sum for a message object of type 'ControllerStatus"
  "2c5cfb0a2565df41de6873994aee57d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerStatus>)))
  "Returns full string definition for message of type '<ControllerStatus>"
  (cl:format cl:nil "bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerStatus)))
  "Returns full string definition for message of type 'ControllerStatus"
  (cl:format cl:nil "bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerStatus
    (cl:cons ':active (active msg))
))
