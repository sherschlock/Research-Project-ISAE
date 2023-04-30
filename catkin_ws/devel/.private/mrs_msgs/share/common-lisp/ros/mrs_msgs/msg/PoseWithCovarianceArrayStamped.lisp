; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude PoseWithCovarianceArrayStamped.msg.html

(cl:defclass <PoseWithCovarianceArrayStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector mrs_msgs-msg:PoseWithCovarianceIdentified)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:PoseWithCovarianceIdentified :initial-element (cl:make-instance 'mrs_msgs-msg:PoseWithCovarianceIdentified))))
)

(cl:defclass PoseWithCovarianceArrayStamped (<PoseWithCovarianceArrayStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseWithCovarianceArrayStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseWithCovarianceArrayStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<PoseWithCovarianceArrayStamped> is deprecated: use mrs_msgs-msg:PoseWithCovarianceArrayStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PoseWithCovarianceArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <PoseWithCovarianceArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:poses-val is deprecated.  Use mrs_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseWithCovarianceArrayStamped>) ostream)
  "Serializes a message object of type '<PoseWithCovarianceArrayStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseWithCovarianceArrayStamped>) istream)
  "Deserializes a message object of type '<PoseWithCovarianceArrayStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:PoseWithCovarianceIdentified))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseWithCovarianceArrayStamped>)))
  "Returns string type for a message object of type '<PoseWithCovarianceArrayStamped>"
  "mrs_msgs/PoseWithCovarianceArrayStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseWithCovarianceArrayStamped)))
  "Returns string type for a message object of type 'PoseWithCovarianceArrayStamped"
  "mrs_msgs/PoseWithCovarianceArrayStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseWithCovarianceArrayStamped>)))
  "Returns md5sum for a message object of type '<PoseWithCovarianceArrayStamped>"
  "3dc32bc5b82667712bb3f8fdf00477a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseWithCovarianceArrayStamped)))
  "Returns md5sum for a message object of type 'PoseWithCovarianceArrayStamped"
  "3dc32bc5b82667712bb3f8fdf00477a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseWithCovarianceArrayStamped>)))
  "Returns full string definition for message of type '<PoseWithCovarianceArrayStamped>"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/PoseWithCovarianceIdentified[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/PoseWithCovarianceIdentified~%uint64 id~%geometry_msgs/Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseWithCovarianceArrayStamped)))
  "Returns full string definition for message of type 'PoseWithCovarianceArrayStamped"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/PoseWithCovarianceIdentified[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/PoseWithCovarianceIdentified~%uint64 id~%geometry_msgs/Pose pose~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseWithCovarianceArrayStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseWithCovarianceArrayStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseWithCovarianceArrayStamped
    (cl:cons ':header (header msg))
    (cl:cons ':poses (poses msg))
))
