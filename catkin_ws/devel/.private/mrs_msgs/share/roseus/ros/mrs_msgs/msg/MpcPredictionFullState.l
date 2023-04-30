;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::MpcPredictionFullState)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'MpcPredictionFullState (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::MPCPREDICTIONFULLSTATE")
  (make-package "MRS_MSGS::MPCPREDICTIONFULLSTATE"))

(in-package "ROS")
;;//! \htmlinclude MpcPredictionFullState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::MpcPredictionFullState
  :super ros::object
  :slots (_header _input_id _stamps _position _velocity _acceleration _jerk _heading _heading_rate _heading_acceleration _heading_jerk ))

(defmethod mrs_msgs::MpcPredictionFullState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:input_id __input_id) 0)
    ((:stamps __stamps) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:position __position) ())
    ((:velocity __velocity) ())
    ((:acceleration __acceleration) ())
    ((:jerk __jerk) ())
    ((:heading __heading) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heading_rate __heading_rate) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heading_acceleration __heading_acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heading_jerk __heading_jerk) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _input_id (round __input_id))
   (setq _stamps __stamps)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _jerk __jerk)
   (setq _heading __heading)
   (setq _heading_rate __heading_rate)
   (setq _heading_acceleration __heading_acceleration)
   (setq _heading_jerk __heading_jerk)
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
  (:stamps
   (&optional __stamps)
   (if __stamps (setq _stamps __stamps)) _stamps)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:heading_rate
   (&optional __heading_rate)
   (if __heading_rate (setq _heading_rate __heading_rate)) _heading_rate)
  (:heading_acceleration
   (&optional __heading_acceleration)
   (if __heading_acceleration (setq _heading_acceleration __heading_acceleration)) _heading_acceleration)
  (:heading_jerk
   (&optional __heading_jerk)
   (if __heading_jerk (setq _heading_jerk __heading_jerk)) _heading_jerk)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _input_id
    8
    ;; time[] _stamps
    (* 8    (length _stamps)) 4
    ;; geometry_msgs/Point[] _position
    (apply #'+ (send-all _position :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _velocity
    (apply #'+ (send-all _velocity :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _acceleration
    (apply #'+ (send-all _acceleration :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _jerk
    (apply #'+ (send-all _jerk :serialization-length)) 4
    ;; float64[] _heading
    (* 8    (length _heading)) 4
    ;; float64[] _heading_rate
    (* 8    (length _heading_rate)) 4
    ;; float64[] _heading_acceleration
    (* 8    (length _heading_acceleration)) 4
    ;; float64[] _heading_jerk
    (* 8    (length _heading_jerk)) 4
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
     ;; time[] _stamps
     (write-long (length _stamps) s)
     (dotimes (i (length _stamps))
       (write-long (send (elt _stamps i) :sec) s) (write-long (send (elt _stamps i) :nsec) s)
       )
     ;; geometry_msgs/Point[] _position
     (write-long (length _position) s)
     (dolist (elem _position)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _velocity
     (write-long (length _velocity) s)
     (dolist (elem _velocity)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _acceleration
     (write-long (length _acceleration) s)
     (dolist (elem _acceleration)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _jerk
     (write-long (length _jerk) s)
     (dolist (elem _jerk)
       (send elem :serialize s)
       )
     ;; float64[] _heading
     (write-long (length _heading) s)
     (dotimes (i (length _heading))
       (sys::poke (elt _heading i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _heading_rate
     (write-long (length _heading_rate) s)
     (dotimes (i (length _heading_rate))
       (sys::poke (elt _heading_rate i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _heading_acceleration
     (write-long (length _heading_acceleration) s)
     (dotimes (i (length _heading_acceleration))
       (sys::poke (elt _heading_acceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _heading_jerk
     (write-long (length _heading_jerk) s)
     (dotimes (i (length _heading_jerk))
       (sys::poke (elt _heading_jerk i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; time[] _stamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stamps (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _stamps)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _velocity)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _acceleration)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _jerk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jerk (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _jerk)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _heading
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _heading_rate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading_rate (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading_rate i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _heading_acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading_acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading_acceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _heading_jerk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading_jerk (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading_jerk i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::MpcPredictionFullState :md5sum-) "c5995e9f2a99f717a78b7d7961123a9f")
(setf (get mrs_msgs::MpcPredictionFullState :datatype-) "mrs_msgs/MpcPredictionFullState")
(setf (get mrs_msgs::MpcPredictionFullState :definition-)
      "Header header

int64 input_id

time[] stamps

geometry_msgs/Point[] position
geometry_msgs/Vector3[] velocity
geometry_msgs/Vector3[] acceleration
geometry_msgs/Vector3[] jerk

float64[] heading
float64[] heading_rate
float64[] heading_acceleration
float64[] heading_jerk

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



(provide :mrs_msgs/MpcPredictionFullState "c5995e9f2a99f717a78b7d7961123a9f")


