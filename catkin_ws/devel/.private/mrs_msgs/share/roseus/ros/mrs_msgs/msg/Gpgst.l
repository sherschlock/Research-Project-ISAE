;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Gpgst)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Gpgst (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GPGST")
  (make-package "MRS_MSGS::GPGST"))

(in-package "ROS")
;;//! \htmlinclude Gpgst.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Gpgst
  :super ros::object
  :slots (_header _message_id _utc _rms _smjr_std _smnr_std _orient _lat_std _lon_std _alt_std ))

(defmethod mrs_msgs::Gpgst
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message_id __message_id) "")
    ((:utc __utc) 0.0)
    ((:rms __rms) 0.0)
    ((:smjr_std __smjr_std) 0.0)
    ((:smnr_std __smnr_std) 0.0)
    ((:orient __orient) 0.0)
    ((:lat_std __lat_std) 0.0)
    ((:lon_std __lon_std) 0.0)
    ((:alt_std __alt_std) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _message_id (string __message_id))
   (setq _utc (float __utc))
   (setq _rms (float __rms))
   (setq _smjr_std (float __smjr_std))
   (setq _smnr_std (float __smnr_std))
   (setq _orient (float __orient))
   (setq _lat_std (float __lat_std))
   (setq _lon_std (float __lon_std))
   (setq _alt_std (float __alt_std))
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
  (:utc
   (&optional __utc)
   (if __utc (setq _utc __utc)) _utc)
  (:rms
   (&optional __rms)
   (if __rms (setq _rms __rms)) _rms)
  (:smjr_std
   (&optional __smjr_std)
   (if __smjr_std (setq _smjr_std __smjr_std)) _smjr_std)
  (:smnr_std
   (&optional __smnr_std)
   (if __smnr_std (setq _smnr_std __smnr_std)) _smnr_std)
  (:orient
   (&optional __orient)
   (if __orient (setq _orient __orient)) _orient)
  (:lat_std
   (&optional __lat_std)
   (if __lat_std (setq _lat_std __lat_std)) _lat_std)
  (:lon_std
   (&optional __lon_std)
   (if __lon_std (setq _lon_std __lon_std)) _lon_std)
  (:alt_std
   (&optional __alt_std)
   (if __alt_std (setq _alt_std __alt_std)) _alt_std)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _message_id
    4 (length _message_id)
    ;; float64 _utc
    8
    ;; float64 _rms
    8
    ;; float64 _smjr_std
    8
    ;; float64 _smnr_std
    8
    ;; float64 _orient
    8
    ;; float64 _lat_std
    8
    ;; float64 _lon_std
    8
    ;; float64 _alt_std
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _message_id
       (write-long (length _message_id) s) (princ _message_id s)
     ;; float64 _utc
       (sys::poke _utc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rms
       (sys::poke _rms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _smjr_std
       (sys::poke _smjr_std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _smnr_std
       (sys::poke _smnr_std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orient
       (sys::poke _orient (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat_std
       (sys::poke _lat_std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon_std
       (sys::poke _lon_std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt_std
       (sys::poke _alt_std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _message_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _utc
     (setq _utc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rms
     (setq _rms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _smjr_std
     (setq _smjr_std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _smnr_std
     (setq _smnr_std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orient
     (setq _orient (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat_std
     (setq _lat_std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon_std
     (setq _lon_std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt_std
     (setq _alt_std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Gpgst :md5sum-) "93293830e1d4d500dc0342868321dfef")
(setf (get mrs_msgs::Gpgst :datatype-) "mrs_msgs/Gpgst")
(setf (get mrs_msgs::Gpgst :definition-)
      "# Message from GPGST NMEA String
Header header

string message_id

float64 utc

float64 rms

float64 smjr_std
float64 smnr_std

float64 orient

float64 lat_std
float64 lon_std
float64 alt_std

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

")



(provide :mrs_msgs/Gpgst "93293830e1d4d500dc0342868321dfef")


