;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::PathfinderDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'PathfinderDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PATHFINDERDIAGNOSTICS")
  (make-package "MRS_MSGS::PATHFINDERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude PathfinderDiagnostics.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::PathfinderDiagnostics
  :super ros::object
  :slots (_header _idle _desired_reference _best_goal ))

(defmethod mrs_msgs::PathfinderDiagnostics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:idle __idle) nil)
    ((:desired_reference __desired_reference) (instance geometry_msgs::Point :init))
    ((:best_goal __best_goal) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _idle __idle)
   (setq _desired_reference __desired_reference)
   (setq _best_goal __best_goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:idle
   (&optional (__idle :null))
   (if (not (eq __idle :null)) (setq _idle __idle)) _idle)
  (:desired_reference
   (&rest __desired_reference)
   (if (keywordp (car __desired_reference))
       (send* _desired_reference __desired_reference)
     (progn
       (if __desired_reference (setq _desired_reference (car __desired_reference)))
       _desired_reference)))
  (:best_goal
   (&rest __best_goal)
   (if (keywordp (car __best_goal))
       (send* _best_goal __best_goal)
     (progn
       (if __best_goal (setq _best_goal (car __best_goal)))
       _best_goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _idle
    1
    ;; geometry_msgs/Point _desired_reference
    (send _desired_reference :serialization-length)
    ;; geometry_msgs/Point _best_goal
    (send _best_goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _idle
       (if _idle (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _desired_reference
       (send _desired_reference :serialize s)
     ;; geometry_msgs/Point _best_goal
       (send _best_goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _idle
     (setq _idle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _desired_reference
     (send _desired_reference :deserialize buf ptr-) (incf ptr- (send _desired_reference :serialization-length))
   ;; geometry_msgs/Point _best_goal
     (send _best_goal :deserialize buf ptr-) (incf ptr- (send _best_goal :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::PathfinderDiagnostics :md5sum-) "8d93eea4b3519478cd470e5b07e11263")
(setf (get mrs_msgs::PathfinderDiagnostics :datatype-) "mrs_msgs/PathfinderDiagnostics")
(setf (get mrs_msgs::PathfinderDiagnostics :definition-)
      "Header header

bool idle
geometry_msgs/Point desired_reference
geometry_msgs/Point best_goal

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mrs_msgs/PathfinderDiagnostics "8d93eea4b3519478cd470e5b07e11263")


