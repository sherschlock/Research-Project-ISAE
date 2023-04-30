; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude SxdMeasurement.msg.html

(cl:defclass <SxdMeasurement> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (num_detections
    :reader num_detections
    :initarg :num_detections
    :type cl:integer
    :initform 0)
   (channels
    :reader channels
    :initarg :channels
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SxdMeasurement (<SxdMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SxdMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SxdMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<SxdMeasurement> is deprecated: use mrs_msgs-msg:SxdMeasurement instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <SxdMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'num_detections-val :lambda-list '(m))
(cl:defmethod num_detections-val ((m <SxdMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_detections-val is deprecated.  Use mrs_msgs-msg:num_detections instead.")
  (num_detections m))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <SxdMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:channels-val is deprecated.  Use mrs_msgs-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SxdMeasurement>) ostream)
  "Serializes a message object of type '<SxdMeasurement>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_detections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_detections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_detections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_detections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'num_detections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'num_detections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'num_detections)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'num_detections)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'channels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SxdMeasurement>) istream)
  "Deserializes a message object of type '<SxdMeasurement>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'num_detections)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SxdMeasurement>)))
  "Returns string type for a message object of type '<SxdMeasurement>"
  "mrs_msgs/SxdMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SxdMeasurement)))
  "Returns string type for a message object of type 'SxdMeasurement"
  "mrs_msgs/SxdMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SxdMeasurement>)))
  "Returns md5sum for a message object of type '<SxdMeasurement>"
  "e3681e09d68c65aecf27dd6cc2533d0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SxdMeasurement)))
  "Returns md5sum for a message object of type 'SxdMeasurement"
  "e3681e09d68c65aecf27dd6cc2533d0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SxdMeasurement>)))
  "Returns full string definition for message of type '<SxdMeasurement>"
  (cl:format cl:nil "time stamp~%uint64 num_detections~%uint16[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SxdMeasurement)))
  "Returns full string definition for message of type 'SxdMeasurement"
  (cl:format cl:nil "time stamp~%uint64 num_detections~%uint16[] channels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SxdMeasurement>))
  (cl:+ 0
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SxdMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'SxdMeasurement
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':num_detections (num_detections msg))
    (cl:cons ':channels (channels msg))
))
