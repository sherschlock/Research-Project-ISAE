;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TrackArrayStamped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TrackArrayStamped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TRACKARRAYSTAMPED")
  (make-package "MRS_MSGS::TRACKARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude TrackArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::TrackArrayStamped
  :super ros::object
  :slots (_header _tracks ))

(defmethod mrs_msgs::TrackArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracks __tracks) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracks __tracks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracks
   (&rest __tracks)
   (if (keywordp (car __tracks))
       (send* _tracks __tracks)
     (progn
       (if __tracks (setq _tracks (car __tracks)))
       _tracks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/Track[] _tracks
    (apply #'+ (send-all _tracks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/Track[] _tracks
     (write-long (length _tracks) s)
     (dolist (elem _tracks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/Track[] _tracks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracks (let (r) (dotimes (i n) (push (instance mrs_msgs::Track :init) r)) r))
     (dolist (elem- _tracks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::TrackArrayStamped :md5sum-) "f0b496542aa3b02d9554e3f84cdfe92e")
(setf (get mrs_msgs::TrackArrayStamped :datatype-) "mrs_msgs/TrackArrayStamped")
(setf (get mrs_msgs::TrackArrayStamped :definition-)
      "std_msgs/Header header
mrs_msgs/Track[] tracks


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: mrs_msgs/Track
# This message represents an object being tracked in a three-dimensional
# free space by a multi-target tracking algorithm.
# Each tracked objects has a unique and persistent track ID,
# a position, orientation and velocity estimate with uncertainties represented
# by covariance matrices.

# An ID of this track that is unique and persistent for the tracked object.
uint64 id

# The rest of this message contains the state estimate of the track,
# including its position, orientation, and velocity and their respective
# uncertainty covariance matrices. These are all expressed in a coordinate
# frame, that is given in the header of the meta-message, containing this message.

# Three-dimensional position of the track.
geometry_msgs/Point position

# Row-major representation of the 3x3 matrix of position covariance.
# In order, the parameters are:
# (x, y, z)
float64[9] position_covariance

# Three-dimensional orientation of the track.
geometry_msgs/Quaternion orientation

# Row-major representation of the 3x3 matrix of orientation covariance.
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[9] orientation_covariance

# Velocity of the track in free space.
geometry_msgs/Vector3 velocity

# Row-major representation of the 3x3 matrix of velocity covariance.
# In order, the parameters are:
# (dx/dt, dy/dt, dz/dt)
float64[9] velocity_covariance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mrs_msgs/TrackArrayStamped "f0b496542aa3b02d9554e3f84cdfe92e")


