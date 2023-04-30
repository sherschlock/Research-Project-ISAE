; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude GripperDiagnostics.msg.html

(cl:defclass <GripperDiagnostics> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (gripper_on
    :reader gripper_on
    :initarg :gripper_on
    :type cl:boolean
    :initform cl:nil)
   (gripping_object
    :reader gripping_object
    :initarg :gripping_object
    :type cl:boolean
    :initform cl:nil)
   (has_hall
    :reader has_hall
    :initarg :has_hall
    :type cl:boolean
    :initform cl:nil)
   (hall1_debug
    :reader hall1_debug
    :initarg :hall1_debug
    :type cl:integer
    :initform 0)
   (hall2_debug
    :reader hall2_debug
    :initarg :hall2_debug
    :type cl:integer
    :initform 0)
   (has_ultrasonic
    :reader has_ultrasonic
    :initarg :has_ultrasonic
    :type cl:boolean
    :initform cl:nil)
   (ultrasonic1_debug
    :reader ultrasonic1_debug
    :initarg :ultrasonic1_debug
    :type cl:integer
    :initform 0)
   (ultrasonic2_debug
    :reader ultrasonic2_debug
    :initarg :ultrasonic2_debug
    :type cl:integer
    :initform 0)
   (has_proximity
    :reader has_proximity
    :initarg :has_proximity
    :type cl:boolean
    :initform cl:nil)
   (proximity1_debug
    :reader proximity1_debug
    :initarg :proximity1_debug
    :type cl:integer
    :initform 0)
   (proximity2_debug
    :reader proximity2_debug
    :initarg :proximity2_debug
    :type cl:integer
    :initform 0))
)

(cl:defclass GripperDiagnostics (<GripperDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GripperDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GripperDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<GripperDiagnostics> is deprecated: use mrs_msgs-msg:GripperDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'gripper_on-val :lambda-list '(m))
(cl:defmethod gripper_on-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gripper_on-val is deprecated.  Use mrs_msgs-msg:gripper_on instead.")
  (gripper_on m))

(cl:ensure-generic-function 'gripping_object-val :lambda-list '(m))
(cl:defmethod gripping_object-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gripping_object-val is deprecated.  Use mrs_msgs-msg:gripping_object instead.")
  (gripping_object m))

(cl:ensure-generic-function 'has_hall-val :lambda-list '(m))
(cl:defmethod has_hall-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:has_hall-val is deprecated.  Use mrs_msgs-msg:has_hall instead.")
  (has_hall m))

(cl:ensure-generic-function 'hall1_debug-val :lambda-list '(m))
(cl:defmethod hall1_debug-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:hall1_debug-val is deprecated.  Use mrs_msgs-msg:hall1_debug instead.")
  (hall1_debug m))

(cl:ensure-generic-function 'hall2_debug-val :lambda-list '(m))
(cl:defmethod hall2_debug-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:hall2_debug-val is deprecated.  Use mrs_msgs-msg:hall2_debug instead.")
  (hall2_debug m))

(cl:ensure-generic-function 'has_ultrasonic-val :lambda-list '(m))
(cl:defmethod has_ultrasonic-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:has_ultrasonic-val is deprecated.  Use mrs_msgs-msg:has_ultrasonic instead.")
  (has_ultrasonic m))

(cl:ensure-generic-function 'ultrasonic1_debug-val :lambda-list '(m))
(cl:defmethod ultrasonic1_debug-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:ultrasonic1_debug-val is deprecated.  Use mrs_msgs-msg:ultrasonic1_debug instead.")
  (ultrasonic1_debug m))

(cl:ensure-generic-function 'ultrasonic2_debug-val :lambda-list '(m))
(cl:defmethod ultrasonic2_debug-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:ultrasonic2_debug-val is deprecated.  Use mrs_msgs-msg:ultrasonic2_debug instead.")
  (ultrasonic2_debug m))

(cl:ensure-generic-function 'has_proximity-val :lambda-list '(m))
(cl:defmethod has_proximity-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:has_proximity-val is deprecated.  Use mrs_msgs-msg:has_proximity instead.")
  (has_proximity m))

(cl:ensure-generic-function 'proximity1_debug-val :lambda-list '(m))
(cl:defmethod proximity1_debug-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:proximity1_debug-val is deprecated.  Use mrs_msgs-msg:proximity1_debug instead.")
  (proximity1_debug m))

(cl:ensure-generic-function 'proximity2_debug-val :lambda-list '(m))
(cl:defmethod proximity2_debug-val ((m <GripperDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:proximity2_debug-val is deprecated.  Use mrs_msgs-msg:proximity2_debug instead.")
  (proximity2_debug m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GripperDiagnostics>) ostream)
  "Serializes a message object of type '<GripperDiagnostics>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gripper_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gripping_object) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_hall) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'hall1_debug)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hall2_debug)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_ultrasonic) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ultrasonic1_debug)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ultrasonic2_debug)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_proximity) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'proximity1_debug)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'proximity2_debug)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GripperDiagnostics>) istream)
  "Deserializes a message object of type '<GripperDiagnostics>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'gripper_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gripping_object) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'has_hall) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hall1_debug) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hall2_debug) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'has_ultrasonic) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ultrasonic1_debug) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ultrasonic2_debug) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'has_proximity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'proximity1_debug) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'proximity2_debug) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GripperDiagnostics>)))
  "Returns string type for a message object of type '<GripperDiagnostics>"
  "mrs_msgs/GripperDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GripperDiagnostics)))
  "Returns string type for a message object of type 'GripperDiagnostics"
  "mrs_msgs/GripperDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GripperDiagnostics>)))
  "Returns md5sum for a message object of type '<GripperDiagnostics>"
  "5887bc2d50f46b0d8949991277fb8b45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GripperDiagnostics)))
  "Returns md5sum for a message object of type 'GripperDiagnostics"
  "5887bc2d50f46b0d8949991277fb8b45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GripperDiagnostics>)))
  "Returns full string definition for message of type '<GripperDiagnostics>"
  (cl:format cl:nil "time stamp~%~%bool gripper_on~%bool gripping_object~%~%bool has_hall~%int32 hall1_debug~%int32 hall2_debug~%~%bool has_ultrasonic~%int32 ultrasonic1_debug~%int32 ultrasonic2_debug~%~%bool has_proximity~%int32 proximity1_debug~%int32 proximity2_debug~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GripperDiagnostics)))
  "Returns full string definition for message of type 'GripperDiagnostics"
  (cl:format cl:nil "time stamp~%~%bool gripper_on~%bool gripping_object~%~%bool has_hall~%int32 hall1_debug~%int32 hall2_debug~%~%bool has_ultrasonic~%int32 ultrasonic1_debug~%int32 ultrasonic2_debug~%~%bool has_proximity~%int32 proximity1_debug~%int32 proximity2_debug~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GripperDiagnostics>))
  (cl:+ 0
     8
     1
     1
     1
     4
     4
     1
     4
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GripperDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'GripperDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':gripper_on (gripper_on msg))
    (cl:cons ':gripping_object (gripping_object msg))
    (cl:cons ':has_hall (has_hall msg))
    (cl:cons ':hall1_debug (hall1_debug msg))
    (cl:cons ':hall2_debug (hall2_debug msg))
    (cl:cons ':has_ultrasonic (has_ultrasonic msg))
    (cl:cons ':ultrasonic1_debug (ultrasonic1_debug msg))
    (cl:cons ':ultrasonic2_debug (ultrasonic2_debug msg))
    (cl:cons ':has_proximity (has_proximity msg))
    (cl:cons ':proximity1_debug (proximity1_debug msg))
    (cl:cons ':proximity2_debug (proximity2_debug msg))
))
