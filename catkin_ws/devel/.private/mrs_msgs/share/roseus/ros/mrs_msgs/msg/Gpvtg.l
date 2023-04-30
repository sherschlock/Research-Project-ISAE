;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Gpvtg)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Gpvtg (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GPVTG")
  (make-package "MRS_MSGS::GPVTG"))

(in-package "ROS")
;;//! \htmlinclude Gpvtg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Gpvtg
  :super ros::object
  :slots (_header _message_id _track_true _track_true_indicator _track_mag _track_mag_indicator _speed_knots _speed_knots_indicator _speed_kmh _speed_kmh_indicator _mode_indicator ))

(defmethod mrs_msgs::Gpvtg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message_id __message_id) "")
    ((:track_true __track_true) 0.0)
    ((:track_true_indicator __track_true_indicator) "")
    ((:track_mag __track_mag) 0.0)
    ((:track_mag_indicator __track_mag_indicator) "")
    ((:speed_knots __speed_knots) 0.0)
    ((:speed_knots_indicator __speed_knots_indicator) "")
    ((:speed_kmh __speed_kmh) 0.0)
    ((:speed_kmh_indicator __speed_kmh_indicator) "")
    ((:mode_indicator __mode_indicator) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _message_id (string __message_id))
   (setq _track_true (float __track_true))
   (setq _track_true_indicator (string __track_true_indicator))
   (setq _track_mag (float __track_mag))
   (setq _track_mag_indicator (string __track_mag_indicator))
   (setq _speed_knots (float __speed_knots))
   (setq _speed_knots_indicator (string __speed_knots_indicator))
   (setq _speed_kmh (float __speed_kmh))
   (setq _speed_kmh_indicator (string __speed_kmh_indicator))
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
  (:track_true
   (&optional __track_true)
   (if __track_true (setq _track_true __track_true)) _track_true)
  (:track_true_indicator
   (&optional __track_true_indicator)
   (if __track_true_indicator (setq _track_true_indicator __track_true_indicator)) _track_true_indicator)
  (:track_mag
   (&optional __track_mag)
   (if __track_mag (setq _track_mag __track_mag)) _track_mag)
  (:track_mag_indicator
   (&optional __track_mag_indicator)
   (if __track_mag_indicator (setq _track_mag_indicator __track_mag_indicator)) _track_mag_indicator)
  (:speed_knots
   (&optional __speed_knots)
   (if __speed_knots (setq _speed_knots __speed_knots)) _speed_knots)
  (:speed_knots_indicator
   (&optional __speed_knots_indicator)
   (if __speed_knots_indicator (setq _speed_knots_indicator __speed_knots_indicator)) _speed_knots_indicator)
  (:speed_kmh
   (&optional __speed_kmh)
   (if __speed_kmh (setq _speed_kmh __speed_kmh)) _speed_kmh)
  (:speed_kmh_indicator
   (&optional __speed_kmh_indicator)
   (if __speed_kmh_indicator (setq _speed_kmh_indicator __speed_kmh_indicator)) _speed_kmh_indicator)
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
    ;; float64 _track_true
    8
    ;; string _track_true_indicator
    4 (length _track_true_indicator)
    ;; float64 _track_mag
    8
    ;; string _track_mag_indicator
    4 (length _track_mag_indicator)
    ;; float64 _speed_knots
    8
    ;; string _speed_knots_indicator
    4 (length _speed_knots_indicator)
    ;; float64 _speed_kmh
    8
    ;; string _speed_kmh_indicator
    4 (length _speed_kmh_indicator)
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
     ;; float64 _track_true
       (sys::poke _track_true (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _track_true_indicator
       (write-long (length _track_true_indicator) s) (princ _track_true_indicator s)
     ;; float64 _track_mag
       (sys::poke _track_mag (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _track_mag_indicator
       (write-long (length _track_mag_indicator) s) (princ _track_mag_indicator s)
     ;; float64 _speed_knots
       (sys::poke _speed_knots (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _speed_knots_indicator
       (write-long (length _speed_knots_indicator) s) (princ _speed_knots_indicator s)
     ;; float64 _speed_kmh
       (sys::poke _speed_kmh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _speed_kmh_indicator
       (write-long (length _speed_kmh_indicator) s) (princ _speed_kmh_indicator s)
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
   ;; float64 _track_true
     (setq _track_true (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _track_true_indicator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _track_true_indicator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _track_mag
     (setq _track_mag (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _track_mag_indicator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _track_mag_indicator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _speed_knots
     (setq _speed_knots (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _speed_knots_indicator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speed_knots_indicator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _speed_kmh
     (setq _speed_kmh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _speed_kmh_indicator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speed_kmh_indicator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode_indicator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_indicator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mrs_msgs::Gpvtg :md5sum-) "0b69a1dd6c8e499d5fb746b8067a62d9")
(setf (get mrs_msgs::Gpvtg :datatype-) "mrs_msgs/Gpvtg")
(setf (get mrs_msgs::Gpvtg :definition-)
      "Header header

string message_id

float64 track_true
string track_true_indicator

float64 track_mag
string track_mag_indicator

float64 speed_knots
string speed_knots_indicator

float64 speed_kmh
string speed_kmh_indicator

string mode_indicator

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



(provide :mrs_msgs/Gpvtg "0b69a1dd6c8e499d5fb746b8067a62d9")


