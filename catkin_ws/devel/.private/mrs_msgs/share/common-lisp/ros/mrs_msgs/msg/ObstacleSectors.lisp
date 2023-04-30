; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ObstacleSectors.msg.html

(cl:defclass <ObstacleSectors> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (n_horizontal_sectors
    :reader n_horizontal_sectors
    :initarg :n_horizontal_sectors
    :type cl:integer
    :initform 0)
   (sectors_vertical_fov
    :reader sectors_vertical_fov
    :initarg :sectors_vertical_fov
    :type cl:float
    :initform 0.0)
   (sectors
    :reader sectors
    :initarg :sectors
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sector_sensors
    :reader sector_sensors
    :initarg :sector_sensors
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ObstacleSectors (<ObstacleSectors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleSectors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleSectors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ObstacleSectors> is deprecated: use mrs_msgs-msg:ObstacleSectors instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstacleSectors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'n_horizontal_sectors-val :lambda-list '(m))
(cl:defmethod n_horizontal_sectors-val ((m <ObstacleSectors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:n_horizontal_sectors-val is deprecated.  Use mrs_msgs-msg:n_horizontal_sectors instead.")
  (n_horizontal_sectors m))

(cl:ensure-generic-function 'sectors_vertical_fov-val :lambda-list '(m))
(cl:defmethod sectors_vertical_fov-val ((m <ObstacleSectors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:sectors_vertical_fov-val is deprecated.  Use mrs_msgs-msg:sectors_vertical_fov instead.")
  (sectors_vertical_fov m))

(cl:ensure-generic-function 'sectors-val :lambda-list '(m))
(cl:defmethod sectors-val ((m <ObstacleSectors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:sectors-val is deprecated.  Use mrs_msgs-msg:sectors instead.")
  (sectors m))

(cl:ensure-generic-function 'sector_sensors-val :lambda-list '(m))
(cl:defmethod sector_sensors-val ((m <ObstacleSectors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:sector_sensors-val is deprecated.  Use mrs_msgs-msg:sector_sensors instead.")
  (sector_sensors m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObstacleSectors>)))
    "Constants for message type '<ObstacleSectors>"
  '((:OBSTACLE_NOT_DETECTED . -1.0)
    (:OBSTACLE_NO_DATA . -2.0)
    (:SENSOR_NONE . -1)
    (:SENSOR_DEPTH . 0)
    (:SENSOR_LIDAR1D . 1)
    (:SENSOR_LIDAR2D . 2)
    (:SENSOR_LIDAR3D . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObstacleSectors)))
    "Constants for message type 'ObstacleSectors"
  '((:OBSTACLE_NOT_DETECTED . -1.0)
    (:OBSTACLE_NO_DATA . -2.0)
    (:SENSOR_NONE . -1)
    (:SENSOR_DEPTH . 0)
    (:SENSOR_LIDAR1D . 1)
    (:SENSOR_LIDAR2D . 2)
    (:SENSOR_LIDAR3D . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleSectors>) ostream)
  "Serializes a message object of type '<ObstacleSectors>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_horizontal_sectors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_horizontal_sectors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'n_horizontal_sectors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'n_horizontal_sectors)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sectors_vertical_fov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sectors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'sectors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sector_sensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'sector_sensors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleSectors>) istream)
  "Deserializes a message object of type '<ObstacleSectors>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_horizontal_sectors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_horizontal_sectors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'n_horizontal_sectors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'n_horizontal_sectors)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sectors_vertical_fov) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sectors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sectors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sector_sensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sector_sensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleSectors>)))
  "Returns string type for a message object of type '<ObstacleSectors>"
  "mrs_msgs/ObstacleSectors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleSectors)))
  "Returns string type for a message object of type 'ObstacleSectors"
  "mrs_msgs/ObstacleSectors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleSectors>)))
  "Returns md5sum for a message object of type '<ObstacleSectors>"
  "b30315b35f44636daa49d3ef18ea3c4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleSectors)))
  "Returns md5sum for a message object of type 'ObstacleSectors"
  "b30315b35f44636daa49d3ef18ea3c4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleSectors>)))
  "Returns full string definition for message of type '<ObstacleSectors>"
  (cl:format cl:nil "# This message represents the output from the mrs_bumper package.~%#~%# The *sectors* variable contains information about obstacles in the horizontal,~%# bottom and up sectors. Horizontal sectors take up the first part of the array.~%# Bottom and up sectors are the second and first elements from the end of the array:~%# sectors[0, 1, ..., n_horizontal_sectors-1] -> horizontal sectors~%# sectors[n_horizontal_sectors]              -> bottom sector~%# sectors[n_horizontal_sectors+1]            -> top sector~%#~%# The horizontal sectors are indexed counterclockwise, starting from the front facing~%# sector, relative to the MAV orientation (see picture below). The last two~%# elements of the *sectors* variable are the above and below sectors, respectively.~%#~%#         TOP VIEW~%#         --------~%#~%#        \\         /~%#         \\   0   /   (forward)~%#          \\     /        x ~%#                         ^~%#            O O          |~%#        1    X    3   <--* z~%#            O O       y~%#                ~%#          /     \\~%#         /   2   \\~%#        /         \\~%~%# Time at which the data in this message was generated, coordinate frame ID.~%std_msgs/Header header~%~%# Number of horizontal bumper sectors (total number of sectors -2).~%uint32    n_horizontal_sectors~%~%# Vertical FOV of the individual horizontal sectors.~%float64   sectors_vertical_fov~%~%# Distance to closest detected obstacle in each sector.~%float64[] sectors~%~%# Sensor ID of the sensor, which was used for obstacle detection in each sector.~%int8[]    sector_sensors~%~%## Obstacle distance special values.~%float64 OBSTACLE_NOT_DETECTED=-1~%float64 OBSTACLE_NO_DATA=-2~%~%## Sensor types enum.~%int8 SENSOR_NONE=-1~%int8 SENSOR_DEPTH=0~%int8 SENSOR_LIDAR1D=1~%int8 SENSOR_LIDAR2D=2~%int8 SENSOR_LIDAR3D=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleSectors)))
  "Returns full string definition for message of type 'ObstacleSectors"
  (cl:format cl:nil "# This message represents the output from the mrs_bumper package.~%#~%# The *sectors* variable contains information about obstacles in the horizontal,~%# bottom and up sectors. Horizontal sectors take up the first part of the array.~%# Bottom and up sectors are the second and first elements from the end of the array:~%# sectors[0, 1, ..., n_horizontal_sectors-1] -> horizontal sectors~%# sectors[n_horizontal_sectors]              -> bottom sector~%# sectors[n_horizontal_sectors+1]            -> top sector~%#~%# The horizontal sectors are indexed counterclockwise, starting from the front facing~%# sector, relative to the MAV orientation (see picture below). The last two~%# elements of the *sectors* variable are the above and below sectors, respectively.~%#~%#         TOP VIEW~%#         --------~%#~%#        \\         /~%#         \\   0   /   (forward)~%#          \\     /        x ~%#                         ^~%#            O O          |~%#        1    X    3   <--* z~%#            O O       y~%#                ~%#          /     \\~%#         /   2   \\~%#        /         \\~%~%# Time at which the data in this message was generated, coordinate frame ID.~%std_msgs/Header header~%~%# Number of horizontal bumper sectors (total number of sectors -2).~%uint32    n_horizontal_sectors~%~%# Vertical FOV of the individual horizontal sectors.~%float64   sectors_vertical_fov~%~%# Distance to closest detected obstacle in each sector.~%float64[] sectors~%~%# Sensor ID of the sensor, which was used for obstacle detection in each sector.~%int8[]    sector_sensors~%~%## Obstacle distance special values.~%float64 OBSTACLE_NOT_DETECTED=-1~%float64 OBSTACLE_NO_DATA=-2~%~%## Sensor types enum.~%int8 SENSOR_NONE=-1~%int8 SENSOR_DEPTH=0~%int8 SENSOR_LIDAR1D=1~%int8 SENSOR_LIDAR2D=2~%int8 SENSOR_LIDAR3D=3~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleSectors>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sectors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sector_sensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleSectors>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleSectors
    (cl:cons ':header (header msg))
    (cl:cons ':n_horizontal_sectors (n_horizontal_sectors msg))
    (cl:cons ':sectors_vertical_fov (sectors_vertical_fov msg))
    (cl:cons ':sectors (sectors msg))
    (cl:cons ':sector_sensors (sector_sensors msg))
))
