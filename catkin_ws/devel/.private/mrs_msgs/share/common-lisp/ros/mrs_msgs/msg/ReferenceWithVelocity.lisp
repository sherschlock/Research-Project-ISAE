; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ReferenceWithVelocity.msg.html

(cl:defclass <ReferenceWithVelocity> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (enforce_velocity
    :reader enforce_velocity
    :initarg :enforce_velocity
    :type cl:boolean
    :initform cl:nil)
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass ReferenceWithVelocity (<ReferenceWithVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReferenceWithVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReferenceWithVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ReferenceWithVelocity> is deprecated: use mrs_msgs-msg:ReferenceWithVelocity instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ReferenceWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position-val is deprecated.  Use mrs_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <ReferenceWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heading-val is deprecated.  Use mrs_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'enforce_velocity-val :lambda-list '(m))
(cl:defmethod enforce_velocity-val ((m <ReferenceWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:enforce_velocity-val is deprecated.  Use mrs_msgs-msg:enforce_velocity instead.")
  (enforce_velocity m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ReferenceWithVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity-val is deprecated.  Use mrs_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReferenceWithVelocity>) ostream)
  "Serializes a message object of type '<ReferenceWithVelocity>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enforce_velocity) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReferenceWithVelocity>) istream)
  "Deserializes a message object of type '<ReferenceWithVelocity>"
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
    (cl:setf (cl:slot-value msg 'enforce_velocity) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReferenceWithVelocity>)))
  "Returns string type for a message object of type '<ReferenceWithVelocity>"
  "mrs_msgs/ReferenceWithVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReferenceWithVelocity)))
  "Returns string type for a message object of type 'ReferenceWithVelocity"
  "mrs_msgs/ReferenceWithVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReferenceWithVelocity>)))
  "Returns md5sum for a message object of type '<ReferenceWithVelocity>"
  "9fb8aa80a4919f0556c2cb3bfb9a6bab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReferenceWithVelocity)))
  "Returns md5sum for a message object of type 'ReferenceWithVelocity"
  "9fb8aa80a4919f0556c2cb3bfb9a6bab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReferenceWithVelocity>)))
  "Returns full string definition for message of type '<ReferenceWithVelocity>"
  (cl:format cl:nil "# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%bool enforce_velocity~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReferenceWithVelocity)))
  "Returns full string definition for message of type 'ReferenceWithVelocity"
  (cl:format cl:nil "# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%bool enforce_velocity~%geometry_msgs/Vector3 velocity~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReferenceWithVelocity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReferenceWithVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'ReferenceWithVelocity
    (cl:cons ':position (position msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':enforce_velocity (enforce_velocity msg))
    (cl:cons ':velocity (velocity msg))
))
