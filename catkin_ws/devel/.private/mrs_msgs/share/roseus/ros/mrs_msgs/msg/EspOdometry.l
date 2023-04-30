;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::EspOdometry)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'EspOdometry (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::ESPODOMETRY")
  (make-package "MRS_MSGS::ESPODOMETRY"))

(in-package "ROS")
;;//! \htmlinclude EspOdometry.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::EspOdometry
  :super ros::object
  :slots (_header _posx _posy _posz _velx _vely _velz ))

(defmethod mrs_msgs::EspOdometry
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:posx __posx) 0.0)
    ((:posy __posy) 0.0)
    ((:posz __posz) 0.0)
    ((:velx __velx) 0.0)
    ((:vely __vely) 0.0)
    ((:velz __velz) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _posx (float __posx))
   (setq _posy (float __posy))
   (setq _posz (float __posz))
   (setq _velx (float __velx))
   (setq _vely (float __vely))
   (setq _velz (float __velz))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:posx
   (&optional __posx)
   (if __posx (setq _posx __posx)) _posx)
  (:posy
   (&optional __posy)
   (if __posy (setq _posy __posy)) _posy)
  (:posz
   (&optional __posz)
   (if __posz (setq _posz __posz)) _posz)
  (:velx
   (&optional __velx)
   (if __velx (setq _velx __velx)) _velx)
  (:vely
   (&optional __vely)
   (if __vely (setq _vely __vely)) _vely)
  (:velz
   (&optional __velz)
   (if __velz (setq _velz __velz)) _velz)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _posx
    4
    ;; float32 _posy
    4
    ;; float32 _posz
    4
    ;; float32 _velx
    4
    ;; float32 _vely
    4
    ;; float32 _velz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _posx
       (sys::poke _posx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posy
       (sys::poke _posy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posz
       (sys::poke _posz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velx
       (sys::poke _velx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vely
       (sys::poke _vely (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velz
       (sys::poke _velz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _posx
     (setq _posx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posy
     (setq _posy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posz
     (setq _posz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velx
     (setq _velx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vely
     (setq _vely (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velz
     (setq _velz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::EspOdometry :md5sum-) "2f7d12bb5cb403c9fb6fccc4c9c047a9")
(setf (get mrs_msgs::EspOdometry :datatype-) "mrs_msgs/EspOdometry")
(setf (get mrs_msgs::EspOdometry :definition-)
      "std_msgs/Header header
float32 posx
float32 posy
float32 posz
float32 velx
float32 vely
float32 velz

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



(provide :mrs_msgs/EspOdometry "2f7d12bb5cb403c9fb6fccc4c9c047a9")


