; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude BoolStamped.msg.html

(cl:defclass <BoolStamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BoolStamped (<BoolStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<BoolStamped> is deprecated: use mrs_msgs-msg:BoolStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BoolStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <BoolStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:data-val is deprecated.  Use mrs_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolStamped>) ostream)
  "Serializes a message object of type '<BoolStamped>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolStamped>) istream)
  "Deserializes a message object of type '<BoolStamped>"
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
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolStamped>)))
  "Returns string type for a message object of type '<BoolStamped>"
  "mrs_msgs/BoolStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolStamped)))
  "Returns string type for a message object of type 'BoolStamped"
  "mrs_msgs/BoolStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolStamped>)))
  "Returns md5sum for a message object of type '<BoolStamped>"
  "512a323cb011736b47fa65bd15fa0439")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolStamped)))
  "Returns md5sum for a message object of type 'BoolStamped"
  "512a323cb011736b47fa65bd15fa0439")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolStamped>)))
  "Returns full string definition for message of type '<BoolStamped>"
  (cl:format cl:nil "time stamp~%bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolStamped)))
  "Returns full string definition for message of type 'BoolStamped"
  (cl:format cl:nil "time stamp~%bool data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolStamped>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
