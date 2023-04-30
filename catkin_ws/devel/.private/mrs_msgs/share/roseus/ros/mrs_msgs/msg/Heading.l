;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Heading)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Heading (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::HEADING")
  (make-package "MRS_MSGS::HEADING"))

(in-package "ROS")
;;//! \htmlinclude Heading.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Heading
  :super ros::object
  :slots (_header _yaw _yaw_rate _gyro_bias ))

(defmethod mrs_msgs::Heading
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:yaw __yaw) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:gyro_bias __gyro_bias) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _yaw (float __yaw))
   (setq _yaw_rate (float __yaw_rate))
   (setq _gyro_bias (float __gyro_bias))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:gyro_bias
   (&optional __gyro_bias)
   (if __gyro_bias (setq _gyro_bias __gyro_bias)) _gyro_bias)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _yaw
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _gyro_bias
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyro_bias
       (sys::poke _gyro_bias (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyro_bias
     (setq _gyro_bias (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Heading :md5sum-) "3ccfde06c6df8e7ed4f7a910ba738eff")
(setf (get mrs_msgs::Heading :datatype-) "mrs_msgs/Heading")
(setf (get mrs_msgs::Heading :definition-)
      "std_msgs/Header header
float64 yaw
float64 yaw_rate
float64 gyro_bias

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



(provide :mrs_msgs/Heading "3ccfde06c6df8e7ed4f7a910ba738eff")


