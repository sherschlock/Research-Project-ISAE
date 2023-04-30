;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Range)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Range (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::RANGE")
  (make-package "MRS_MSGS::RANGE"))

(in-package "ROS")
;;//! \htmlinclude Range.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Range
  :super ros::object
  :slots (_header _tersus_msg_header _numb_of_observ _info ))

(defmethod mrs_msgs::Range
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tersus_msg_header __tersus_msg_header) (instance mrs_msgs::TersusMessageHeader :init))
    ((:numb_of_observ __numb_of_observ) 0)
    ((:info __info) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _tersus_msg_header __tersus_msg_header)
   (setq _numb_of_observ (round __numb_of_observ))
   (setq _info __info)
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
  (:numb_of_observ
   (&optional __numb_of_observ)
   (if __numb_of_observ (setq _numb_of_observ __numb_of_observ)) _numb_of_observ)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/TersusMessageHeader _tersus_msg_header
    (send _tersus_msg_header :serialization-length)
    ;; int32 _numb_of_observ
    4
    ;; mrs_msgs/RangeInformation[] _info
    (apply #'+ (send-all _info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/TersusMessageHeader _tersus_msg_header
       (send _tersus_msg_header :serialize s)
     ;; int32 _numb_of_observ
       (write-long _numb_of_observ s)
     ;; mrs_msgs/RangeInformation[] _info
     (write-long (length _info) s)
     (dolist (elem _info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/TersusMessageHeader _tersus_msg_header
     (send _tersus_msg_header :deserialize buf ptr-) (incf ptr- (send _tersus_msg_header :serialization-length))
   ;; int32 _numb_of_observ
     (setq _numb_of_observ (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mrs_msgs/RangeInformation[] _info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info (let (r) (dotimes (i n) (push (instance mrs_msgs::RangeInformation :init) r)) r))
     (dolist (elem- _info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::Range :md5sum-) "6f8bff0e61f983e7883647ba50e7b66d")
(setf (get mrs_msgs::Range :datatype-) "mrs_msgs/Range")
(setf (get mrs_msgs::Range :definition-)
      "#Satellite Range information from Tersus receiver

Header header

TersusMessageHeader tersus_msg_header

#number of observations
int32 numb_of_observ

#range information for the observed 
RangeInformation[] info

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

================================================================================
MSG: mrs_msgs/RangeInformation
#Satellite Range information structure used in range messages

#Satelite PRN number of range measurement
uint16 prn_number

#GLONASS Frequency
uint16 glofreq

#Pseudorange measurement(m)
float64 psr

#Pseudorange measurement standard deviation(m)
float32 psr_std

#Carrier phase, in cycles
float64 adr

#Estimated carrier phase standard deviation(cycles)
float32 adr_std

#Instantaneous carrier Doppler frequency(Hz)
float32 dopp

#Carrier to noise density ratio
float32 noise_density_ratio

## of seconds of continous tracking
float32 locktime

#Tracking status
uint32 tracking_status

")



(provide :mrs_msgs/Range "6f8bff0e61f983e7883647ba50e7b66d")


