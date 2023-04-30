;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::SpeedTrackerCommand)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'SpeedTrackerCommand (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SPEEDTRACKERCOMMAND")
  (make-package "MRS_MSGS::SPEEDTRACKERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SpeedTrackerCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::SpeedTrackerCommand
  :super ros::object
  :slots (_header _velocity _acceleration _force _height _heading _heading_rate _use_velocity _use_acceleration _use_force _use_height _use_heading _use_heading_rate ))

(defmethod mrs_msgs::SpeedTrackerCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:height __height) 0.0)
    ((:heading __heading) 0.0)
    ((:heading_rate __heading_rate) 0.0)
    ((:use_velocity __use_velocity) nil)
    ((:use_acceleration __use_acceleration) nil)
    ((:use_force __use_force) nil)
    ((:use_height __use_height) nil)
    ((:use_heading __use_heading) nil)
    ((:use_heading_rate __use_heading_rate) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _force __force)
   (setq _height (float __height))
   (setq _heading (float __heading))
   (setq _heading_rate (float __heading_rate))
   (setq _use_velocity __use_velocity)
   (setq _use_acceleration __use_acceleration)
   (setq _use_force __use_force)
   (setq _use_height __use_height)
   (setq _use_heading __use_heading)
   (setq _use_heading_rate __use_heading_rate)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:heading_rate
   (&optional __heading_rate)
   (if __heading_rate (setq _heading_rate __heading_rate)) _heading_rate)
  (:use_velocity
   (&optional (__use_velocity :null))
   (if (not (eq __use_velocity :null)) (setq _use_velocity __use_velocity)) _use_velocity)
  (:use_acceleration
   (&optional (__use_acceleration :null))
   (if (not (eq __use_acceleration :null)) (setq _use_acceleration __use_acceleration)) _use_acceleration)
  (:use_force
   (&optional (__use_force :null))
   (if (not (eq __use_force :null)) (setq _use_force __use_force)) _use_force)
  (:use_height
   (&optional (__use_height :null))
   (if (not (eq __use_height :null)) (setq _use_height __use_height)) _use_height)
  (:use_heading
   (&optional (__use_heading :null))
   (if (not (eq __use_heading :null)) (setq _use_heading __use_heading)) _use_heading)
  (:use_heading_rate
   (&optional (__use_heading_rate :null))
   (if (not (eq __use_heading_rate :null)) (setq _use_heading_rate __use_heading_rate)) _use_heading_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; float64 _height
    8
    ;; float64 _heading
    8
    ;; float64 _heading_rate
    8
    ;; bool _use_velocity
    1
    ;; bool _use_acceleration
    1
    ;; bool _use_force
    1
    ;; bool _use_height
    1
    ;; bool _use_heading
    1
    ;; bool _use_heading_rate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_rate
       (sys::poke _heading_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _use_velocity
       (if _use_velocity (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_acceleration
       (if _use_acceleration (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_force
       (if _use_force (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_height
       (if _use_height (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_heading
       (if _use_heading (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_heading_rate
       (if _use_heading_rate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_rate
     (setq _heading_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _use_velocity
     (setq _use_velocity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_acceleration
     (setq _use_acceleration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_force
     (setq _use_force (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_height
     (setq _use_height (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_heading
     (setq _use_heading (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_heading_rate
     (setq _use_heading_rate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::SpeedTrackerCommand :md5sum-) "8bbd615ad5a88ff6da152b220d857737")
(setf (get mrs_msgs::SpeedTrackerCommand :datatype-) "mrs_msgs/SpeedTrackerCommand")
(setf (get mrs_msgs::SpeedTrackerCommand :definition-)
      "# contains the frame_id = your reference frame of choice
std_msgs/Header header

# desired velocity [m/s], optional
geometry_msgs/Vector3 velocity

# desired acceleration [m/s^2], optional
geometry_msgs/Vector3 acceleration

# desired force [N], optional
geometry_msgs/Vector3 force

# height above ground, optional
float64 height

# desired heading and its rate, optional
# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"
float64 heading
float64 heading_rate

# set to \"true\" if you want to control the state
bool use_velocity
bool use_acceleration
bool use_force
bool use_height
bool use_heading
bool use_heading_rate

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



(provide :mrs_msgs/SpeedTrackerCommand "8bbd615ad5a88ff6da152b220d857737")


