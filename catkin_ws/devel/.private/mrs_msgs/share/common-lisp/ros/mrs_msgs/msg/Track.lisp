; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Track.msg.html

(cl:defclass <Track> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (position_covariance
    :reader position_covariance
    :initarg :position_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (orientation_covariance
    :reader orientation_covariance
    :initarg :orientation_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_covariance
    :reader velocity_covariance
    :initarg :velocity_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Track (<Track>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Track>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Track)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Track> is deprecated: use mrs_msgs-msg:Track instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:id-val is deprecated.  Use mrs_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position-val is deprecated.  Use mrs_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'position_covariance-val :lambda-list '(m))
(cl:defmethod position_covariance-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:position_covariance-val is deprecated.  Use mrs_msgs-msg:position_covariance instead.")
  (position_covariance m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:orientation-val is deprecated.  Use mrs_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'orientation_covariance-val :lambda-list '(m))
(cl:defmethod orientation_covariance-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:orientation_covariance-val is deprecated.  Use mrs_msgs-msg:orientation_covariance instead.")
  (orientation_covariance m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity-val is deprecated.  Use mrs_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'velocity_covariance-val :lambda-list '(m))
(cl:defmethod velocity_covariance-val ((m <Track>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity_covariance-val is deprecated.  Use mrs_msgs-msg:velocity_covariance instead.")
  (velocity_covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Track>) ostream)
  "Serializes a message object of type '<Track>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position_covariance))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'orientation_covariance))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'velocity_covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Track>) istream)
  "Deserializes a message object of type '<Track>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (cl:setf (cl:slot-value msg 'position_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'position_covariance)))
    (cl:dotimes (i 9)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (cl:setf (cl:slot-value msg 'orientation_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'orientation_covariance)))
    (cl:dotimes (i 9)
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (cl:setf (cl:slot-value msg 'velocity_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'velocity_covariance)))
    (cl:dotimes (i 9)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Track>)))
  "Returns string type for a message object of type '<Track>"
  "mrs_msgs/Track")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Track)))
  "Returns string type for a message object of type 'Track"
  "mrs_msgs/Track")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Track>)))
  "Returns md5sum for a message object of type '<Track>"
  "5b27c85dc54166a137b9898639a69354")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Track)))
  "Returns md5sum for a message object of type 'Track"
  "5b27c85dc54166a137b9898639a69354")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Track>)))
  "Returns full string definition for message of type '<Track>"
  (cl:format cl:nil "# This message represents an object being tracked in a three-dimensional~%# free space by a multi-target tracking algorithm.~%# Each tracked objects has a unique and persistent track ID,~%# a position, orientation and velocity estimate with uncertainties represented~%# by covariance matrices.~%~%# An ID of this track that is unique and persistent for the tracked object.~%uint64 id~%~%# The rest of this message contains the state estimate of the track,~%# including its position, orientation, and velocity and their respective~%# uncertainty covariance matrices. These are all expressed in a coordinate~%# frame, that is given in the header of the meta-message, containing this message.~%~%# Three-dimensional position of the track.~%geometry_msgs/Point position~%~%# Row-major representation of the 3x3 matrix of position covariance.~%# In order, the parameters are:~%# (x, y, z)~%float64[9] position_covariance~%~%# Three-dimensional orientation of the track.~%geometry_msgs/Quaternion orientation~%~%# Row-major representation of the 3x3 matrix of orientation covariance.~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[9] orientation_covariance~%~%# Velocity of the track in free space.~%geometry_msgs/Vector3 velocity~%~%# Row-major representation of the 3x3 matrix of velocity covariance.~%# In order, the parameters are:~%# (dx/dt, dy/dt, dz/dt)~%float64[9] velocity_covariance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Track)))
  "Returns full string definition for message of type 'Track"
  (cl:format cl:nil "# This message represents an object being tracked in a three-dimensional~%# free space by a multi-target tracking algorithm.~%# Each tracked objects has a unique and persistent track ID,~%# a position, orientation and velocity estimate with uncertainties represented~%# by covariance matrices.~%~%# An ID of this track that is unique and persistent for the tracked object.~%uint64 id~%~%# The rest of this message contains the state estimate of the track,~%# including its position, orientation, and velocity and their respective~%# uncertainty covariance matrices. These are all expressed in a coordinate~%# frame, that is given in the header of the meta-message, containing this message.~%~%# Three-dimensional position of the track.~%geometry_msgs/Point position~%~%# Row-major representation of the 3x3 matrix of position covariance.~%# In order, the parameters are:~%# (x, y, z)~%float64[9] position_covariance~%~%# Three-dimensional orientation of the track.~%geometry_msgs/Quaternion orientation~%~%# Row-major representation of the 3x3 matrix of orientation covariance.~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[9] orientation_covariance~%~%# Velocity of the track in free space.~%geometry_msgs/Vector3 velocity~%~%# Row-major representation of the 3x3 matrix of velocity covariance.~%# In order, the parameters are:~%# (dx/dt, dy/dt, dz/dt)~%float64[9] velocity_covariance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Track>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Track>))
  "Converts a ROS message object to a list"
  (cl:list 'Track
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':position_covariance (position_covariance msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':orientation_covariance (orientation_covariance msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':velocity_covariance (velocity_covariance msg))
))
