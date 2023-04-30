; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude BumperStatus.msg.html

(cl:defclass <BumperStatus> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (repulsing
    :reader repulsing
    :initarg :repulsing
    :type cl:boolean
    :initform cl:nil)
   (modifying_reference
    :reader modifying_reference
    :initarg :modifying_reference
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BumperStatus (<BumperStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BumperStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BumperStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<BumperStatus> is deprecated: use mrs_msgs-msg:BumperStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BumperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'repulsing-val :lambda-list '(m))
(cl:defmethod repulsing-val ((m <BumperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:repulsing-val is deprecated.  Use mrs_msgs-msg:repulsing instead.")
  (repulsing m))

(cl:ensure-generic-function 'modifying_reference-val :lambda-list '(m))
(cl:defmethod modifying_reference-val ((m <BumperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:modifying_reference-val is deprecated.  Use mrs_msgs-msg:modifying_reference instead.")
  (modifying_reference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BumperStatus>) ostream)
  "Serializes a message object of type '<BumperStatus>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'repulsing) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'modifying_reference) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BumperStatus>) istream)
  "Deserializes a message object of type '<BumperStatus>"
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
    (cl:setf (cl:slot-value msg 'repulsing) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'modifying_reference) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BumperStatus>)))
  "Returns string type for a message object of type '<BumperStatus>"
  "mrs_msgs/BumperStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BumperStatus)))
  "Returns string type for a message object of type 'BumperStatus"
  "mrs_msgs/BumperStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BumperStatus>)))
  "Returns md5sum for a message object of type '<BumperStatus>"
  "61b2690b519e811c0a533b0dc63657c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BumperStatus)))
  "Returns md5sum for a message object of type 'BumperStatus"
  "61b2690b519e811c0a533b0dc63657c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BumperStatus>)))
  "Returns full string definition for message of type '<BumperStatus>"
  (cl:format cl:nil "time stamp~%bool repulsing~%bool modifying_reference~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BumperStatus)))
  "Returns full string definition for message of type 'BumperStatus"
  (cl:format cl:nil "time stamp~%bool repulsing~%bool modifying_reference~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BumperStatus>))
  (cl:+ 0
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BumperStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BumperStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':repulsing (repulsing msg))
    (cl:cons ':modifying_reference (modifying_reference msg))
))
