;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::RadarData)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'RadarData (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::RADARDATA")
  (make-package "MRS_MSGS::RADARDATA"))

(in-package "ROS")
;;//! \htmlinclude RadarData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::RadarData
  :super ros::object
  :slots (_header _direction _velocity _counter ))

(defmethod mrs_msgs::RadarData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:direction __direction) nil)
    ((:velocity __velocity) 0.0)
    ((:counter __counter) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _direction __direction)
   (setq _velocity (float __velocity))
   (setq _counter (round __counter))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:direction
   (&optional (__direction :null))
   (if (not (eq __direction :null)) (setq _direction __direction)) _direction)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:counter
   (&optional __counter)
   (if __counter (setq _counter __counter)) _counter)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _direction
    1
    ;; float32 _velocity
    4
    ;; int32 _counter
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _direction
       (if _direction (write-byte -1 s) (write-byte 0 s))
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _counter
       (write-long _counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _direction
     (setq _direction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _counter
     (setq _counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::RadarData :md5sum-) "b201a3c91369a1dcb1372493c6e8ca4d")
(setf (get mrs_msgs::RadarData :datatype-) "mrs_msgs/RadarData")
(setf (get mrs_msgs::RadarData :definition-)
      "Header header
bool direction
float32 velocity
int32 counter

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



(provide :mrs_msgs/RadarData "b201a3c91369a1dcb1372493c6e8ca4d")


