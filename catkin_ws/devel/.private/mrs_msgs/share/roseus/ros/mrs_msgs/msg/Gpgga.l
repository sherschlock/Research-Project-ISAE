;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Gpgga)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Gpgga (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GPGGA")
  (make-package "MRS_MSGS::GPGGA"))

(in-package "ROS")
;;//! \htmlinclude Gpgga.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Gpgga
  :super ros::object
  :slots (_header _message_id _utc_seconds _latitude _longitude _latitude_dir _longitude_dir _gps_quality _num_sats _hdop _altitude _altitude_units _undulation _undulation_units _diff_age _station_id ))

(defmethod mrs_msgs::Gpgga
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message_id __message_id) "")
    ((:utc_seconds __utc_seconds) 0.0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude_dir __latitude_dir) "")
    ((:longitude_dir __longitude_dir) "")
    ((:gps_quality __gps_quality) (instance mrs_msgs::GpsStatus :init))
    ((:num_sats __num_sats) 0)
    ((:hdop __hdop) 0.0)
    ((:altitude __altitude) 0.0)
    ((:altitude_units __altitude_units) "")
    ((:undulation __undulation) 0.0)
    ((:undulation_units __undulation_units) "")
    ((:diff_age __diff_age) 0)
    ((:station_id __station_id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _message_id (string __message_id))
   (setq _utc_seconds (float __utc_seconds))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _latitude_dir (string __latitude_dir))
   (setq _longitude_dir (string __longitude_dir))
   (setq _gps_quality __gps_quality)
   (setq _num_sats (round __num_sats))
   (setq _hdop (float __hdop))
   (setq _altitude (float __altitude))
   (setq _altitude_units (string __altitude_units))
   (setq _undulation (float __undulation))
   (setq _undulation_units (string __undulation_units))
   (setq _diff_age (round __diff_age))
   (setq _station_id (string __station_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:utc_seconds
   (&optional __utc_seconds)
   (if __utc_seconds (setq _utc_seconds __utc_seconds)) _utc_seconds)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude_dir
   (&optional __latitude_dir)
   (if __latitude_dir (setq _latitude_dir __latitude_dir)) _latitude_dir)
  (:longitude_dir
   (&optional __longitude_dir)
   (if __longitude_dir (setq _longitude_dir __longitude_dir)) _longitude_dir)
  (:gps_quality
   (&rest __gps_quality)
   (if (keywordp (car __gps_quality))
       (send* _gps_quality __gps_quality)
     (progn
       (if __gps_quality (setq _gps_quality (car __gps_quality)))
       _gps_quality)))
  (:num_sats
   (&optional __num_sats)
   (if __num_sats (setq _num_sats __num_sats)) _num_sats)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:altitude_units
   (&optional __altitude_units)
   (if __altitude_units (setq _altitude_units __altitude_units)) _altitude_units)
  (:undulation
   (&optional __undulation)
   (if __undulation (setq _undulation __undulation)) _undulation)
  (:undulation_units
   (&optional __undulation_units)
   (if __undulation_units (setq _undulation_units __undulation_units)) _undulation_units)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _message_id
    4 (length _message_id)
    ;; float64 _utc_seconds
    8
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; string _latitude_dir
    4 (length _latitude_dir)
    ;; string _longitude_dir
    4 (length _longitude_dir)
    ;; mrs_msgs/GpsStatus _gps_quality
    (send _gps_quality :serialization-length)
    ;; uint32 _num_sats
    4
    ;; float32 _hdop
    4
    ;; float32 _altitude
    4
    ;; string _altitude_units
    4 (length _altitude_units)
    ;; float32 _undulation
    4
    ;; string _undulation_units
    4 (length _undulation_units)
    ;; uint32 _diff_age
    4
    ;; string _station_id
    4 (length _station_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _message_id
       (write-long (length _message_id) s) (princ _message_id s)
     ;; float64 _utc_seconds
       (sys::poke _utc_seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _latitude_dir
       (write-long (length _latitude_dir) s) (princ _latitude_dir s)
     ;; string _longitude_dir
       (write-long (length _longitude_dir) s) (princ _longitude_dir s)
     ;; mrs_msgs/GpsStatus _gps_quality
       (send _gps_quality :serialize s)
     ;; uint32 _num_sats
       (write-long _num_sats s)
     ;; float32 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _altitude_units
       (write-long (length _altitude_units) s) (princ _altitude_units s)
     ;; float32 _undulation
       (sys::poke _undulation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _undulation_units
       (write-long (length _undulation_units) s) (princ _undulation_units s)
     ;; uint32 _diff_age
       (write-long _diff_age s)
     ;; string _station_id
       (write-long (length _station_id) s) (princ _station_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _message_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _utc_seconds
     (setq _utc_seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _latitude_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _latitude_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _longitude_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _longitude_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/GpsStatus _gps_quality
     (send _gps_quality :deserialize buf ptr-) (incf ptr- (send _gps_quality :serialization-length))
   ;; uint32 _num_sats
     (setq _num_sats (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _hdop
     (setq _hdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _altitude_units
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _altitude_units (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _undulation
     (setq _undulation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _undulation_units
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _undulation_units (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _diff_age
     (setq _diff_age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _station_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _station_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mrs_msgs::Gpgga :md5sum-) "60c1dbabb1ff7bc913853a9cc2abcc73")
(setf (get mrs_msgs::Gpgga :datatype-) "mrs_msgs/Gpgga")
(setf (get mrs_msgs::Gpgga :definition-)
      "# Message from GPGGA NMEA String
Header header

string message_id

# UTC seconds from midnight
float64 utc_seconds

float64 latitude
float64 longitude

string latitude_dir
string longitude_dir

GpsStatus gps_quality

uint32 num_sats
float32 hdop 
float32 altitude
string altitude_units

float32 undulation
string undulation_units
uint32 diff_age
string station_id

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
MSG: mrs_msgs/GpsStatus
uint32 quality
uint32 GPS_QUALITY_NO_FIX=0
uint32 GPS_QUALITY_SIGLE_POINT=1
uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2
uint32 GPS_QUALITY_RTK_FIX=4
uint32 GPS_QUALITY_RTK_FLOAT=5

")



(provide :mrs_msgs/Gpgga "60c1dbabb1ff7bc913853a9cc2abcc73")


