; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude EstimatorType.msg.html

(cl:defclass <EstimatorType> (roslisp-msg-protocol:ros-message)
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

(cl:defclass EstimatorType (<EstimatorType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstimatorType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstimatorType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<EstimatorType> is deprecated: use mrs_msgs-msg:EstimatorType instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <EstimatorType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:name-val is deprecated.  Use mrs_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <EstimatorType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:type-val is deprecated.  Use mrs_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<EstimatorType>)))
    "Constants for message type '<EstimatorType>"
  '((:OPTFLOW . 0)
    (:GPS . 1)
    (:OPTFLOWGPS . 2)
    (:RTK . 3)
    (:VIO . 4)
    (:BRICK . 5)
    (:T265 . 6)
    (:HECTOR . 7)
    (:BRICKFLOW . 8)
    (:VSLAM . 9)
    (:ICP . 10)
    (:ALOAM . 11)
    (:ALOAMGARM . 12)
    (:ALOAMREP . 13)
    (:LIOSAM . 14)
    (:UWB . 15)
    (:TYPE_COUNT . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'EstimatorType)))
    "Constants for message type 'EstimatorType"
  '((:OPTFLOW . 0)
    (:GPS . 1)
    (:OPTFLOWGPS . 2)
    (:RTK . 3)
    (:VIO . 4)
    (:BRICK . 5)
    (:T265 . 6)
    (:HECTOR . 7)
    (:BRICKFLOW . 8)
    (:VSLAM . 9)
    (:ICP . 10)
    (:ALOAM . 11)
    (:ALOAMGARM . 12)
    (:ALOAMREP . 13)
    (:LIOSAM . 14)
    (:UWB . 15)
    (:TYPE_COUNT . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstimatorType>) ostream)
  "Serializes a message object of type '<EstimatorType>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstimatorType>) istream)
  "Deserializes a message object of type '<EstimatorType>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstimatorType>)))
  "Returns string type for a message object of type '<EstimatorType>"
  "mrs_msgs/EstimatorType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimatorType)))
  "Returns string type for a message object of type 'EstimatorType"
  "mrs_msgs/EstimatorType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstimatorType>)))
  "Returns md5sum for a message object of type '<EstimatorType>"
  "328329be4f2948aa570fdaba1a5a0e48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstimatorType)))
  "Returns md5sum for a message object of type 'EstimatorType"
  "328329be4f2948aa570fdaba1a5a0e48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstimatorType>)))
  "Returns full string definition for message of type '<EstimatorType>"
  (cl:format cl:nil "uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstimatorType)))
  "Returns full string definition for message of type 'EstimatorType"
  (cl:format cl:nil "uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstimatorType>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstimatorType>))
  "Converts a ROS message object to a list"
  (cl:list 'EstimatorType
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
))
