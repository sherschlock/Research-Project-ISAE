; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude BacaProtocol.msg.html

(cl:defclass <BacaProtocol> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (payload
    :reader payload
    :initarg :payload
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (checksum_calculated
    :reader checksum_calculated
    :initarg :checksum_calculated
    :type cl:fixnum
    :initform 0)
   (checksum_received
    :reader checksum_received
    :initarg :checksum_received
    :type cl:fixnum
    :initform 0)
   (checksum_correct
    :reader checksum_correct
    :initarg :checksum_correct
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BacaProtocol (<BacaProtocol>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BacaProtocol>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BacaProtocol)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<BacaProtocol> is deprecated: use mrs_msgs-msg:BacaProtocol instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BacaProtocol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <BacaProtocol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:payload-val is deprecated.  Use mrs_msgs-msg:payload instead.")
  (payload m))

(cl:ensure-generic-function 'checksum_calculated-val :lambda-list '(m))
(cl:defmethod checksum_calculated-val ((m <BacaProtocol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:checksum_calculated-val is deprecated.  Use mrs_msgs-msg:checksum_calculated instead.")
  (checksum_calculated m))

(cl:ensure-generic-function 'checksum_received-val :lambda-list '(m))
(cl:defmethod checksum_received-val ((m <BacaProtocol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:checksum_received-val is deprecated.  Use mrs_msgs-msg:checksum_received instead.")
  (checksum_received m))

(cl:ensure-generic-function 'checksum_correct-val :lambda-list '(m))
(cl:defmethod checksum_correct-val ((m <BacaProtocol>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:checksum_correct-val is deprecated.  Use mrs_msgs-msg:checksum_correct instead.")
  (checksum_correct m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BacaProtocol>) ostream)
  "Serializes a message object of type '<BacaProtocol>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'payload))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_calculated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'checksum_correct) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BacaProtocol>) istream)
  "Deserializes a message object of type '<BacaProtocol>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'payload) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'payload)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_calculated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum_received)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'checksum_correct) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BacaProtocol>)))
  "Returns string type for a message object of type '<BacaProtocol>"
  "mrs_msgs/BacaProtocol")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BacaProtocol)))
  "Returns string type for a message object of type 'BacaProtocol"
  "mrs_msgs/BacaProtocol")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BacaProtocol>)))
  "Returns md5sum for a message object of type '<BacaProtocol>"
  "ab27864d6a028e49646c9087913dde4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BacaProtocol)))
  "Returns md5sum for a message object of type 'BacaProtocol"
  "ab27864d6a028e49646c9087913dde4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BacaProtocol>)))
  "Returns full string definition for message of type '<BacaProtocol>"
  (cl:format cl:nil "time stamp~%uint8[] payload~%uint8 checksum_calculated #useful for debugging~%uint8 checksum_received   #useful for debugging~%bool checksum_correct~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BacaProtocol)))
  "Returns full string definition for message of type 'BacaProtocol"
  (cl:format cl:nil "time stamp~%uint8[] payload~%uint8 checksum_calculated #useful for debugging~%uint8 checksum_received   #useful for debugging~%bool checksum_correct~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BacaProtocol>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'payload) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BacaProtocol>))
  "Converts a ROS message object to a list"
  (cl:list 'BacaProtocol
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':payload (payload msg))
    (cl:cons ':checksum_calculated (checksum_calculated msg))
    (cl:cons ':checksum_received (checksum_received msg))
    (cl:cons ':checksum_correct (checksum_correct msg))
))
