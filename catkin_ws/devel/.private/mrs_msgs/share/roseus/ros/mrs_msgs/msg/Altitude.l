;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Altitude)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Altitude (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::ALTITUDE")
  (make-package "MRS_MSGS::ALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Altitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Altitude
  :super ros::object
  :slots (_header _height _velocity _acceleration ))

(defmethod mrs_msgs::Altitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:height __height) 0.0)
    ((:velocity __velocity) 0.0)
    ((:acceleration __acceleration) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _height (float __height))
   (setq _velocity (float __velocity))
   (setq _acceleration (float __acceleration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _height
    8
    ;; float64 _velocity
    8
    ;; float64 _acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Altitude :md5sum-) "d5d3a1ed92b871320b3a450a4ae8ccbc")
(setf (get mrs_msgs::Altitude :datatype-) "mrs_msgs/Altitude")
(setf (get mrs_msgs::Altitude :definition-)
      "std_msgs/Header header
float64 height
float64 velocity
float64 acceleration

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



(provide :mrs_msgs/Altitude "d5d3a1ed92b871320b3a450a4ae8ccbc")


