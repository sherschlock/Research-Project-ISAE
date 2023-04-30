; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude VelocityReference.msg.html

(cl:defclass <VelocityReference> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (heading_rate
    :reader heading_rate
    :initarg :heading_rate
    :type cl:float
    :initform 0.0)
   (use_altitude
    :reader use_altitude
    :initarg :use_altitude
    :type cl:boolean
    :initform cl:nil)
   (use_heading
    :reader use_heading
    :initarg :use_heading
    :type cl:boolean
    :initform cl:nil)
   (use_heading_rate
    :reader use_heading_rate
    :initarg :use_heading_rate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VelocityReference (<VelocityReference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityReference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityReference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<VelocityReference> is deprecated: use mrs_msgs-msg:VelocityReference instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <VelocityReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity-val is deprecated.  Use mrs_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <VelocityReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:altitude-val is deprecated.  Use mrs_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <VelocityReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heading-val is deprecated.  Use mrs_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'heading_rate-val :lambda-list '(m))
(cl:defmethod heading_rate-val ((m <VelocityReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heading_rate-val is deprecated.  Use mrs_msgs-msg:heading_rate instead.")
  (heading_rate m))

(cl:ensure-generic-function 'use_altitude-val :lambda-list '(m))
(cl:defmethod use_altitude-val ((m <VelocityReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_altitude-val is deprecated.  Use mrs_msgs-msg:use_altitude instead.")
  (use_altitude m))

(cl:ensure-generic-function 'use_heading-val :lambda-list '(m))
(cl:defmethod use_heading-val ((m <VelocityReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_heading-val is deprecated.  Use mrs_msgs-msg:use_heading instead.")
  (use_heading m))

(cl:ensure-generic-function 'use_heading_rate-val :lambda-list '(m))
(cl:defmethod use_heading_rate-val ((m <VelocityReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:use_heading_rate-val is deprecated.  Use mrs_msgs-msg:use_heading_rate instead.")
  (use_heading_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityReference>) ostream)
  "Serializes a message object of type '<VelocityReference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_altitude) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_heading) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_heading_rate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityReference>) istream)
  "Deserializes a message object of type '<VelocityReference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'use_altitude) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_heading) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_heading_rate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityReference>)))
  "Returns string type for a message object of type '<VelocityReference>"
  "mrs_msgs/VelocityReference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityReference)))
  "Returns string type for a message object of type 'VelocityReference"
  "mrs_msgs/VelocityReference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityReference>)))
  "Returns md5sum for a message object of type '<VelocityReference>"
  "2348b640862acc25f552bfe7973e0390")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityReference)))
  "Returns md5sum for a message object of type 'VelocityReference"
  "2348b640862acc25f552bfe7973e0390")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityReference>)))
  "Returns full string definition for message of type '<VelocityReference>"
  (cl:format cl:nil "# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityReference)))
  "Returns full string definition for message of type 'VelocityReference"
  (cl:format cl:nil "# desired velocity [m/s]~%geometry_msgs/Vector3 velocity~%~%# altitude~%float64 altitude~%~%# desired heading and its rate, optional~%# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"~%float64 heading~%float64 heading_rate~%~%# overrides vertical velocity~%bool use_altitude~%~%bool use_heading~%~%# overrides heading~%bool use_heading_rate~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityReference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     8
     8
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityReference>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityReference
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':heading_rate (heading_rate msg))
    (cl:cons ':use_altitude (use_altitude msg))
    (cl:cons ':use_heading (use_heading msg))
    (cl:cons ':use_heading_rate (use_heading_rate msg))
))
