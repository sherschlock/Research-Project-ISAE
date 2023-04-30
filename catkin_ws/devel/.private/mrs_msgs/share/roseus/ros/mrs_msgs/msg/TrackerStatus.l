;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TrackerStatus)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TrackerStatus (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TRACKERSTATUS")
  (make-package "MRS_MSGS::TRACKERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TrackerStatus.msg.html


(defclass mrs_msgs::TrackerStatus
  :super ros::object
  :slots (_active _callbacks_enabled _have_goal _tracking_trajectory _trajectory_length _trajectory_idx _trajectory_reference ))

(defmethod mrs_msgs::TrackerStatus
  (:init
   (&key
    ((:active __active) nil)
    ((:callbacks_enabled __callbacks_enabled) nil)
    ((:have_goal __have_goal) nil)
    ((:tracking_trajectory __tracking_trajectory) nil)
    ((:trajectory_length __trajectory_length) 0)
    ((:trajectory_idx __trajectory_idx) 0)
    ((:trajectory_reference __trajectory_reference) (instance mrs_msgs::ReferenceStamped :init))
    )
   (send-super :init)
   (setq _active __active)
   (setq _callbacks_enabled __callbacks_enabled)
   (setq _have_goal __have_goal)
   (setq _tracking_trajectory __tracking_trajectory)
   (setq _trajectory_length (round __trajectory_length))
   (setq _trajectory_idx (round __trajectory_idx))
   (setq _trajectory_reference __trajectory_reference)
   self)
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:callbacks_enabled
   (&optional (__callbacks_enabled :null))
   (if (not (eq __callbacks_enabled :null)) (setq _callbacks_enabled __callbacks_enabled)) _callbacks_enabled)
  (:have_goal
   (&optional (__have_goal :null))
   (if (not (eq __have_goal :null)) (setq _have_goal __have_goal)) _have_goal)
  (:tracking_trajectory
   (&optional (__tracking_trajectory :null))
   (if (not (eq __tracking_trajectory :null)) (setq _tracking_trajectory __tracking_trajectory)) _tracking_trajectory)
  (:trajectory_length
   (&optional __trajectory_length)
   (if __trajectory_length (setq _trajectory_length __trajectory_length)) _trajectory_length)
  (:trajectory_idx
   (&optional __trajectory_idx)
   (if __trajectory_idx (setq _trajectory_idx __trajectory_idx)) _trajectory_idx)
  (:trajectory_reference
   (&rest __trajectory_reference)
   (if (keywordp (car __trajectory_reference))
       (send* _trajectory_reference __trajectory_reference)
     (progn
       (if __trajectory_reference (setq _trajectory_reference (car __trajectory_reference)))
       _trajectory_reference)))
  (:serialization-length
   ()
   (+
    ;; bool _active
    1
    ;; bool _callbacks_enabled
    1
    ;; bool _have_goal
    1
    ;; bool _tracking_trajectory
    1
    ;; int32 _trajectory_length
    4
    ;; int32 _trajectory_idx
    4
    ;; mrs_msgs/ReferenceStamped _trajectory_reference
    (send _trajectory_reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; bool _callbacks_enabled
       (if _callbacks_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _have_goal
       (if _have_goal (write-byte -1 s) (write-byte 0 s))
     ;; bool _tracking_trajectory
       (if _tracking_trajectory (write-byte -1 s) (write-byte 0 s))
     ;; int32 _trajectory_length
       (write-long _trajectory_length s)
     ;; int32 _trajectory_idx
       (write-long _trajectory_idx s)
     ;; mrs_msgs/ReferenceStamped _trajectory_reference
       (send _trajectory_reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _callbacks_enabled
     (setq _callbacks_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _have_goal
     (setq _have_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tracking_trajectory
     (setq _tracking_trajectory (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _trajectory_length
     (setq _trajectory_length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trajectory_idx
     (setq _trajectory_idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mrs_msgs/ReferenceStamped _trajectory_reference
     (send _trajectory_reference :deserialize buf ptr-) (incf ptr- (send _trajectory_reference :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::TrackerStatus :md5sum-) "7b7beb41d4138c0f4dea92d6c49a50c5")
(setf (get mrs_msgs::TrackerStatus :datatype-) "mrs_msgs/TrackerStatus")
(setf (get mrs_msgs::TrackerStatus :definition-)
      "bool active
bool callbacks_enabled

# is true whenever the tracker is doing something
# in other words, not idling
bool have_goal

# is true only then a trajectory is being tracked
bool tracking_trajectory

int32 trajectory_length
int32 trajectory_idx

# only when following trajectory
# the current reference in the trajectory UNINTERPOLATED
mrs_msgs/ReferenceStamped trajectory_reference

================================================================================
MSG: mrs_msgs/ReferenceStamped
# A Positon+Heading reference with a header.

std_msgs/Header header
mrs_msgs/Reference reference

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



(provide :mrs_msgs/TrackerStatus "7b7beb41d4138c0f4dea92d6c49a50c5")


