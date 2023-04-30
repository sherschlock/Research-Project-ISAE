;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::PathSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'PathSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PATHSRV")
  (make-package "MRS_MSGS::PATHSRV"))
(unless (find-package "MRS_MSGS::PATHSRVREQUEST")
  (make-package "MRS_MSGS::PATHSRVREQUEST"))
(unless (find-package "MRS_MSGS::PATHSRVRESPONSE")
  (make-package "MRS_MSGS::PATHSRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::PathSrvRequest
  :super ros::object
  :slots (_path ))

(defmethod mrs_msgs::PathSrvRequest
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

(defclass mrs_msgs::PathSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::PathSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::PathSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::PathSrv :md5sum-) "cc0419be56f5b03e64c4b130ea5ebe7f")
(setf (get mrs_msgs::PathSrv :datatype-) "mrs_msgs/PathSrv")
(setf (get mrs_msgs::PathSrv :request) mrs_msgs::PathSrvRequest)
(setf (get mrs_msgs::PathSrv :response) mrs_msgs::PathSrvResponse)

(defmethod mrs_msgs::PathSrvRequest
  (:response () (instance mrs_msgs::PathSrvResponse :init)))

(setf (get mrs_msgs::PathSrvRequest :md5sum-) "cc0419be56f5b03e64c4b130ea5ebe7f")
(setf (get mrs_msgs::PathSrvRequest :datatype-) "mrs_msgs/PathSrvRequest")
(setf (get mrs_msgs::PathSrvRequest :definition-)
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

")

(setf (get mrs_msgs::PathSrvResponse :md5sum-) "cc0419be56f5b03e64c4b130ea5ebe7f")
(setf (get mrs_msgs::PathSrvResponse :datatype-) "mrs_msgs/PathSrvResponse")
(setf (get mrs_msgs::PathSrvResponse :definition-)
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

")



(provide :mrs_msgs/PathSrv "cc0419be56f5b03e64c4b130ea5ebe7f")


