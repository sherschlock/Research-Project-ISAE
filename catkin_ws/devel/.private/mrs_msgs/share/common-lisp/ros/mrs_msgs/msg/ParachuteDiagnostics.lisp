; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ParachuteDiagnostics.msg.html

(cl:defclass <ParachuteDiagnostics> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (alive
    :reader alive
    :initarg :alive
    :type cl:boolean
    :initform cl:nil)
   (armed
    :reader armed
    :initarg :armed
    :type cl:boolean
    :initform cl:nil)
   (fired
    :reader fired
    :initarg :fired
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ParachuteDiagnostics (<ParachuteDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParachuteDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParachuteDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ParachuteDiagnostics> is deprecated: use mrs_msgs-msg:ParachuteDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ParachuteDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'alive-val :lambda-list '(m))
(cl:defmethod alive-val ((m <ParachuteDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:alive-val is deprecated.  Use mrs_msgs-msg:alive instead.")
  (alive m))

(cl:ensure-generic-function 'armed-val :lambda-list '(m))
(cl:defmethod armed-val ((m <ParachuteDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:armed-val is deprecated.  Use mrs_msgs-msg:armed instead.")
  (armed m))

(cl:ensure-generic-function 'fired-val :lambda-list '(m))
(cl:defmethod fired-val ((m <ParachuteDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fired-val is deprecated.  Use mrs_msgs-msg:fired instead.")
  (fired m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParachuteDiagnostics>) ostream)
  "Serializes a message object of type '<ParachuteDiagnostics>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'alive) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fired) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParachuteDiagnostics>) istream)
  "Deserializes a message object of type '<ParachuteDiagnostics>"
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
    (cl:setf (cl:slot-value msg 'alive) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fired) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParachuteDiagnostics>)))
  "Returns string type for a message object of type '<ParachuteDiagnostics>"
  "mrs_msgs/ParachuteDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParachuteDiagnostics)))
  "Returns string type for a message object of type 'ParachuteDiagnostics"
  "mrs_msgs/ParachuteDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParachuteDiagnostics>)))
  "Returns md5sum for a message object of type '<ParachuteDiagnostics>"
  "432cf17f44e8b7c1519f8ae5a6317641")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParachuteDiagnostics)))
  "Returns md5sum for a message object of type 'ParachuteDiagnostics"
  "432cf17f44e8b7c1519f8ae5a6317641")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParachuteDiagnostics>)))
  "Returns full string definition for message of type '<ParachuteDiagnostics>"
  (cl:format cl:nil "time stamp~%~%# If this value is false, the low level driver is not responding and parachute will not work~%bool alive~%~%# Parachute is armed and ready to be fired~%bool armed ~%~%# Parachute has been already fired~%bool fired ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParachuteDiagnostics)))
  "Returns full string definition for message of type 'ParachuteDiagnostics"
  (cl:format cl:nil "time stamp~%~%# If this value is false, the low level driver is not responding and parachute will not work~%bool alive~%~%# Parachute is armed and ready to be fired~%bool armed ~%~%# Parachute has been already fired~%bool fired ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParachuteDiagnostics>))
  (cl:+ 0
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParachuteDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'ParachuteDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':alive (alive msg))
    (cl:cons ':armed (armed msg))
    (cl:cons ':fired (fired msg))
))
