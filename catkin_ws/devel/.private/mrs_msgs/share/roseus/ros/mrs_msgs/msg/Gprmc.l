;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Gprmc)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Gprmc (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GPRMC")
  (make-package "MRS_MSGS::GPRMC"))

(in-package "ROS")
;;//! \htmlinclude Gprmc.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_INDICATIOR_AUTONOMOUS*" (find-package "MRS_MSGS::GPRMC"))
(shadow '*MODE_INDICATIOR_AUTONOMOUS* (find-package "MRS_MSGS::GPRMC"))
(defconstant mrs_msgs::Gprmc::*MODE_INDICATIOR_AUTONOMOUS* "A")
(intern "*MODE_INDICATIOR_DIFFERENTIAL*" (find-package "MRS_MSGS::GPRMC"))
(shadow '*MODE_INDICATIOR_DIFFERENTIAL* (find-package "MRS_MSGS::GPRMC"))
(defconstant mrs_msgs::Gprmc::*MODE_INDICATIOR_DIFFERENTIAL* "D")
(intern "*MODE_INDICATIOR_ESTIMATED*" (find-package "MRS_MSGS::GPRMC"))
(shadow '*MODE_INDICATIOR_ESTIMATED* (find-package "MRS_MSGS::GPRMC"))
(defconstant mrs_msgs::Gprmc::*MODE_INDICATIOR_ESTIMATED* "E")
(intern "*MODE_INDICATIOR_MANUAL*" (find-package "MRS_MSGS::GPRMC"))
(shadow '*MODE_INDICATIOR_MANUAL* (find-package "MRS_MSGS::GPRMC"))
(defconstant mrs_msgs::Gprmc::*MODE_INDICATIOR_MANUAL* "M")
(intern "*MODE_INDICATIOR_DATA_NOT_VALID*" (find-package "MRS_MSGS::GPRMC"))
(shadow '*MODE_INDICATIOR_DATA_NOT_VALID* (find-package "MRS_MSGS::GPRMC"))
(defconstant mrs_msgs::Gprmc::*MODE_INDICATIOR_DATA_NOT_VALID* "N")

(defun mrs_msgs::Gprmc-to-symbol (const)
  (cond
        (t nil)))

(defclass mrs_msgs::Gprmc
  :super ros::object
  :slots (_header _message_id _utc_seconds _position_status _latitude _longitude _latitude_dir _longitude_dir _speed _track _date _mag_var _mag_var_direction _mode_indicator ))

(defmethod mrs_msgs::Gprmc
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message_id __message_id) "")
    ((:utc_seconds __utc_seconds) 0.0)
    ((:position_status __position_status) (instance mrs_msgs::GpsStatus :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:latitude_dir __latitude_dir) "")
    ((:longitude_dir __longitude_dir) "")
    ((:speed __speed) 0.0)
    ((:track __track) 0.0)
    ((:date __date) "")
    ((:mag_var __mag_var) 0.0)
    ((:mag_var_direction __mag_var_direction) "")
    ((:mode_indicator __mode_indicator) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _message_id (string __message_id))
   (setq _utc_seconds (float __utc_seconds))
   (setq _position_status __position_status)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _latitude_dir (string __latitude_dir))
   (setq _longitude_dir (string __longitude_dir))
   (setq _speed (float __speed))
   (setq _track (float __track))
   (setq _date (string __date))
   (setq _mag_var (float __mag_var))
   (setq _mag_var_direction (string __mag_var_direction))
   (setq _mode_indicator (string __mode_indicator))
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
  (:position_status
   (&rest __position_status)
   (if (keywordp (car __position_status))
       (send* _position_status __position_status)
     (progn
       (if __position_status (setq _position_status (car __position_status)))
       _position_status)))
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
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:track
   (&optional __track)
   (if __track (setq _track __track)) _track)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:mag_var
   (&optional __mag_var)
   (if __mag_var (setq _mag_var __mag_var)) _mag_var)
  (:mag_var_direction
   (&optional __mag_var_direction)
   (if __mag_var_direction (setq _mag_var_direction __mag_var_direction)) _mag_var_direction)
  (:mode_indicator
   (&optional __mode_indicator)
   (if __mode_indicator (setq _mode_indicator __mode_indicator)) _mode_indicator)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _message_id
    4 (length _message_id)
    ;; float64 _utc_seconds
    8
    ;; mrs_msgs/GpsStatus _position_status
    (send _position_status :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; string _latitude_dir
    4 (length _latitude_dir)
    ;; string _longitude_dir
    4 (length _longitude_dir)
    ;; float32 _speed
    4
    ;; float32 _track
    4
    ;; string _date
    4 (length _date)
    ;; float32 _mag_var
    4
    ;; string _mag_var_direction
    4 (length _mag_var_direction)
    ;; string _mode_indicator
    4 (length _mode_indicator)
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
     ;; mrs_msgs/GpsStatus _position_status
       (send _position_status :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _latitude_dir
       (write-long (length _latitude_dir) s) (princ _latitude_dir s)
     ;; string _longitude_dir
       (write-long (length _longitude_dir) s) (princ _longitude_dir s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _track
       (sys::poke _track (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;; float32 _mag_var
       (sys::poke _mag_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _mag_var_direction
       (write-long (length _mag_var_direction) s) (princ _mag_var_direction s)
     ;; string _mode_indicator
       (write-long (length _mode_indicator) s) (princ _mode_indicator s)
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
   ;; mrs_msgs/GpsStatus _position_status
     (send _position_status :deserialize buf ptr-) (incf ptr- (send _position_status :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _latitude_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _latitude_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _longitude_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _longitude_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _track
     (setq _track (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _mag_var
     (setq _mag_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _mag_var_direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mag_var_direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode_indicator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_indicator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mrs_msgs::Gprmc :md5sum-) "141c762d606ff599c6f6b036906b68bb")
(setf (get mrs_msgs::Gprmc :datatype-) "mrs_msgs/Gprmc")
(setf (get mrs_msgs::Gprmc :definition-)
      "# Message from GPRMC NMEA String
Header header

string message_id

float64 utc_seconds
GpsStatus position_status

float64 latitude
float64 longitude

string latitude_dir
string longitude_dir

float32 speed  # in metres per second
float32 track
string date
float32 mag_var
string mag_var_direction

string mode_indicator
string MODE_INDICATIOR_AUTONOMOUS=A
string MODE_INDICATIOR_DIFFERENTIAL=D
string MODE_INDICATIOR_ESTIMATED=E
string MODE_INDICATIOR_MANUAL=M
string MODE_INDICATIOR_DATA_NOT_VALID=N

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



(provide :mrs_msgs/Gprmc "141c762d606ff599c6f6b036906b68bb")


