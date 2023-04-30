;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Bestvel)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Bestvel (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BESTVEL")
  (make-package "MRS_MSGS::BESTVEL"))

(in-package "ROS")
;;//! \htmlinclude Bestvel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Bestvel
  :super ros::object
  :slots (_header _tersus_msg_header _solution_status _velocity_type _latency _age _horizontal_speed _track_ground _vertical_speed ))

(defmethod mrs_msgs::Bestvel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tersus_msg_header __tersus_msg_header) (instance mrs_msgs::TersusMessageHeader :init))
    ((:solution_status __solution_status) "")
    ((:velocity_type __velocity_type) "")
    ((:latency __latency) 0.0)
    ((:age __age) 0.0)
    ((:horizontal_speed __horizontal_speed) 0.0)
    ((:track_ground __track_ground) 0.0)
    ((:vertical_speed __vertical_speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tersus_msg_header __tersus_msg_header)
   (setq _solution_status (string __solution_status))
   (setq _velocity_type (string __velocity_type))
   (setq _latency (float __latency))
   (setq _age (float __age))
   (setq _horizontal_speed (float __horizontal_speed))
   (setq _track_ground (float __track_ground))
   (setq _vertical_speed (float __vertical_speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tersus_msg_header
   (&rest __tersus_msg_header)
   (if (keywordp (car __tersus_msg_header))
       (send* _tersus_msg_header __tersus_msg_header)
     (progn
       (if __tersus_msg_header (setq _tersus_msg_header (car __tersus_msg_header)))
       _tersus_msg_header)))
  (:solution_status
   (&optional __solution_status)
   (if __solution_status (setq _solution_status __solution_status)) _solution_status)
  (:velocity_type
   (&optional __velocity_type)
   (if __velocity_type (setq _velocity_type __velocity_type)) _velocity_type)
  (:latency
   (&optional __latency)
   (if __latency (setq _latency __latency)) _latency)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:horizontal_speed
   (&optional __horizontal_speed)
   (if __horizontal_speed (setq _horizontal_speed __horizontal_speed)) _horizontal_speed)
  (:track_ground
   (&optional __track_ground)
   (if __track_ground (setq _track_ground __track_ground)) _track_ground)
  (:vertical_speed
   (&optional __vertical_speed)
   (if __vertical_speed (setq _vertical_speed __vertical_speed)) _vertical_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/TersusMessageHeader _tersus_msg_header
    (send _tersus_msg_header :serialization-length)
    ;; string _solution_status
    4 (length _solution_status)
    ;; string _velocity_type
    4 (length _velocity_type)
    ;; float32 _latency
    4
    ;; float32 _age
    4
    ;; float64 _horizontal_speed
    8
    ;; float64 _track_ground
    8
    ;; float64 _vertical_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/TersusMessageHeader _tersus_msg_header
       (send _tersus_msg_header :serialize s)
     ;; string _solution_status
       (write-long (length _solution_status) s) (princ _solution_status s)
     ;; string _velocity_type
       (write-long (length _velocity_type) s) (princ _velocity_type s)
     ;; float32 _latency
       (sys::poke _latency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _age
       (sys::poke _age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _horizontal_speed
       (sys::poke _horizontal_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _track_ground
       (sys::poke _track_ground (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_speed
       (sys::poke _vertical_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/TersusMessageHeader _tersus_msg_header
     (send _tersus_msg_header :deserialize buf ptr-) (incf ptr- (send _tersus_msg_header :serialization-length))
   ;; string _solution_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _solution_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _velocity_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _velocity_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _latency
     (setq _latency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _age
     (setq _age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _horizontal_speed
     (setq _horizontal_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _track_ground
     (setq _track_ground (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_speed
     (setq _vertical_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Bestvel :md5sum-) "02a85bdf86c56792843f3c24e6d61e43")
(setf (get mrs_msgs::Bestvel :datatype-) "mrs_msgs/Bestvel")
(setf (get mrs_msgs::Bestvel :definition-)
      "# See section 3.1.4 BESTVEL in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
# --------------------------------------------------------------------------------------

Header header

# message 99
TersusMessageHeader tersus_msg_header

string solution_status
string velocity_type

# A measure of the latency in the velocity time tag in seconds.
float32 latency

# Differential age in seconds
float32 age

# Horizontal speed over ground, meters/second
float64 horizontal_speed

# Direction of motion over ground with respect to true North, degrees
float64 track_ground

# Vertical speed, where positive values correspond to increasing altitude, meters/second
float64 vertical_speed

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
MSG: mrs_msgs/TersusMessageHeader
# This is modified version from Novatel
# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html
# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
# See section 1.5 in the Tersus manual.
# --------------------------------------------------------------------------------------

# On the wire, this header is preceeded by three sync bytes,
# which are 0xAA 0x44 0x12, and a uint8 which is the header length.

# Measurement source, format, response bit.
string message_name

string port_address

uint16 sequence

float32 idle_time

# Table 1 in the Tersus manual.
string time_status

uint16 gps_week
float32 gps_week_seconds

uint32 receiver_status
uint16 software_version

")



(provide :mrs_msgs/Bestvel "02a85bdf86c56792843f3c24e6d61e43")


