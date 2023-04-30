; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude GpsDiagnostics.msg.html

(cl:defclass <GpsDiagnostics> (roslisp-msg-protocol:ros-message)
  ((satellites_visible
    :reader satellites_visible
    :initarg :satellites_visible
    :type cl:fixnum
    :initform 0)
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0)
   (eph
    :reader eph
    :initarg :eph
    :type cl:float
    :initform 0.0)
   (epv
    :reader epv
    :initarg :epv
    :type cl:float
    :initform 0.0))
)

(cl:defclass GpsDiagnostics (<GpsDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<GpsDiagnostics> is deprecated: use mrs_msgs-msg:GpsDiagnostics instead.")))

(cl:ensure-generic-function 'satellites_visible-val :lambda-list '(m))
(cl:defmethod satellites_visible-val ((m <GpsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:satellites_visible-val is deprecated.  Use mrs_msgs-msg:satellites_visible instead.")
  (satellites_visible m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <GpsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fix_type-val is deprecated.  Use mrs_msgs-msg:fix_type instead.")
  (fix_type m))

(cl:ensure-generic-function 'eph-val :lambda-list '(m))
(cl:defmethod eph-val ((m <GpsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:eph-val is deprecated.  Use mrs_msgs-msg:eph instead.")
  (eph m))

(cl:ensure-generic-function 'epv-val :lambda-list '(m))
(cl:defmethod epv-val ((m <GpsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:epv-val is deprecated.  Use mrs_msgs-msg:epv instead.")
  (epv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsDiagnostics>) ostream)
  "Serializes a message object of type '<GpsDiagnostics>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_visible)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'eph))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'epv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsDiagnostics>) istream)
  "Deserializes a message object of type '<GpsDiagnostics>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_visible)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eph) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'epv) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsDiagnostics>)))
  "Returns string type for a message object of type '<GpsDiagnostics>"
  "mrs_msgs/GpsDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsDiagnostics)))
  "Returns string type for a message object of type 'GpsDiagnostics"
  "mrs_msgs/GpsDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsDiagnostics>)))
  "Returns md5sum for a message object of type '<GpsDiagnostics>"
  "9ad1ab255ad6615041f82f42bc2320f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsDiagnostics)))
  "Returns md5sum for a message object of type 'GpsDiagnostics"
  "9ad1ab255ad6615041f82f42bc2320f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsDiagnostics>)))
  "Returns full string definition for message of type '<GpsDiagnostics>"
  (cl:format cl:nil "uint8 satellites_visible~%uint8 fix_type~%float32 eph~%float32 epv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsDiagnostics)))
  "Returns full string definition for message of type 'GpsDiagnostics"
  (cl:format cl:nil "uint8 satellites_visible~%uint8 fix_type~%float32 eph~%float32 epv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsDiagnostics>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsDiagnostics
    (cl:cons ':satellites_visible (satellites_visible msg))
    (cl:cons ':fix_type (fix_type msg))
    (cl:cons ':eph (eph msg))
    (cl:cons ':epv (epv msg))
))
