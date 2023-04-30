; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude AltitudeType.msg.html

(cl:defclass <AltitudeType> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AltitudeType (<AltitudeType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AltitudeType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AltitudeType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<AltitudeType> is deprecated: use mrs_msgs-msg:AltitudeType instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AltitudeType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:name-val is deprecated.  Use mrs_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AltitudeType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:type-val is deprecated.  Use mrs_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AltitudeType>)))
    "Constants for message type '<AltitudeType>"
  '((:HEIGHT . 0)
    (:PLANE . 1)
    (:BRICK . 2)
    (:VIO . 3)
    (:ALOAM . 4)
    (:ALOAMGARM . 5)
    (:ALOAMREP . 6)
    (:BARO . 7)
    (:RTK . 8)
    (:LIOSAM . 9)
    (:TYPE_COUNT . 10))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AltitudeType)))
    "Constants for message type 'AltitudeType"
  '((:HEIGHT . 0)
    (:PLANE . 1)
    (:BRICK . 2)
    (:VIO . 3)
    (:ALOAM . 4)
    (:ALOAMGARM . 5)
    (:ALOAMREP . 6)
    (:BARO . 7)
    (:RTK . 8)
    (:LIOSAM . 9)
    (:TYPE_COUNT . 10))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AltitudeType>) ostream)
  "Serializes a message object of type '<AltitudeType>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AltitudeType>) istream)
  "Deserializes a message object of type '<AltitudeType>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AltitudeType>)))
  "Returns string type for a message object of type '<AltitudeType>"
  "mrs_msgs/AltitudeType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AltitudeType)))
  "Returns string type for a message object of type 'AltitudeType"
  "mrs_msgs/AltitudeType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AltitudeType>)))
  "Returns md5sum for a message object of type '<AltitudeType>"
  "9adbe83b4879467630ae7301e2b791a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AltitudeType)))
  "Returns md5sum for a message object of type 'AltitudeType"
  "9adbe83b4879467630ae7301e2b791a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AltitudeType>)))
  "Returns full string definition for message of type '<AltitudeType>"
  (cl:format cl:nil "uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AltitudeType)))
  "Returns full string definition for message of type 'AltitudeType"
  (cl:format cl:nil "uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AltitudeType>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AltitudeType>))
  "Converts a ROS message object to a list"
  (cl:list 'AltitudeType
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
))
