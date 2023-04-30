;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::PathReference)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'PathReference (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PATHREFERENCE")
  (make-package "MRS_MSGS::PATHREFERENCE"))

(in-package "ROS")
;;//! \htmlinclude PathReference.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::PathReference
  :super ros::object
  :slots (_header _use_heading _fly_now _loop _points ))

(defmethod mrs_msgs::PathReference
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:use_heading __use_heading) nil)
    ((:fly_now __fly_now) nil)
    ((:loop __loop) nil)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _use_heading __use_heading)
   (setq _fly_now __fly_now)
   (setq _loop __loop)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:use_heading
   (&optional (__use_heading :null))
   (if (not (eq __use_heading :null)) (setq _use_heading __use_heading)) _use_heading)
  (:fly_now
   (&optional (__fly_now :null))
   (if (not (eq __fly_now :null)) (setq _fly_now __fly_now)) _fly_now)
  (:loop
   (&optional (__loop :null))
   (if (not (eq __loop :null)) (setq _loop __loop)) _loop)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _use_heading
    1
    ;; bool _fly_now
    1
    ;; bool _loop
    1
    ;; mrs_msgs/Reference[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _use_heading
       (if _use_heading (write-byte -1 s) (write-byte 0 s))
     ;; bool _fly_now
       (if _fly_now (write-byte -1 s) (write-byte 0 s))
     ;; bool _loop
       (if _loop (write-byte -1 s) (write-byte 0 s))
     ;; mrs_msgs/Reference[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _use_heading
     (setq _use_heading (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fly_now
     (setq _fly_now (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _loop
     (setq _loop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mrs_msgs/Reference[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance mrs_msgs::Reference :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::PathReference :md5sum-) "b50abfb428c8f5152bf8e3026a07dc49")
(setf (get mrs_msgs::PathReference :datatype-) "mrs_msgs/PathReference")
(setf (get mrs_msgs::PathReference :definition-)
      "# The Path reference

Header header

# True if the heading part should be tracked, otherwise the tracker should maintain the current heading.
bool use_heading

# True if a planner should start being tracked immediately after receiving it.
# Beware the header time stamp matters in this case.
bool fly_now

# True if the path should be looped.
bool loop

# The list of points in the path.
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



(provide :mrs_msgs/PathReference "b50abfb428c8f5152bf8e3026a07dc49")


