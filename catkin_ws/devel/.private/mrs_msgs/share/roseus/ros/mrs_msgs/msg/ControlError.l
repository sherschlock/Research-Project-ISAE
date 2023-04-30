;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ControlError)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ControlError (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CONTROLERROR")
  (make-package "MRS_MSGS::CONTROLERROR"))

(in-package "ROS")
;;//! \htmlinclude ControlError.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::ControlError
  :super ros::object
  :slots (_header _position_errors _total_position_error _yaw_error _position_eland_threshold _position_failsafe_threshold ))

(defmethod mrs_msgs::ControlError
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position_errors __position_errors) (instance geometry_msgs::Vector3 :init))
    ((:total_position_error __total_position_error) 0.0)
    ((:yaw_error __yaw_error) 0.0)
    ((:position_eland_threshold __position_eland_threshold) 0.0)
    ((:position_failsafe_threshold __position_failsafe_threshold) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position_errors __position_errors)
   (setq _total_position_error (float __total_position_error))
   (setq _yaw_error (float __yaw_error))
   (setq _position_eland_threshold (float __position_eland_threshold))
   (setq _position_failsafe_threshold (float __position_failsafe_threshold))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position_errors
   (&rest __position_errors)
   (if (keywordp (car __position_errors))
       (send* _position_errors __position_errors)
     (progn
       (if __position_errors (setq _position_errors (car __position_errors)))
       _position_errors)))
  (:total_position_error
   (&optional __total_position_error)
   (if __total_position_error (setq _total_position_error __total_position_error)) _total_position_error)
  (:yaw_error
   (&optional __yaw_error)
   (if __yaw_error (setq _yaw_error __yaw_error)) _yaw_error)
  (:position_eland_threshold
   (&optional __position_eland_threshold)
   (if __position_eland_threshold (setq _position_eland_threshold __position_eland_threshold)) _position_eland_threshold)
  (:position_failsafe_threshold
   (&optional __position_failsafe_threshold)
   (if __position_failsafe_threshold (setq _position_failsafe_threshold __position_failsafe_threshold)) _position_failsafe_threshold)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _position_errors
    (send _position_errors :serialization-length)
    ;; float64 _total_position_error
    8
    ;; float64 _yaw_error
    8
    ;; float64 _position_eland_threshold
    8
    ;; float64 _position_failsafe_threshold
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _position_errors
       (send _position_errors :serialize s)
     ;; float64 _total_position_error
       (sys::poke _total_position_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_error
       (sys::poke _yaw_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_eland_threshold
       (sys::poke _position_eland_threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_failsafe_threshold
       (sys::poke _position_failsafe_threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _position_errors
     (send _position_errors :deserialize buf ptr-) (incf ptr- (send _position_errors :serialization-length))
   ;; float64 _total_position_error
     (setq _total_position_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_error
     (setq _yaw_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_eland_threshold
     (setq _position_eland_threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_failsafe_threshold
     (setq _position_failsafe_threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::ControlError :md5sum-) "5c8117673f8dcffcc00963fa1c71ee72")
(setf (get mrs_msgs::ControlError :datatype-) "mrs_msgs/ControlError")
(setf (get mrs_msgs::ControlError :definition-)
      "std_msgs/Header header

geometry_msgs/Vector3 position_errors
float64 total_position_error
float64 yaw_error

float64 position_eland_threshold
float64 position_failsafe_threshold

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mrs_msgs/ControlError "5c8117673f8dcffcc00963fa1c71ee72")


