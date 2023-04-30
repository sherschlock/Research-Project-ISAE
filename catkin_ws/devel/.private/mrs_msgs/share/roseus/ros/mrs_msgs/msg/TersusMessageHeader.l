;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TersusMessageHeader)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TersusMessageHeader (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TERSUSMESSAGEHEADER")
  (make-package "MRS_MSGS::TERSUSMESSAGEHEADER"))

(in-package "ROS")
;;//! \htmlinclude TersusMessageHeader.msg.html


(defclass mrs_msgs::TersusMessageHeader
  :super ros::object
  :slots (_message_name _port_address _sequence _idle_time _time_status _gps_week _gps_week_seconds _receiver_status _software_version ))

(defmethod mrs_msgs::TersusMessageHeader
  (:init
   (&key
    ((:message_name __message_name) "")
    ((:port_address __port_address) "")
    ((:sequence __sequence) 0)
    ((:idle_time __idle_time) 0.0)
    ((:time_status __time_status) "")
    ((:gps_week __gps_week) 0)
    ((:gps_week_seconds __gps_week_seconds) 0.0)
    ((:receiver_status __receiver_status) 0)
    ((:software_version __software_version) 0)
    )
   (send-super :init)
   (setq _message_name (string __message_name))
   (setq _port_address (string __port_address))
   (setq _sequence (round __sequence))
   (setq _idle_time (float __idle_time))
   (setq _time_status (string __time_status))
   (setq _gps_week (round __gps_week))
   (setq _gps_week_seconds (float __gps_week_seconds))
   (setq _receiver_status (round __receiver_status))
   (setq _software_version (round __software_version))
   self)
  (:message_name
   (&optional __message_name)
   (if __message_name (setq _message_name __message_name)) _message_name)
  (:port_address
   (&optional __port_address)
   (if __port_address (setq _port_address __port_address)) _port_address)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:idle_time
   (&optional __idle_time)
   (if __idle_time (setq _idle_time __idle_time)) _idle_time)
  (:time_status
   (&optional __time_status)
   (if __time_status (setq _time_status __time_status)) _time_status)
  (:gps_week
   (&optional __gps_week)
   (if __gps_week (setq _gps_week __gps_week)) _gps_week)
  (:gps_week_seconds
   (&optional __gps_week_seconds)
   (if __gps_week_seconds (setq _gps_week_seconds __gps_week_seconds)) _gps_week_seconds)
  (:receiver_status
   (&optional __receiver_status)
   (if __receiver_status (setq _receiver_status __receiver_status)) _receiver_status)
  (:software_version
   (&optional __software_version)
   (if __software_version (setq _software_version __software_version)) _software_version)
  (:serialization-length
   ()
   (+
    ;; string _message_name
    4 (length _message_name)
    ;; string _port_address
    4 (length _port_address)
    ;; uint16 _sequence
    2
    ;; float32 _idle_time
    4
    ;; string _time_status
    4 (length _time_status)
    ;; uint16 _gps_week
    2
    ;; float32 _gps_week_seconds
    4
    ;; uint32 _receiver_status
    4
    ;; uint16 _software_version
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message_name
       (write-long (length _message_name) s) (princ _message_name s)
     ;; string _port_address
       (write-long (length _port_address) s) (princ _port_address s)
     ;; uint16 _sequence
       (write-word _sequence s)
     ;; float32 _idle_time
       (sys::poke _idle_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _time_status
       (write-long (length _time_status) s) (princ _time_status s)
     ;; uint16 _gps_week
       (write-word _gps_week s)
     ;; float32 _gps_week_seconds
       (sys::poke _gps_week_seconds (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _receiver_status
       (write-long _receiver_status s)
     ;; uint16 _software_version
       (write-word _software_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _port_address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _port_address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _sequence
     (setq _sequence (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _idle_time
     (setq _idle_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _time_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _gps_week
     (setq _gps_week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _gps_week_seconds
     (setq _gps_week_seconds (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _receiver_status
     (setq _receiver_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _software_version
     (setq _software_version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mrs_msgs::TersusMessageHeader :md5sum-) "551bdd4abfba94b9393d89735daa6fe7")
(setf (get mrs_msgs::TersusMessageHeader :datatype-) "mrs_msgs/TersusMessageHeader")
(setf (get mrs_msgs::TersusMessageHeader :definition-)
      "# This is modified version from Novatel
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



(provide :mrs_msgs/TersusMessageHeader "551bdd4abfba94b9393d89735daa6fe7")


