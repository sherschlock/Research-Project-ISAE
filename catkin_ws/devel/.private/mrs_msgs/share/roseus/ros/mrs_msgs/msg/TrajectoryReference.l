;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TrajectoryReference)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TrajectoryReference (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TRAJECTORYREFERENCE")
  (make-package "MRS_MSGS::TRAJECTORYREFERENCE"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryReference.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::TrajectoryReference
  :super ros::object
  :slots (_header _input_id _use_heading _fly_now _loop _dt _points ))

(defmethod mrs_msgs::TrajectoryReference
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:input_id __input_id) 0)
    ((:use_heading __use_heading) nil)
    ((:fly_now __fly_now) nil)
    ((:loop __loop) nil)
    ((:dt __dt) 0.0)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _input_id (round __input_id))
   (setq _use_heading __use_heading)
   (setq _fly_now __fly_now)
   (setq _loop __loop)
   (setq _dt (float __dt))
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:input_id
   (&optional __input_id)
   (if __input_id (setq _input_id __input_id)) _input_id)
  (:use_heading
   (&optional (__use_heading :null))
   (if (not (eq __use_heading :null)) (setq _use_heading __use_heading)) _use_heading)
  (:fly_now
   (&optional (__fly_now :null))
   (if (not (eq __fly_now :null)) (setq _fly_now __fly_now)) _fly_now)
  (:loop
   (&optional (__loop :null))
   (if (not (eq __loop :null)) (setq _loop __loop)) _loop)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
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
    ;; int64 _input_id
    8
    ;; bool _use_heading
    1
    ;; bool _fly_now
    1
    ;; bool _loop
    1
    ;; float64 _dt
    8
    ;; mrs_msgs/Reference[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _input_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _input_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _input_id) (= (length (_input_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_input_id . bv) 0) 0) s)
              (write-long (ash (elt (_input_id . bv) 1) -1) s))
             ((and (class _input_id) (= (length (_input_id . bv)) 1)) ;; big1
              (write-long (elt (_input_id . bv) 0) s)
              (write-long (if (>= _input_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _input_id s)(write-long (if (>= _input_id 0) 0 #xffffffff) s)))
     ;; bool _use_heading
       (if _use_heading (write-byte -1 s) (write-byte 0 s))
     ;; bool _fly_now
       (if _fly_now (write-byte -1 s) (write-byte 0 s))
     ;; bool _loop
       (if _loop (write-byte -1 s) (write-byte 0 s))
     ;; float64 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; int64 _input_id
#+(or :alpha :irix6 :x86_64)
      (setf _input_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _input_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _use_heading
     (setq _use_heading (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fly_now
     (setq _fly_now (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _loop
     (setq _loop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _dt
     (setq _dt (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get mrs_msgs::TrajectoryReference :md5sum-) "c35eaf8fc25da8c5757a71d2aec21c44")
(setf (get mrs_msgs::TrajectoryReference :datatype-) "mrs_msgs/TrajectoryReference")
(setf (get mrs_msgs::TrajectoryReference :definition-)
      "# The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.

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



(provide :mrs_msgs/TrajectoryReference "c35eaf8fc25da8c5757a71d2aec21c44")


