; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Reference.msg.html

(cl:defclass <Reference> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0))
)

(cl:defclass Reference (<Reference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Reference> is deprecated: use mrs_msgs-msg:Reference instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position-val is deprecated.  Use mrs_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heading-val is deprecated.  Use mrs_msgs-msg:heading instead.")
  (heading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reference>) ostream)
  "Serializes a message object of type '<Reference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reference>) istream)
  "Deserializes a message object of type '<Reference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reference>)))
  "Returns string type for a message object of type '<Reference>"
  "mrs_msgs/Reference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reference)))
  "Returns string type for a message object of type 'Reference"
  "mrs_msgs/Reference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reference>)))
  "Returns md5sum for a message object of type '<Reference>"
  "b7529b96025c54855f296c4413ac7578")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reference)))
  "Returns md5sum for a message object of type 'Reference"
  "b7529b96025c54855f296c4413ac7578")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reference>)))
  "Returns full string definition for message of type '<Reference>"
  (cl:format cl:nil "# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reference)))
  "Returns full string definition for message of type 'Reference"
  (cl:format cl:nil "# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reference>))
  "Converts a ROS message object to a list"
  (cl:list 'Reference
    (cl:cons ':position (position msg))
    (cl:cons ':heading (heading msg))
))
