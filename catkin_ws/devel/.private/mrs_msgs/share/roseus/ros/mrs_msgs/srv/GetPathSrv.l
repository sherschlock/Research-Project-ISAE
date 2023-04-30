;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GetPathSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GetPathSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GETPATHSRV")
  (make-package "MRS_MSGS::GETPATHSRV"))
(unless (find-package "MRS_MSGS::GETPATHSRVREQUEST")
  (make-package "MRS_MSGS::GETPATHSRVREQUEST"))
(unless (find-package "MRS_MSGS::GETPATHSRVRESPONSE")
  (make-package "MRS_MSGS::GETPATHSRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::GetPathSrvRequest
  :super ros::object
  :slots (_path ))

(defmethod mrs_msgs::GetPathSrvRequest
  (:init
   (&key
    ((:path __path) (instance mrs_msgs::Path :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; mrs_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::GetPathSrvResponse
  :super ros::object
  :slots (_success _message _trajectory ))

(defmethod mrs_msgs::GetPathSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:trajectory __trajectory) (instance mrs_msgs::TrajectoryReference :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _trajectory __trajectory)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; mrs_msgs/TrajectoryReference _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; mrs_msgs/TrajectoryReference _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/TrajectoryReference _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::GetPathSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::GetPathSrv :md5sum-) "2a60d1d5c00a767af0cb4448e8a7d3af")
(setf (get mrs_msgs::GetPathSrv :datatype-) "mrs_msgs/GetPathSrv")
(setf (get mrs_msgs::GetPathSrv :request) mrs_msgs::GetPathSrvRequest)
(setf (get mrs_msgs::GetPathSrv :response) mrs_msgs::GetPathSrvResponse)

(defmethod mrs_msgs::GetPathSrvRequest
  (:response () (instance mrs_msgs::GetPathSrvResponse :init)))

(setf (get mrs_msgs::GetPathSrvRequest :md5sum-) "2a60d1d5c00a767af0cb4448e8a7d3af")
(setf (get mrs_msgs::GetPathSrvRequest :datatype-) "mrs_msgs/GetPathSrvRequest")
(setf (get mrs_msgs::GetPathSrvRequest :definition-)
      "mrs_msgs/Path path

================================================================================
MSG: mrs_msgs/Path
Header header

int64 input_id

bool use_heading
bool fly_now
bool stop_at_waypoints
bool loop

bool override_constraints
float64 override_max_velocity_horizontal
float64 override_max_acceleration_horizontal
float64 override_max_jerk_horizontal
float64 override_max_velocity_vertical
float64 override_max_acceleration_vertical
float64 override_max_jerk_vertical

bool relax_heading

Reference[] points

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
MSG: mrs_msgs/Reference
# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
string message
mrs_msgs/TrajectoryReference trajectory


================================================================================
MSG: mrs_msgs/TrajectoryReference
# The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.

Header header

# uniquely identifies the user input
int64 input_id

# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.
bool use_heading

# True if the trajectory should start being tracked immediately after receiving it.
# Beware the header time stamp matters in this case.
bool fly_now

# True if the trajectory should be looped.
bool loop

# The time difference between the trajectory samples.
# It falls back to 0.2 s if left unset.
float64 dt

# The list of points in the trajectory, spaced by the dt.
Reference[] points 

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
MSG: mrs_msgs/Reference
# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get mrs_msgs::GetPathSrvResponse :md5sum-) "2a60d1d5c00a767af0cb4448e8a7d3af")
(setf (get mrs_msgs::GetPathSrvResponse :datatype-) "mrs_msgs/GetPathSrvResponse")
(setf (get mrs_msgs::GetPathSrvResponse :definition-)
      "mrs_msgs/Path path

================================================================================
MSG: mrs_msgs/Path
Header header

int64 input_id

bool use_heading
bool fly_now
bool stop_at_waypoints
bool loop

bool override_constraints
float64 override_max_velocity_horizontal
float64 override_max_acceleration_horizontal
float64 override_max_jerk_horizontal
float64 override_max_velocity_vertical
float64 override_max_acceleration_vertical
float64 override_max_jerk_vertical

bool relax_heading

Reference[] points

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
MSG: mrs_msgs/Reference
# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
string message
mrs_msgs/TrajectoryReference trajectory


================================================================================
MSG: mrs_msgs/TrajectoryReference
# The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.

Header header

# uniquely identifies the user input
int64 input_id

# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.
bool use_heading

# True if the trajectory should start being tracked immediately after receiving it.
# Beware the header time stamp matters in this case.
bool fly_now

# True if the trajectory should be looped.
bool loop

# The time difference between the trajectory samples.
# It falls back to 0.2 s if left unset.
float64 dt

# The list of points in the trajectory, spaced by the dt.
Reference[] points 

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
MSG: mrs_msgs/Reference
# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :mrs_msgs/GetPathSrv "2a60d1d5c00a767af0cb4448e8a7d3af")


