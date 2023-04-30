; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude PoseWithCovarianceIdentified.msg.html

(cl:defclass <PoseWithCovarianceIdentified> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 36 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PoseWithCovarianceIdentified (<PoseWithCovarianceIdentified>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseWithCovarianceIdentified>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseWithCovarianceIdentified)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<PoseWithCovarianceIdentified> is deprecated: use mrs_msgs-msg:PoseWithCovarianceIdentified instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PoseWithCovarianceIdentified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:id-val is deprecated.  Use mrs_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseWithCovarianceIdentified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pose-val is deprecated.  Use mrs_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <PoseWithCovarianceIdentified>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:covariance-val is deprecated.  Use mrs_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseWithCovarianceIdentified>) ostream)
  "Serializes a message object of type '<PoseWithCovarianceIdentified>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseWithCovarianceIdentified>) istream)
  "Deserializes a message object of type '<PoseWithCovarianceIdentified>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 36))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 36)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseWithCovarianceIdentified>)))
  "Returns string type for a message object of type '<PoseWithCovarianceIdentified>"
  "mrs_msgs/PoseWithCovarianceIdentified")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseWithCovarianceIdentified)))
  "Returns string type for a message object of type 'PoseWithCovarianceIdentified"
  "mrs_msgs/PoseWithCovarianceIdentified")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseWithCovarianceIdentified>)))
  "Returns md5sum for a message object of type '<PoseWithCovarianceIdentified>"
  "dcebff621732fb590dbf67c491184e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseWithCovarianceIdentified)))
  "Returns md5sum for a message object of type 'PoseWithCovarianceIdentified"
  "dcebff621732fb590dbf67c491184e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseWithCovarianceIdentified>)))
  "Returns full string definition for message of type '<PoseWithCovarianceIdentified>"
  (cl:format cl:nil "uint64 id~%geometry_msgs/Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseWithCovarianceIdentified)))
  "Returns full string definition for message of type 'PoseWithCovarianceIdentified"
  (cl:format cl:nil "uint64 id~%geometry_msgs/Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseWithCovarianceIdentified>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseWithCovarianceIdentified>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseWithCovarianceIdentified
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':covariance (covariance msg))
))
