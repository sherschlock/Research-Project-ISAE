;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TarotGimbalState)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TarotGimbalState (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TAROTGIMBALSTATE")
  (make-package "MRS_MSGS::TAROTGIMBALSTATE"))

(in-package "ROS")
;;//! \htmlinclude TarotGimbalState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::TarotGimbalState
  :super ros::object
  :slots (_header _gimbal_tilt _gimbal_pan _is_on _fpv_mode ))

(defmethod mrs_msgs::TarotGimbalState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gimbal_tilt __gimbal_tilt) 0)
    ((:gimbal_pan __gimbal_pan) 0)
    ((:is_on __is_on) nil)
    ((:fpv_mode __fpv_mode) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gimbal_tilt (round __gimbal_tilt))
   (setq _gimbal_pan (round __gimbal_pan))
   (setq _is_on __is_on)
   (setq _fpv_mode __fpv_mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gimbal_tilt
   (&optional __gimbal_tilt)
   (if __gimbal_tilt (setq _gimbal_tilt __gimbal_tilt)) _gimbal_tilt)
  (:gimbal_pan
   (&optional __gimbal_pan)
   (if __gimbal_pan (setq _gimbal_pan __gimbal_pan)) _gimbal_pan)
  (:is_on
   (&optional (__is_on :null))
   (if (not (eq __is_on :null)) (setq _is_on __is_on)) _is_on)
  (:fpv_mode
   (&optional (__fpv_mode :null))
   (if (not (eq __fpv_mode :null)) (setq _fpv_mode __fpv_mode)) _fpv_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _gimbal_tilt
    2
    ;; uint16 _gimbal_pan
    2
    ;; bool _is_on
    1
    ;; bool _fpv_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _gimbal_tilt
       (write-word _gimbal_tilt s)
     ;; uint16 _gimbal_pan
       (write-word _gimbal_pan s)
     ;; bool _is_on
       (if _is_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _fpv_mode
       (if _fpv_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _gimbal_tilt
     (setq _gimbal_tilt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _gimbal_pan
     (setq _gimbal_pan (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _is_on
     (setq _is_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fpv_mode
     (setq _fpv_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::TarotGimbalState :md5sum-) "de0150cd7cbfca812804963fee3d23ed")
(setf (get mrs_msgs::TarotGimbalState :datatype-) "mrs_msgs/TarotGimbalState")
(setf (get mrs_msgs::TarotGimbalState :definition-)
      "std_msgs/Header header

uint16 gimbal_tilt
uint16 gimbal_pan

bool is_on
bool fpv_mode

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



(provide :mrs_msgs/TarotGimbalState "de0150cd7cbfca812804963fee3d23ed")


