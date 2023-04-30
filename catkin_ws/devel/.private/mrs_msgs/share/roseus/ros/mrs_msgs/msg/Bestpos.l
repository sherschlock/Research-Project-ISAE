;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Bestpos)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Bestpos (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BESTPOS")
  (make-package "MRS_MSGS::BESTPOS"))

(in-package "ROS")
;;//! \htmlinclude Bestpos.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Bestpos
  :super ros::object
  :slots (_header _tersus_msg_header _solution_status _position_type _latitude _longitude _height _undulation _datum_id _latitude_std _longitude_std _height_std _base_station_id _diff_age _solution_age _num_satellites_tracked _num_satellites_used_in_solution _num_gps_and_glonass_l1_used_in_solution _num_gps_and_glonass_l1_and_l2_used_in_solution ))

(defmethod mrs_msgs::Bestpos
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tersus_msg_header __tersus_msg_header) (instance mrs_msgs::TersusMessageHeader :init))
    ((:solution_status __solution_status) "")
    ((:position_type __position_type) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:height __height) 0.0)
    ((:undulation __undulation) 0.0)
    ((:datum_id __datum_id) "")
    ((:latitude_std __latitude_std) 0.0)
    ((:longitude_std __longitude_std) 0.0)
    ((:height_std __height_std) 0.0)
    ((:base_station_id __base_station_id) "")
    ((:diff_age __diff_age) 0.0)
    ((:solution_age __solution_age) 0.0)
    ((:num_satellites_tracked __num_satellites_tracked) 0)
    ((:num_satellites_used_in_solution __num_satellites_used_in_solution) 0)
    ((:num_gps_and_glonass_l1_used_in_solution __num_gps_and_glonass_l1_used_in_solution) 0)
    ((:num_gps_and_glonass_l1_and_l2_used_in_solution __num_gps_and_glonass_l1_and_l2_used_in_solution) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tersus_msg_header __tersus_msg_header)
   (setq _solution_status (string __solution_status))
   (setq _position_type (string __position_type))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _height (float __height))
   (setq _undulation (float __undulation))
   (setq _datum_id (string __datum_id))
   (setq _latitude_std (float __latitude_std))
   (setq _longitude_std (float __longitude_std))
   (setq _height_std (float __height_std))
   (setq _base_station_id (string __base_station_id))
   (setq _diff_age (float __diff_age))
   (setq _solution_age (float __solution_age))
   (setq _num_satellites_tracked (round __num_satellites_tracked))
   (setq _num_satellites_used_in_solution (round __num_satellites_used_in_solution))
   (setq _num_gps_and_glonass_l1_used_in_solution (round __num_gps_and_glonass_l1_used_in_solution))
   (setq _num_gps_and_glonass_l1_and_l2_used_in_solution (round __num_gps_and_glonass_l1_and_l2_used_in_solution))
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
  (:position_type
   (&optional __position_type)
   (if __position_type (setq _position_type __position_type)) _position_type)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:datum_id
   (&optional __datum_id)
   (if __datum_id (setq _datum_id __datum_id)) _datum_id)
  (:latitude_std
   (&optional __latitude_std)
   (if __latitude_std (setq _latitude_std __latitude_std)) _latitude_std)
  (:longitude_std
   (&optional __longitude_std)
   (if __longitude_std (setq _longitude_std __longitude_std)) _longitude_std)
  (:height_std
   (&optional __height_std)
   (if __height_std (setq _height_std __height_std)) _height_std)
  (:base_station_id
   (&optional __base_station_id)
   (if __base_station_id (setq _base_station_id __base_station_id)) _base_station_id)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:solution_age
   (&optional __solution_age)
   (if __solution_age (setq _solution_age __solution_age)) _solution_age)
  (:num_satellites_tracked
   (&optional __num_satellites_tracked)
   (if __num_satellites_tracked (setq _num_satellites_tracked __num_satellites_tracked)) _num_satellites_tracked)
  (:num_satellites_used_in_solution
   (&optional __num_satellites_used_in_solution)
   (if __num_satellites_used_in_solution (setq _num_satellites_used_in_solution __num_satellites_used_in_solution)) _num_satellites_used_in_solution)
  (:num_gps_and_glonass_l1_used_in_solution
   (&optional __num_gps_and_glonass_l1_used_in_solution)
   (if __num_gps_and_glonass_l1_used_in_solution (setq _num_gps_and_glonass_l1_used_in_solution __num_gps_and_glonass_l1_used_in_solution)) _num_gps_and_glonass_l1_used_in_solution)
  (:num_gps_and_glonass_l1_and_l2_used_in_solution
   (&optional __num_gps_and_glonass_l1_and_l2_used_in_solution)
   (if __num_gps_and_glonass_l1_and_l2_used_in_solution (setq _num_gps_and_glonass_l1_and_l2_used_in_solution __num_gps_and_glonass_l1_and_l2_used_in_solution)) _num_gps_and_glonass_l1_and_l2_used_in_solution)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/TersusMessageHeader _tersus_msg_header
    (send _tersus_msg_header :serialization-length)
    ;; string _solution_status
    4 (length _solution_status)
    ;; string _position_type
    4 (length _position_type)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _height
    8
    ;; float32 _undulation
    4
    ;; string _datum_id
    4 (length _datum_id)
    ;; float32 _latitude_std
    4
    ;; float32 _longitude_std
    4
    ;; float32 _height_std
    4
    ;; string _base_station_id
    4 (length _base_station_id)
    ;; float32 _diff_age
    4
    ;; float32 _solution_age
    4
    ;; uint8 _num_satellites_tracked
    1
    ;; uint8 _num_satellites_used_in_solution
    1
    ;; uint8 _num_gps_and_glonass_l1_used_in_solution
    1
    ;; uint8 _num_gps_and_glonass_l1_and_l2_used_in_solution
    1
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
     ;; string _position_type
       (write-long (length _position_type) s) (princ _position_type s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _datum_id
       (write-long (length _datum_id) s) (princ _datum_id s)
     ;; float32 _latitude_std
       (sys::poke _latitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_std
       (sys::poke _longitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height_std
       (sys::poke _height_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _base_station_id
       (write-long (length _base_station_id) s) (princ _base_station_id s)
     ;; float32 _diff_age
       (sys::poke _diff_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _solution_age
       (sys::poke _solution_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _num_satellites_tracked
       (write-byte _num_satellites_tracked s)
     ;; uint8 _num_satellites_used_in_solution
       (write-byte _num_satellites_used_in_solution s)
     ;; uint8 _num_gps_and_glonass_l1_used_in_solution
       (write-byte _num_gps_and_glonass_l1_used_in_solution s)
     ;; uint8 _num_gps_and_glonass_l1_and_l2_used_in_solution
       (write-byte _num_gps_and_glonass_l1_and_l2_used_in_solution s)
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
   ;; string _position_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _undulation
     (setq _undulation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _datum_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _datum_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _latitude_std
     (setq _latitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_std
     (setq _longitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height_std
     (setq _height_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _base_station_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_station_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _diff_age
     (setq _diff_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _solution_age
     (setq _solution_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _num_satellites_tracked
     (setq _num_satellites_tracked (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_satellites_used_in_solution
     (setq _num_satellites_used_in_solution (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_gps_and_glonass_l1_used_in_solution
     (setq _num_gps_and_glonass_l1_used_in_solution (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_gps_and_glonass_l1_and_l2_used_in_solution
     (setq _num_gps_and_glonass_l1_and_l2_used_in_solution (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::Bestpos :md5sum-) "842f440d0b9e96e1173ab70db85161dd")
(setf (get mrs_msgs::Bestpos :datatype-) "mrs_msgs/Bestpos")
(setf (get mrs_msgs::Bestpos :definition-)
      "# This is modified version from Novatel
# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/BESTPOS.html
# For Tersus see section 3.1.3 BESTPOS in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
# --------------------------------------------------------------------------------------

Header header

# message 42
TersusMessageHeader tersus_msg_header

string solution_status
string position_type

float64 latitude  # (degrees) 
float64 longitude # (degrees) 
float64 height    # Height above mean sea level (meters)

float32 undulation  # Undulation - the relationship between the geoid and the ellipsoid (m) of the chosen datum
string datum_id

float32 latitude_std  # Latitude standard deviation (m) 
float32 longitude_std # Longitude standard deviation (m) 
float32 height_std    # Height standard deviation (m) 

string base_station_id   # Base station ID

float32 diff_age      # Differential age in seconds
float32 solution_age  # Solution age in seconds

uint8 num_satellites_tracked                          # Number of satellites tracked
uint8 num_satellites_used_in_solution                 # Number of satellites used in solution 
uint8 num_gps_and_glonass_l1_used_in_solution         # Number of satellites with L1/E1/B1 signals used in solution
uint8 num_gps_and_glonass_l1_and_l2_used_in_solution  # Number of satellites with multi-frequency signals used in solution
# TODO: define the rest of the message if it is necessary

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



(provide :mrs_msgs/Bestpos "842f440d0b9e96e1173ab70db85161dd")


