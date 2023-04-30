; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude LandoffDiagnostics.msg.html

(cl:defclass <LandoffDiagnostics> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (landing
    :reader landing
    :initarg :landing
    :type cl:boolean
    :initform cl:nil)
   (taking_off
    :reader taking_off
    :initarg :taking_off
    :type cl:boolean
    :initform cl:nil)
   (elanding
    :reader elanding
    :initarg :elanding
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LandoffDiagnostics (<LandoffDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandoffDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandoffDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<LandoffDiagnostics> is deprecated: use mrs_msgs-msg:LandoffDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <LandoffDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <LandoffDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:active-val is deprecated.  Use mrs_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'landing-val :lambda-list '(m))
(cl:defmethod landing-val ((m <LandoffDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:landing-val is deprecated.  Use mrs_msgs-msg:landing instead.")
  (landing m))

(cl:ensure-generic-function 'taking_off-val :lambda-list '(m))
(cl:defmethod taking_off-val ((m <LandoffDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:taking_off-val is deprecated.  Use mrs_msgs-msg:taking_off instead.")
  (taking_off m))

(cl:ensure-generic-function 'elanding-val :lambda-list '(m))
(cl:defmethod elanding-val ((m <LandoffDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:elanding-val is deprecated.  Use mrs_msgs-msg:elanding instead.")
  (elanding m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandoffDiagnostics>) ostream)
  "Serializes a message object of type '<LandoffDiagnostics>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'landing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'taking_off) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'elanding) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandoffDiagnostics>) istream)
  "Deserializes a message object of type '<LandoffDiagnostics>"
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
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'landing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'taking_off) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'elanding) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandoffDiagnostics>)))
  "Returns string type for a message object of type '<LandoffDiagnostics>"
  "mrs_msgs/LandoffDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandoffDiagnostics)))
  "Returns string type for a message object of type 'LandoffDiagnostics"
  "mrs_msgs/LandoffDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandoffDiagnostics>)))
  "Returns md5sum for a message object of type '<LandoffDiagnostics>"
  "1feb5898812832580fccb73c0f05b11a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandoffDiagnostics)))
  "Returns md5sum for a message object of type 'LandoffDiagnostics"
  "1feb5898812832580fccb73c0f05b11a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandoffDiagnostics>)))
  "Returns full string definition for message of type '<LandoffDiagnostics>"
  (cl:format cl:nil "time stamp~%bool active~%bool landing~%bool taking_off~%bool elanding~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandoffDiagnostics)))
  "Returns full string definition for message of type 'LandoffDiagnostics"
  (cl:format cl:nil "time stamp~%bool active~%bool landing~%bool taking_off~%bool elanding~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandoffDiagnostics>))
  (cl:+ 0
     8
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandoffDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'LandoffDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':active (active msg))
    (cl:cons ':landing (landing msg))
    (cl:cons ':taking_off (taking_off msg))
    (cl:cons ':elanding (elanding msg))
))
