; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude GpsStatus.msg.html

(cl:defclass <GpsStatus> (roslisp-msg-protocol:ros-message)
  ((quality
    :reader quality
    :initarg :quality
    :type cl:integer
    :initform 0))
)

(cl:defclass GpsStatus (<GpsStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<GpsStatus> is deprecated: use mrs_msgs-msg:GpsStatus instead.")))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <GpsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:quality-val is deprecated.  Use mrs_msgs-msg:quality instead.")
  (quality m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GpsStatus>)))
    "Constants for message type '<GpsStatus>"
  '((:GPS_QUALITY_NO_FIX . 0)
    (:GPS_QUALITY_SIGLE_POINT . 1)
    (:GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL . 2)
    (:GPS_QUALITY_RTK_FIX . 4)
    (:GPS_QUALITY_RTK_FLOAT . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GpsStatus)))
    "Constants for message type 'GpsStatus"
  '((:GPS_QUALITY_NO_FIX . 0)
    (:GPS_QUALITY_SIGLE_POINT . 1)
    (:GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL . 2)
    (:GPS_QUALITY_RTK_FIX . 4)
    (:GPS_QUALITY_RTK_FLOAT . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsStatus>) ostream)
  "Serializes a message object of type '<GpsStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'quality)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsStatus>) istream)
  "Deserializes a message object of type '<GpsStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'quality)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsStatus>)))
  "Returns string type for a message object of type '<GpsStatus>"
  "mrs_msgs/GpsStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsStatus)))
  "Returns string type for a message object of type 'GpsStatus"
  "mrs_msgs/GpsStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsStatus>)))
  "Returns md5sum for a message object of type '<GpsStatus>"
  "636d1c2a6683d74dcd1bd4a78682ded9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsStatus)))
  "Returns md5sum for a message object of type 'GpsStatus"
  "636d1c2a6683d74dcd1bd4a78682ded9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsStatus>)))
  "Returns full string definition for message of type '<GpsStatus>"
  (cl:format cl:nil "uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsStatus)))
  "Returns full string definition for message of type 'GpsStatus"
  (cl:format cl:nil "uint32 quality~%uint32 GPS_QUALITY_NO_FIX=0~%uint32 GPS_QUALITY_SIGLE_POINT=1~%uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2~%uint32 GPS_QUALITY_RTK_FIX=4~%uint32 GPS_QUALITY_RTK_FLOAT=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsStatus>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsStatus
    (cl:cons ':quality (quality msg))
))
