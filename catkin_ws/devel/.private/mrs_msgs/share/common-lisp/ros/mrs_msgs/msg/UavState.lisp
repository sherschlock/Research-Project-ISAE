; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude UavState.msg.html

(cl:defclass <UavState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (child_frame_id
    :reader child_frame_id
    :initarg :child_frame_id
    :type cl:string
    :initform "")
   (estimator_horizontal
    :reader estimator_horizontal
    :initarg :estimator_horizontal
    :type mrs_msgs-msg:EstimatorType
    :initform (cl:make-instance 'mrs_msgs-msg:EstimatorType))
   (estimator_vertical
    :reader estimator_vertical
    :initarg :estimator_vertical
    :type mrs_msgs-msg:AltitudeType
    :initform (cl:make-instance 'mrs_msgs-msg:AltitudeType))
   (estimator_heading
    :reader estimator_heading
    :initarg :estimator_heading
    :type mrs_msgs-msg:HeadingType
    :initform (cl:make-instance 'mrs_msgs-msg:HeadingType))
   (estimator_iteration
    :reader estimator_iteration
    :initarg :estimator_iteration
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (acceleration_disturbance
    :reader acceleration_disturbance
    :initarg :acceleration_disturbance
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel)))
)

(cl:defclass UavState (<UavState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<UavState> is deprecated: use mrs_msgs-msg:UavState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'child_frame_id-val :lambda-list '(m))
(cl:defmethod child_frame_id-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:child_frame_id-val is deprecated.  Use mrs_msgs-msg:child_frame_id instead.")
  (child_frame_id m))

(cl:ensure-generic-function 'estimator_horizontal-val :lambda-list '(m))
(cl:defmethod estimator_horizontal-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:estimator_horizontal-val is deprecated.  Use mrs_msgs-msg:estimator_horizontal instead.")
  (estimator_horizontal m))

(cl:ensure-generic-function 'estimator_vertical-val :lambda-list '(m))
(cl:defmethod estimator_vertical-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:estimator_vertical-val is deprecated.  Use mrs_msgs-msg:estimator_vertical instead.")
  (estimator_vertical m))

(cl:ensure-generic-function 'estimator_heading-val :lambda-list '(m))
(cl:defmethod estimator_heading-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:estimator_heading-val is deprecated.  Use mrs_msgs-msg:estimator_heading instead.")
  (estimator_heading m))

(cl:ensure-generic-function 'estimator_iteration-val :lambda-list '(m))
(cl:defmethod estimator_iteration-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:estimator_iteration-val is deprecated.  Use mrs_msgs-msg:estimator_iteration instead.")
  (estimator_iteration m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pose-val is deprecated.  Use mrs_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:velocity-val is deprecated.  Use mrs_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:acceleration-val is deprecated.  Use mrs_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'acceleration_disturbance-val :lambda-list '(m))
(cl:defmethod acceleration_disturbance-val ((m <UavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:acceleration_disturbance-val is deprecated.  Use mrs_msgs-msg:acceleration_disturbance instead.")
  (acceleration_disturbance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavState>) ostream)
  "Serializes a message object of type '<UavState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_horizontal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_vertical) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_heading) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estimator_iteration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'estimator_iteration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'estimator_iteration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'estimator_iteration)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_disturbance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavState>) istream)
  "Deserializes a message object of type '<UavState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_horizontal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_vertical) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_heading) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estimator_iteration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'estimator_iteration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'estimator_iteration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'estimator_iteration)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_disturbance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavState>)))
  "Returns string type for a message object of type '<UavState>"
  "mrs_msgs/UavState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavState)))
  "Returns string type for a message object of type 'UavState"
  "mrs_msgs/UavState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavState>)))
  "Returns md5sum for a message object of type '<UavState>"
  "1503d21903aa0842a248ee0ea90f32c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavState)))
  "Returns md5sum for a message object of type 'UavState"
  "1503d21903aa0842a248ee0ea90f32c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavState>)))
  "Returns full string definition for message of type '<UavState>"
  (cl:format cl:nil "std_msgs/Header header~%string child_frame_id~%~%# text names of the used estimators~%mrs_msgs/EstimatorType estimator_horizontal~%mrs_msgs/AltitudeType estimator_vertical~%mrs_msgs/HeadingType estimator_heading~%~%# initiated with 0~%# increases if any estimator changes frame of reference~%# or if any estimator is resetted~%uint32 estimator_iteration~%~%geometry_msgs/Pose pose~%geometry_msgs/Twist velocity~%geometry_msgs/Accel acceleration~%geometry_msgs/Accel acceleration_disturbance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavState)))
  "Returns full string definition for message of type 'UavState"
  (cl:format cl:nil "std_msgs/Header header~%string child_frame_id~%~%# text names of the used estimators~%mrs_msgs/EstimatorType estimator_horizontal~%mrs_msgs/AltitudeType estimator_vertical~%mrs_msgs/HeadingType estimator_heading~%~%# initiated with 0~%# increases if any estimator changes frame of reference~%# or if any estimator is resetted~%uint32 estimator_iteration~%~%geometry_msgs/Pose pose~%geometry_msgs/Twist velocity~%geometry_msgs/Accel acceleration~%geometry_msgs/Accel acceleration_disturbance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'child_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_horizontal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_vertical))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_heading))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_disturbance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavState>))
  "Converts a ROS message object to a list"
  (cl:list 'UavState
    (cl:cons ':header (header msg))
    (cl:cons ':child_frame_id (child_frame_id msg))
    (cl:cons ':estimator_horizontal (estimator_horizontal msg))
    (cl:cons ':estimator_vertical (estimator_vertical msg))
    (cl:cons ':estimator_heading (estimator_heading msg))
    (cl:cons ':estimator_iteration (estimator_iteration msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':acceleration_disturbance (acceleration_disturbance msg))
))
