;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TrajectoryReferenceSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TrajectoryReferenceSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TRAJECTORYREFERENCESRV")
  (make-package "MRS_MSGS::TRAJECTORYREFERENCESRV"))
(unless (find-package "MRS_MSGS::TRAJECTORYREFERENCESRVREQUEST")
  (make-package "MRS_MSGS::TRAJECTORYREFERENCESRVREQUEST"))
(unless (find-package "MRS_MSGS::TRAJECTORYREFERENCESRVRESPONSE")
  (make-package "MRS_MSGS::TRAJECTORYREFERENCESRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::TrajectoryReferenceSrvRequest
  :super ros::object
  :slots (_trajectory ))

(defmethod mrs_msgs::TrajectoryReferenceSrvRequest
  (:init
   (&key
    ((:trajectory __trajectory) (instance mrs_msgs::TrajectoryReference :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
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
    ;; mrs_msgs/TrajectoryReference _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/TrajectoryReference _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/TrajectoryReference _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::TrajectoryReferenceSrvResponse
  :super ros::object
  :slots (_success _message _modified _tracker_names _tracker_successes _tracker_messages ))

(defmethod mrs_msgs::TrajectoryReferenceSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:modified __modified) nil)
    ((:tracker_names __tracker_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tracker_successes __tracker_successes) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:tracker_messages __tracker_messages) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _modified __modified)
   (setq _tracker_names __tracker_names)
   (setq _tracker_successes __tracker_successes)
   (setq _tracker_messages __tracker_messages)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:modified
   (&optional (__modified :null))
   (if (not (eq __modified :null)) (setq _modified __modified)) _modified)
  (:tracker_names
   (&optional __tracker_names)
   (if __tracker_names (setq _tracker_names __tracker_names)) _tracker_names)
  (:tracker_successes
   (&optional __tracker_successes)
   (if __tracker_successes (setq _tracker_successes __tracker_successes)) _tracker_successes)
  (:tracker_messages
   (&optional __tracker_messages)
   (if __tracker_messages (setq _tracker_messages __tracker_messages)) _tracker_messages)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; bool _modified
    1
    ;; string[] _tracker_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tracker_names)) 4
    ;; bool[] _tracker_successes
    (* 1    (length _tracker_successes)) 4
    ;; string[] _tracker_messages
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tracker_messages)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _modified
       (if _modified (write-byte -1 s) (write-byte 0 s))
     ;; string[] _tracker_names
     (write-long (length _tracker_names) s)
     (dolist (elem _tracker_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _tracker_successes
     (write-long (length _tracker_successes) s)
     (dotimes (i (length _tracker_successes))
       (if (elt _tracker_successes i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string[] _tracker_messages
     (write-long (length _tracker_messages) s)
     (dolist (elem _tracker_messages)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _modified
     (setq _modified (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _tracker_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracker_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tracker_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _tracker_successes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracker_successes (make-list n))
     (dotimes (i n)
     (setf (elt _tracker_successes i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string[] _tracker_messages
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tracker_messages (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tracker_messages i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass mrs_msgs::TrajectoryReferenceSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::TrajectoryReferenceSrv :md5sum-) "c46e24277d96ed318e50872a694d7abc")
(setf (get mrs_msgs::TrajectoryReferenceSrv :datatype-) "mrs_msgs/TrajectoryReferenceSrv")
(setf (get mrs_msgs::TrajectoryReferenceSrv :request) mrs_msgs::TrajectoryReferenceSrvRequest)
(setf (get mrs_msgs::TrajectoryReferenceSrv :response) mrs_msgs::TrajectoryReferenceSrvResponse)

(defmethod mrs_msgs::TrajectoryReferenceSrvRequest
  (:response () (instance mrs_msgs::TrajectoryReferenceSrvResponse :init)))

(setf (get mrs_msgs::TrajectoryReferenceSrvRequest :md5sum-) "c46e24277d96ed318e50872a694d7abc")
(setf (get mrs_msgs::TrajectoryReferenceSrvRequest :datatype-) "mrs_msgs/TrajectoryReferenceSrvRequest")
(setf (get mrs_msgs::TrajectoryReferenceSrvRequest :definition-)
      "mrs_msgs/TrajectoryReference trajectory

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
---

# response of the currently active tracker
bool success
string message
bool modified

# responses of each loaded tracker
string[] tracker_names
bool[] tracker_successes
string[] tracker_messages

")

(setf (get mrs_msgs::TrajectoryReferenceSrvResponse :md5sum-) "c46e24277d96ed318e50872a694d7abc")
(setf (get mrs_msgs::TrajectoryReferenceSrvResponse :datatype-) "mrs_msgs/TrajectoryReferenceSrvResponse")
(setf (get mrs_msgs::TrajectoryReferenceSrvResponse :definition-)
      "mrs_msgs/TrajectoryReference trajectory

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
---

# response of the currently active tracker
bool success
string message
bool modified

# responses of each loaded tracker
string[] tracker_names
bool[] tracker_successes
string[] tracker_messages

")



(provide :mrs_msgs/TrajectoryReferenceSrv "c46e24277d96ed318e50872a694d7abc")


