;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::DynamicsConstraints)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'DynamicsConstraints (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::DYNAMICSCONSTRAINTS")
  (make-package "MRS_MSGS::DYNAMICSCONSTRAINTS"))

(in-package "ROS")
;;//! \htmlinclude DynamicsConstraints.msg.html


(defclass mrs_msgs::DynamicsConstraints
  :super ros::object
  :slots (_horizontal_speed _horizontal_acceleration _horizontal_jerk _horizontal_snap _vertical_ascending_speed _vertical_ascending_acceleration _vertical_ascending_jerk _vertical_ascending_snap _vertical_descending_speed _vertical_descending_acceleration _vertical_descending_jerk _vertical_descending_snap _heading_speed _heading_acceleration _heading_jerk _heading_snap _roll_rate _pitch_rate _yaw_rate _tilt ))

(defmethod mrs_msgs::DynamicsConstraints
  (:init
   (&key
    ((:horizontal_speed __horizontal_speed) 0.0)
    ((:horizontal_acceleration __horizontal_acceleration) 0.0)
    ((:horizontal_jerk __horizontal_jerk) 0.0)
    ((:horizontal_snap __horizontal_snap) 0.0)
    ((:vertical_ascending_speed __vertical_ascending_speed) 0.0)
    ((:vertical_ascending_acceleration __vertical_ascending_acceleration) 0.0)
    ((:vertical_ascending_jerk __vertical_ascending_jerk) 0.0)
    ((:vertical_ascending_snap __vertical_ascending_snap) 0.0)
    ((:vertical_descending_speed __vertical_descending_speed) 0.0)
    ((:vertical_descending_acceleration __vertical_descending_acceleration) 0.0)
    ((:vertical_descending_jerk __vertical_descending_jerk) 0.0)
    ((:vertical_descending_snap __vertical_descending_snap) 0.0)
    ((:heading_speed __heading_speed) 0.0)
    ((:heading_acceleration __heading_acceleration) 0.0)
    ((:heading_jerk __heading_jerk) 0.0)
    ((:heading_snap __heading_snap) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    ((:pitch_rate __pitch_rate) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:tilt __tilt) 0.0)
    )
   (send-super :init)
   (setq _horizontal_speed (float __horizontal_speed))
   (setq _horizontal_acceleration (float __horizontal_acceleration))
   (setq _horizontal_jerk (float __horizontal_jerk))
   (setq _horizontal_snap (float __horizontal_snap))
   (setq _vertical_ascending_speed (float __vertical_ascending_speed))
   (setq _vertical_ascending_acceleration (float __vertical_ascending_acceleration))
   (setq _vertical_ascending_jerk (float __vertical_ascending_jerk))
   (setq _vertical_ascending_snap (float __vertical_ascending_snap))
   (setq _vertical_descending_speed (float __vertical_descending_speed))
   (setq _vertical_descending_acceleration (float __vertical_descending_acceleration))
   (setq _vertical_descending_jerk (float __vertical_descending_jerk))
   (setq _vertical_descending_snap (float __vertical_descending_snap))
   (setq _heading_speed (float __heading_speed))
   (setq _heading_acceleration (float __heading_acceleration))
   (setq _heading_jerk (float __heading_jerk))
   (setq _heading_snap (float __heading_snap))
   (setq _roll_rate (float __roll_rate))
   (setq _pitch_rate (float __pitch_rate))
   (setq _yaw_rate (float __yaw_rate))
   (setq _tilt (float __tilt))
   self)
  (:horizontal_speed
   (&optional __horizontal_speed)
   (if __horizontal_speed (setq _horizontal_speed __horizontal_speed)) _horizontal_speed)
  (:horizontal_acceleration
   (&optional __horizontal_acceleration)
   (if __horizontal_acceleration (setq _horizontal_acceleration __horizontal_acceleration)) _horizontal_acceleration)
  (:horizontal_jerk
   (&optional __horizontal_jerk)
   (if __horizontal_jerk (setq _horizontal_jerk __horizontal_jerk)) _horizontal_jerk)
  (:horizontal_snap
   (&optional __horizontal_snap)
   (if __horizontal_snap (setq _horizontal_snap __horizontal_snap)) _horizontal_snap)
  (:vertical_ascending_speed
   (&optional __vertical_ascending_speed)
   (if __vertical_ascending_speed (setq _vertical_ascending_speed __vertical_ascending_speed)) _vertical_ascending_speed)
  (:vertical_ascending_acceleration
   (&optional __vertical_ascending_acceleration)
   (if __vertical_ascending_acceleration (setq _vertical_ascending_acceleration __vertical_ascending_acceleration)) _vertical_ascending_acceleration)
  (:vertical_ascending_jerk
   (&optional __vertical_ascending_jerk)
   (if __vertical_ascending_jerk (setq _vertical_ascending_jerk __vertical_ascending_jerk)) _vertical_ascending_jerk)
  (:vertical_ascending_snap
   (&optional __vertical_ascending_snap)
   (if __vertical_ascending_snap (setq _vertical_ascending_snap __vertical_ascending_snap)) _vertical_ascending_snap)
  (:vertical_descending_speed
   (&optional __vertical_descending_speed)
   (if __vertical_descending_speed (setq _vertical_descending_speed __vertical_descending_speed)) _vertical_descending_speed)
  (:vertical_descending_acceleration
   (&optional __vertical_descending_acceleration)
   (if __vertical_descending_acceleration (setq _vertical_descending_acceleration __vertical_descending_acceleration)) _vertical_descending_acceleration)
  (:vertical_descending_jerk
   (&optional __vertical_descending_jerk)
   (if __vertical_descending_jerk (setq _vertical_descending_jerk __vertical_descending_jerk)) _vertical_descending_jerk)
  (:vertical_descending_snap
   (&optional __vertical_descending_snap)
   (if __vertical_descending_snap (setq _vertical_descending_snap __vertical_descending_snap)) _vertical_descending_snap)
  (:heading_speed
   (&optional __heading_speed)
   (if __heading_speed (setq _heading_speed __heading_speed)) _heading_speed)
  (:heading_acceleration
   (&optional __heading_acceleration)
   (if __heading_acceleration (setq _heading_acceleration __heading_acceleration)) _heading_acceleration)
  (:heading_jerk
   (&optional __heading_jerk)
   (if __heading_jerk (setq _heading_jerk __heading_jerk)) _heading_jerk)
  (:heading_snap
   (&optional __heading_snap)
   (if __heading_snap (setq _heading_snap __heading_snap)) _heading_snap)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:serialization-length
   ()
   (+
    ;; float64 _horizontal_speed
    8
    ;; float64 _horizontal_acceleration
    8
    ;; float64 _horizontal_jerk
    8
    ;; float64 _horizontal_snap
    8
    ;; float64 _vertical_ascending_speed
    8
    ;; float64 _vertical_ascending_acceleration
    8
    ;; float64 _vertical_ascending_jerk
    8
    ;; float64 _vertical_ascending_snap
    8
    ;; float64 _vertical_descending_speed
    8
    ;; float64 _vertical_descending_acceleration
    8
    ;; float64 _vertical_descending_jerk
    8
    ;; float64 _vertical_descending_snap
    8
    ;; float64 _heading_speed
    8
    ;; float64 _heading_acceleration
    8
    ;; float64 _heading_jerk
    8
    ;; float64 _heading_snap
    8
    ;; float64 _roll_rate
    8
    ;; float64 _pitch_rate
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _tilt
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _horizontal_speed
       (sys::poke _horizontal_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontal_acceleration
       (sys::poke _horizontal_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontal_jerk
       (sys::poke _horizontal_jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _horizontal_snap
       (sys::poke _horizontal_snap (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_ascending_speed
       (sys::poke _vertical_ascending_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_ascending_acceleration
       (sys::poke _vertical_ascending_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_ascending_jerk
       (sys::poke _vertical_ascending_jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_ascending_snap
       (sys::poke _vertical_ascending_snap (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_descending_speed
       (sys::poke _vertical_descending_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_descending_acceleration
       (sys::poke _vertical_descending_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_descending_jerk
       (sys::poke _vertical_descending_jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_descending_snap
       (sys::poke _vertical_descending_snap (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_speed
       (sys::poke _heading_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_acceleration
       (sys::poke _heading_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_jerk
       (sys::poke _heading_jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_snap
       (sys::poke _heading_snap (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_rate
       (sys::poke _pitch_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _horizontal_speed
     (setq _horizontal_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontal_acceleration
     (setq _horizontal_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontal_jerk
     (setq _horizontal_jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _horizontal_snap
     (setq _horizontal_snap (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_ascending_speed
     (setq _vertical_ascending_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_ascending_acceleration
     (setq _vertical_ascending_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_ascending_jerk
     (setq _vertical_ascending_jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_ascending_snap
     (setq _vertical_ascending_snap (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_descending_speed
     (setq _vertical_descending_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_descending_acceleration
     (setq _vertical_descending_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_descending_jerk
     (setq _vertical_descending_jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_descending_snap
     (setq _vertical_descending_snap (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_speed
     (setq _heading_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_acceleration
     (setq _heading_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_jerk
     (setq _heading_jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_snap
     (setq _heading_snap (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tilt
     (setq _tilt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::DynamicsConstraints :md5sum-) "9b79235a15953215e436f7e546e99c44")
(setf (get mrs_msgs::DynamicsConstraints :datatype-) "mrs_msgs/DynamicsConstraints")
(setf (get mrs_msgs::DynamicsConstraints :definition-)
      "# UAV dynamics constraints

# speed: m/s
# acceleration: m/s^2
# jerk: m/s^3
# snap: m/s^4

# translational dynamics

float64 horizontal_speed
float64 horizontal_acceleration
float64 horizontal_jerk
float64 horizontal_snap

float64 vertical_ascending_speed
float64 vertical_ascending_acceleration
float64 vertical_ascending_jerk
float64 vertical_ascending_snap

float64 vertical_descending_speed
float64 vertical_descending_acceleration
float64 vertical_descending_jerk
float64 vertical_descending_snap

# heading

float64 heading_speed
float64 heading_acceleration
float64 heading_jerk
float64 heading_snap

# angular rates: rad/s

float64 roll_rate
float64 pitch_rate
float64 yaw_rate

# maximum tilt, rad
# max angle between body-3 and world-3 axes

float64 tilt

")



(provide :mrs_msgs/DynamicsConstraints "9b79235a15953215e436f7e546e99c44")


