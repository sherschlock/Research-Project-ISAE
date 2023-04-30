;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GPSFix)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GPSFix (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GPSFIX")
  (make-package "MRS_MSGS::GPSFIX"))

(in-package "ROS")
;;//! \htmlinclude GPSFix.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*COVARIANCE_TYPE_UNKNOWN*" (find-package "MRS_MSGS::GPSFIX"))
(shadow '*COVARIANCE_TYPE_UNKNOWN* (find-package "MRS_MSGS::GPSFIX"))
(defconstant mrs_msgs::GPSFix::*COVARIANCE_TYPE_UNKNOWN* 0)
(intern "*COVARIANCE_TYPE_APPROXIMATED*" (find-package "MRS_MSGS::GPSFIX"))
(shadow '*COVARIANCE_TYPE_APPROXIMATED* (find-package "MRS_MSGS::GPSFIX"))
(defconstant mrs_msgs::GPSFix::*COVARIANCE_TYPE_APPROXIMATED* 1)
(intern "*COVARIANCE_TYPE_DIAGONAL_KNOWN*" (find-package "MRS_MSGS::GPSFIX"))
(shadow '*COVARIANCE_TYPE_DIAGONAL_KNOWN* (find-package "MRS_MSGS::GPSFIX"))
(defconstant mrs_msgs::GPSFix::*COVARIANCE_TYPE_DIAGONAL_KNOWN* 2)
(intern "*COVARIANCE_TYPE_KNOWN*" (find-package "MRS_MSGS::GPSFIX"))
(shadow '*COVARIANCE_TYPE_KNOWN* (find-package "MRS_MSGS::GPSFIX"))
(defconstant mrs_msgs::GPSFix::*COVARIANCE_TYPE_KNOWN* 3)

(defun mrs_msgs::GPSFix-to-symbol (const)
  (cond
        ((= const 0) 'mrs_msgs::GPSFix::*COVARIANCE_TYPE_UNKNOWN*)
        ((= const 1) 'mrs_msgs::GPSFix::*COVARIANCE_TYPE_APPROXIMATED*)
        ((= const 2) 'mrs_msgs::GPSFix::*COVARIANCE_TYPE_DIAGONAL_KNOWN*)
        ((= const 3) 'mrs_msgs::GPSFix::*COVARIANCE_TYPE_KNOWN*)
        (t nil)))

(defclass mrs_msgs::GPSFix
  :super ros::object
  :slots (_header _num_satellites_used_in_solution _num_satellites_tracked _status _latitude _longitude _altitude _track _speed _time _hdop _position_covariance _position_covariance_type ))

(defmethod mrs_msgs::GPSFix
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num_satellites_used_in_solution __num_satellites_used_in_solution) 0)
    ((:num_satellites_tracked __num_satellites_tracked) 0)
    ((:status __status) (instance mrs_msgs::GpsStatus :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:track __track) 0.0)
    ((:speed __speed) 0.0)
    ((:time __time) 0.0)
    ((:hdop __hdop) 0.0)
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:position_covariance_type __position_covariance_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _num_satellites_used_in_solution (round __num_satellites_used_in_solution))
   (setq _num_satellites_tracked (round __num_satellites_tracked))
   (setq _status __status)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _track (float __track))
   (setq _speed (float __speed))
   (setq _time (float __time))
   (setq _hdop (float __hdop))
   (setq _position_covariance __position_covariance)
   (setq _position_covariance_type (round __position_covariance_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num_satellites_used_in_solution
   (&optional __num_satellites_used_in_solution)
   (if __num_satellites_used_in_solution (setq _num_satellites_used_in_solution __num_satellites_used_in_solution)) _num_satellites_used_in_solution)
  (:num_satellites_tracked
   (&optional __num_satellites_tracked)
   (if __num_satellites_tracked (setq _num_satellites_tracked __num_satellites_tracked)) _num_satellites_tracked)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:track
   (&optional __track)
   (if __track (setq _track __track)) _track)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:position_covariance_type
   (&optional __position_covariance_type)
   (if __position_covariance_type (setq _position_covariance_type __position_covariance_type)) _position_covariance_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _num_satellites_used_in_solution
    1
    ;; uint8 _num_satellites_tracked
    1
    ;; mrs_msgs/GpsStatus _status
    (send _status :serialization-length)
    ;; float64 _latitude
    8
    ;; float32 _longitude
    4
    ;; float64 _altitude
    8
    ;; float64 _track
    8
    ;; float64 _speed
    8
    ;; float64 _time
    8
    ;; float32 _hdop
    4
    ;; float64[9] _position_covariance
    (* 8    9)
    ;; uint8 _position_covariance_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _num_satellites_used_in_solution
       (write-byte _num_satellites_used_in_solution s)
     ;; uint8 _num_satellites_tracked
       (write-byte _num_satellites_tracked s)
     ;; mrs_msgs/GpsStatus _status
       (send _status :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _track
       (sys::poke _track (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _position_covariance_type
       (write-byte _position_covariance_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _num_satellites_used_in_solution
     (setq _num_satellites_used_in_solution (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_satellites_tracked
     (setq _num_satellites_tracked (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mrs_msgs/GpsStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _longitude
     (setq _longitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _track
     (setq _track (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _hdop
     (setq _hdop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _position_covariance_type
     (setq _position_covariance_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::GPSFix :md5sum-) "bd06547699b65b25dfcdf16f98e57651")
(setf (get mrs_msgs::GPSFix :datatype-) "mrs_msgs/GPSFix")
(setf (get mrs_msgs::GPSFix :definition-)
      "# A more complete GPS fix to supplement sensor_msgs/NavSatFix.
# modified version of http://docs.ros.org/kinetic/api/gps_common/html/msg/GPSFix.html
Header header

# Satellites used in solution
uint8 num_satellites_used_in_solution # Number of satellites

# Satellites visible
uint8 num_satellites_tracked

# Measurement status
GpsStatus status

# Latitude (degrees). Positive is north of equator; negative is south.
float64 latitude

# Longitude (degrees). Positive is east of prime meridian, negative west.
float32 longitude

# Altitude (meters). Positive is above reference (e.g., sea level).
float64 altitude

# Direction (degrees from north)
float64 track

# Ground speed (meters/second)
float64 speed

# GPS time
float64 time

## Dilution of precision; Xdop<=0 means the value is unknown

# Horizontal dilution of precision
float32 hdop

## Uncertainty of measurement, 95% confidence

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.

float64[9] position_covariance

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3
uint8 position_covariance_type

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



(provide :mrs_msgs/GPSFix "bd06547699b65b25dfcdf16f98e57651")


