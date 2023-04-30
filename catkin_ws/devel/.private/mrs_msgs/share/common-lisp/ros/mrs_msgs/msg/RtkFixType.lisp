; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude RtkFixType.msg.html

(cl:defclass <RtkFixType> (roslisp-msg-protocol:ros-message)
  ((fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RtkFixType (<RtkFixType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RtkFixType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RtkFixType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<RtkFixType> is deprecated: use mrs_msgs-msg:RtkFixType instead.")))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <RtkFixType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fix_type-val is deprecated.  Use mrs_msgs-msg:fix_type instead.")
  (fix_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RtkFixType>)))
    "Constants for message type '<RtkFixType>"
  '((:RTK_FIX . 5)
    (:RTK_FLOAT . 4)
    (:UNKNOWN . 3)
    (:DGPS . 2)
    (:SPS . 1)
    (:NO_FIX . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RtkFixType)))
    "Constants for message type 'RtkFixType"
  '((:RTK_FIX . 5)
    (:RTK_FLOAT . 4)
    (:UNKNOWN . 3)
    (:DGPS . 2)
    (:SPS . 1)
    (:NO_FIX . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RtkFixType>) ostream)
  "Serializes a message object of type '<RtkFixType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RtkFixType>) istream)
  "Deserializes a message object of type '<RtkFixType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RtkFixType>)))
  "Returns string type for a message object of type '<RtkFixType>"
  "mrs_msgs/RtkFixType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RtkFixType)))
  "Returns string type for a message object of type 'RtkFixType"
  "mrs_msgs/RtkFixType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RtkFixType>)))
  "Returns md5sum for a message object of type '<RtkFixType>"
  "3323b0cae49ed181a81a1139b0a61ca7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RtkFixType)))
  "Returns md5sum for a message object of type 'RtkFixType"
  "3323b0cae49ed181a81a1139b0a61ca7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RtkFixType>)))
  "Returns full string definition for message of type '<RtkFixType>"
  (cl:format cl:nil "uint8 RTK_FIX=5~%uint8 RTK_FLOAT=4~%uint8 UNKNOWN=3~%uint8 DGPS=2~%uint8 SPS=1~%uint8 NO_FIX=0~%uint8 fix_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RtkFixType)))
  "Returns full string definition for message of type 'RtkFixType"
  (cl:format cl:nil "uint8 RTK_FIX=5~%uint8 RTK_FLOAT=4~%uint8 UNKNOWN=3~%uint8 DGPS=2~%uint8 SPS=1~%uint8 NO_FIX=0~%uint8 fix_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RtkFixType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RtkFixType>))
  "Converts a ROS message object to a list"
  (cl:list 'RtkFixType
    (cl:cons ':fix_type (fix_type msg))
))
