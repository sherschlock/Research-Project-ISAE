;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Path)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Path (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PATH")
  (make-package "MRS_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Path
  :super ros::object
  :slots (_header _input_id _use_heading _fly_now _stop_at_waypoints _loop _override_constraints _override_max_velocity_horizontal _override_max_acceleration_horizontal _override_max_jerk_horizontal _override_max_velocity_vertical _override_max_acceleration_vertical _override_max_jerk_vertical _relax_heading _points ))

(defmethod mrs_msgs::Path
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:input_id __input_id) 0)
    ((:use_heading __use_heading) nil)
    ((:fly_now __fly_now) nil)
    ((:stop_at_waypoints __stop_at_waypoints) nil)
    ((:loop __loop) nil)
    ((:override_constraints __override_constraints) nil)
    ((:override_max_velocity_horizontal __override_max_velocity_horizontal) 0.0)
    ((:override_max_acceleration_horizontal __override_max_acceleration_horizontal) 0.0)
    ((:override_max_jerk_horizontal __override_max_jerk_horizontal) 0.0)
    ((:override_max_velocity_vertical __override_max_velocity_vertical) 0.0)
    ((:override_max_acceleration_vertical __override_max_acceleration_vertical) 0.0)
    ((:override_max_jerk_vertical __override_max_jerk_vertical) 0.0)
    ((:relax_heading __relax_heading) nil)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _input_id (round __input_id))
   (setq _use_heading __use_heading)
   (setq _fly_now __fly_now)
   (setq _stop_at_waypoints __stop_at_waypoints)
   (setq _loop __loop)
   (setq _override_constraints __override_constraints)
   (setq _override_max_velocity_horizontal (float __override_max_velocity_horizontal))
   (setq _override_max_acceleration_horizontal (float __override_max_acceleration_horizontal))
   (setq _override_max_jerk_horizontal (float __override_max_jerk_horizontal))
   (setq _override_max_velocity_vertical (float __override_max_velocity_vertical))
   (setq _override_max_acceleration_vertical (float __override_max_acceleration_vertical))
   (setq _override_max_jerk_vertical (float __override_max_jerk_vertical))
   (setq _relax_heading __relax_heading)
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
  (:stop_at_waypoints
   (&optional (__stop_at_waypoints :null))
   (if (not (eq __stop_at_waypoints :null)) (setq _stop_at_waypoints __stop_at_waypoints)) _stop_at_waypoints)
  (:loop
   (&optional (__loop :null))
   (if (not (eq __loop :null)) (setq _loop __loop)) _loop)
  (:override_constraints
   (&optional (__override_constraints :null))
   (if (not (eq __override_constraints :null)) (setq _override_constraints __override_constraints)) _override_constraints)
  (:override_max_velocity_horizontal
   (&optional __override_max_velocity_horizontal)
   (if __override_max_velocity_horizontal (setq _override_max_velocity_horizontal __override_max_velocity_horizontal)) _override_max_velocity_horizontal)
  (:override_max_acceleration_horizontal
   (&optional __override_max_acceleration_horizontal)
   (if __override_max_acceleration_horizontal (setq _override_max_acceleration_horizontal __override_max_acceleration_horizontal)) _override_max_acceleration_horizontal)
  (:override_max_jerk_horizontal
   (&optional __override_max_jerk_horizontal)
   (if __override_max_jerk_horizontal (setq _override_max_jerk_horizontal __override_max_jerk_horizontal)) _override_max_jerk_horizontal)
  (:override_max_velocity_vertical
   (&optional __override_max_velocity_vertical)
   (if __override_max_velocity_vertical (setq _override_max_velocity_vertical __override_max_velocity_vertical)) _override_max_velocity_vertical)
  (:override_max_acceleration_vertical
   (&optional __override_max_acceleration_vertical)
   (if __override_max_acceleration_vertical (setq _override_max_acceleration_vertical __override_max_acceleration_vertical)) _override_max_acceleration_vertical)
  (:override_max_jerk_vertical
   (&optional __override_max_jerk_vertical)
   (if __override_max_jerk_vertical (setq _override_max_jerk_vertical __override_max_jerk_vertical)) _override_max_jerk_vertical)
  (:relax_heading
   (&optional (__relax_heading :null))
   (if (not (eq __relax_heading :null)) (setq _relax_heading __relax_heading)) _relax_heading)
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
    ;; bool _stop_at_waypoints
    1
    ;; bool _loop
    1
    ;; bool _override_constraints
    1
    ;; float64 _override_max_velocity_horizontal
    8
    ;; float64 _override_max_acceleration_horizontal
    8
    ;; float64 _override_max_jerk_horizontal
    8
    ;; float64 _override_max_velocity_vertical
    8
    ;; float64 _override_max_acceleration_vertical
    8
    ;; float64 _override_max_jerk_vertical
    8
    ;; bool _relax_heading
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
     ;; bool _stop_at_waypoints
       (if _stop_at_waypoints (write-byte -1 s) (write-byte 0 s))
     ;; bool _loop
       (if _loop (write-byte -1 s) (write-byte 0 s))
     ;; bool _override_constraints
       (if _override_constraints (write-byte -1 s) (write-byte 0 s))
     ;; float64 _override_max_velocity_horizontal
       (sys::poke _override_max_velocity_horizontal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _override_max_acceleration_horizontal
       (sys::poke _override_max_acceleration_horizontal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _override_max_jerk_horizontal
       (sys::poke _override_max_jerk_horizontal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _override_max_velocity_vertical
       (sys::poke _override_max_velocity_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _override_max_acceleration_vertical
       (sys::poke _override_max_acceleration_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _override_max_jerk_vertical
       (sys::poke _override_max_jerk_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _relax_heading
       (if _relax_heading (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _stop_at_waypoints
     (setq _stop_at_waypoints (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _loop
     (setq _loop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _override_constraints
     (setq _override_constraints (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _override_max_velocity_horizontal
     (setq _override_max_velocity_horizontal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _override_max_acceleration_horizontal
     (setq _override_max_acceleration_horizontal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _override_max_jerk_horizontal
     (setq _override_max_jerk_horizontal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _override_max_velocity_vertical
     (setq _override_max_velocity_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _override_max_acceleration_vertical
     (setq _override_max_acceleration_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _override_max_jerk_vertical
     (setq _override_max_jerk_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _relax_heading
     (setq _relax_heading (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get mrs_msgs::Path :md5sum-) "a198d3f4e3c407d1d87c51afdfa45189")
(setf (get mrs_msgs::Path :datatype-) "mrs_msgs/Path")
(setf (get mrs_msgs::Path :definition-)
      "Header header

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

")



(provide :mrs_msgs/Path "a198d3f4e3c407d1d87c51afdfa45189")


