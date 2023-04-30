; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude HeadingType.msg.html

(cl:defclass <HeadingType> (roslisp-msg-protocol:ros-message)
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

(cl:defclass HeadingType (<HeadingType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadingType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadingType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<HeadingType> is deprecated: use mrs_msgs-msg:HeadingType instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HeadingType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:name-val is deprecated.  Use mrs_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <HeadingType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:type-val is deprecated.  Use mrs_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HeadingType>)))
    "Constants for message type '<HeadingType>"
  '((:PIXHAWK . 0)
    (:GYRO . 1)
    (:COMPASS . 2)
    (:OPTFLOW . 3)
    (:HECTOR . 4)
    (:BRICK . 5)
    (:VIO . 6)
    (:VSLAM . 7)
    (:ICP . 8)
    (:BRICKFLOW . 9)
    (:ALOAM . 10)
    (:ALOAMREP . 11)
    (:LIOSAM . 12)
    (:TYPE_COUNT . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HeadingType)))
    "Constants for message type 'HeadingType"
  '((:PIXHAWK . 0)
    (:GYRO . 1)
    (:COMPASS . 2)
    (:OPTFLOW . 3)
    (:HECTOR . 4)
    (:BRICK . 5)
    (:VIO . 6)
    (:VSLAM . 7)
    (:ICP . 8)
    (:BRICKFLOW . 9)
    (:ALOAM . 10)
    (:ALOAMREP . 11)
    (:LIOSAM . 12)
    (:TYPE_COUNT . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadingType>) ostream)
  "Serializes a message object of type '<HeadingType>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadingType>) istream)
  "Deserializes a message object of type '<HeadingType>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadingType>)))
  "Returns string type for a message object of type '<HeadingType>"
  "mrs_msgs/HeadingType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadingType)))
  "Returns string type for a message object of type 'HeadingType"
  "mrs_msgs/HeadingType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadingType>)))
  "Returns md5sum for a message object of type '<HeadingType>"
  "4575f57d7ab2d67fda5521732eca4e89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadingType)))
  "Returns md5sum for a message object of type 'HeadingType"
  "4575f57d7ab2d67fda5521732eca4e89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadingType>)))
  "Returns full string definition for message of type '<HeadingType>"
  (cl:format cl:nil "uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadingType)))
  "Returns full string definition for message of type 'HeadingType"
  (cl:format cl:nil "uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadingType>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadingType>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadingType
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
))
