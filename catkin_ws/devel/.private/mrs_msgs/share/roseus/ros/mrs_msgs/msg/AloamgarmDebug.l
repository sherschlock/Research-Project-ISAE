;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::AloamgarmDebug)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'AloamgarmDebug (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::ALOAMGARMDEBUG")
  (make-package "MRS_MSGS::ALOAMGARMDEBUG"))

(in-package "ROS")
;;//! \htmlinclude AloamgarmDebug.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::AloamgarmDebug
  :super ros::object
  :slots (_header _duration_all _duration_aloam _duration_garmin _duration_baro _duration_input _duration_rest _timestamp_diff_all _timestamp_diff_aloam _timestamp_diff_garmin _timestamp_diff_baro _timestamp_diff_input _timestamp_diff_rest ))

(defmethod mrs_msgs::AloamgarmDebug
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:duration_all __duration_all) 0.0)
    ((:duration_aloam __duration_aloam) 0.0)
    ((:duration_garmin __duration_garmin) 0.0)
    ((:duration_baro __duration_baro) 0.0)
    ((:duration_input __duration_input) 0.0)
    ((:duration_rest __duration_rest) 0.0)
    ((:timestamp_diff_all __timestamp_diff_all) 0.0)
    ((:timestamp_diff_aloam __timestamp_diff_aloam) 0.0)
    ((:timestamp_diff_garmin __timestamp_diff_garmin) 0.0)
    ((:timestamp_diff_baro __timestamp_diff_baro) 0.0)
    ((:timestamp_diff_input __timestamp_diff_input) 0.0)
    ((:timestamp_diff_rest __timestamp_diff_rest) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _duration_all (float __duration_all))
   (setq _duration_aloam (float __duration_aloam))
   (setq _duration_garmin (float __duration_garmin))
   (setq _duration_baro (float __duration_baro))
   (setq _duration_input (float __duration_input))
   (setq _duration_rest (float __duration_rest))
   (setq _timestamp_diff_all (float __timestamp_diff_all))
   (setq _timestamp_diff_aloam (float __timestamp_diff_aloam))
   (setq _timestamp_diff_garmin (float __timestamp_diff_garmin))
   (setq _timestamp_diff_baro (float __timestamp_diff_baro))
   (setq _timestamp_diff_input (float __timestamp_diff_input))
   (setq _timestamp_diff_rest (float __timestamp_diff_rest))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:duration_all
   (&optional __duration_all)
   (if __duration_all (setq _duration_all __duration_all)) _duration_all)
  (:duration_aloam
   (&optional __duration_aloam)
   (if __duration_aloam (setq _duration_aloam __duration_aloam)) _duration_aloam)
  (:duration_garmin
   (&optional __duration_garmin)
   (if __duration_garmin (setq _duration_garmin __duration_garmin)) _duration_garmin)
  (:duration_baro
   (&optional __duration_baro)
   (if __duration_baro (setq _duration_baro __duration_baro)) _duration_baro)
  (:duration_input
   (&optional __duration_input)
   (if __duration_input (setq _duration_input __duration_input)) _duration_input)
  (:duration_rest
   (&optional __duration_rest)
   (if __duration_rest (setq _duration_rest __duration_rest)) _duration_rest)
  (:timestamp_diff_all
   (&optional __timestamp_diff_all)
   (if __timestamp_diff_all (setq _timestamp_diff_all __timestamp_diff_all)) _timestamp_diff_all)
  (:timestamp_diff_aloam
   (&optional __timestamp_diff_aloam)
   (if __timestamp_diff_aloam (setq _timestamp_diff_aloam __timestamp_diff_aloam)) _timestamp_diff_aloam)
  (:timestamp_diff_garmin
   (&optional __timestamp_diff_garmin)
   (if __timestamp_diff_garmin (setq _timestamp_diff_garmin __timestamp_diff_garmin)) _timestamp_diff_garmin)
  (:timestamp_diff_baro
   (&optional __timestamp_diff_baro)
   (if __timestamp_diff_baro (setq _timestamp_diff_baro __timestamp_diff_baro)) _timestamp_diff_baro)
  (:timestamp_diff_input
   (&optional __timestamp_diff_input)
   (if __timestamp_diff_input (setq _timestamp_diff_input __timestamp_diff_input)) _timestamp_diff_input)
  (:timestamp_diff_rest
   (&optional __timestamp_diff_rest)
   (if __timestamp_diff_rest (setq _timestamp_diff_rest __timestamp_diff_rest)) _timestamp_diff_rest)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _duration_all
    8
    ;; float64 _duration_aloam
    8
    ;; float64 _duration_garmin
    8
    ;; float64 _duration_baro
    8
    ;; float64 _duration_input
    8
    ;; float64 _duration_rest
    8
    ;; float64 _timestamp_diff_all
    8
    ;; float64 _timestamp_diff_aloam
    8
    ;; float64 _timestamp_diff_garmin
    8
    ;; float64 _timestamp_diff_baro
    8
    ;; float64 _timestamp_diff_input
    8
    ;; float64 _timestamp_diff_rest
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _duration_all
       (sys::poke _duration_all (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_aloam
       (sys::poke _duration_aloam (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_garmin
       (sys::poke _duration_garmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_baro
       (sys::poke _duration_baro (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_input
       (sys::poke _duration_input (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration_rest
       (sys::poke _duration_rest (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp_diff_all
       (sys::poke _timestamp_diff_all (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp_diff_aloam
       (sys::poke _timestamp_diff_aloam (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp_diff_garmin
       (sys::poke _timestamp_diff_garmin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp_diff_baro
       (sys::poke _timestamp_diff_baro (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp_diff_input
       (sys::poke _timestamp_diff_input (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp_diff_rest
       (sys::poke _timestamp_diff_rest (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _duration_all
     (setq _duration_all (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_aloam
     (setq _duration_aloam (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_garmin
     (setq _duration_garmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_baro
     (setq _duration_baro (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_input
     (setq _duration_input (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration_rest
     (setq _duration_rest (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp_diff_all
     (setq _timestamp_diff_all (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp_diff_aloam
     (setq _timestamp_diff_aloam (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp_diff_garmin
     (setq _timestamp_diff_garmin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp_diff_baro
     (setq _timestamp_diff_baro (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp_diff_input
     (setq _timestamp_diff_input (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp_diff_rest
     (setq _timestamp_diff_rest (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::AloamgarmDebug :md5sum-) "10902ec7873a0eb0f7aaae111478ce31")
(setf (get mrs_msgs::AloamgarmDebug :datatype-) "mrs_msgs/AloamgarmDebug")
(setf (get mrs_msgs::AloamgarmDebug :definition-)
      "std_msgs/Header header
float64 duration_all
float64 duration_aloam
float64 duration_garmin
float64 duration_baro
float64 duration_input
float64 duration_rest
float64 timestamp_diff_all
float64 timestamp_diff_aloam
float64 timestamp_diff_garmin
float64 timestamp_diff_baro
float64 timestamp_diff_input
float64 timestamp_diff_rest

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



(provide :mrs_msgs/AloamgarmDebug "10902ec7873a0eb0f7aaae111478ce31")


