;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::UavStatusShort)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'UavStatusShort (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::UAVSTATUSSHORT")
  (make-package "MRS_MSGS::UAVSTATUSSHORT"))

(in-package "ROS")
;;//! \htmlinclude UavStatusShort.msg.html


(defclass mrs_msgs::UavStatusShort
  :super ros::object
  :slots (_odom_hz _odom_color _odom_x _odom_y _odom_z _odom_hdg _cmd_x _cmd_y _cmd_z _cmd_hdg ))

(defmethod mrs_msgs::UavStatusShort
  (:init
   (&key
    ((:odom_hz __odom_hz) 0.0)
    ((:odom_color __odom_color) 0)
    ((:odom_x __odom_x) 0.0)
    ((:odom_y __odom_y) 0.0)
    ((:odom_z __odom_z) 0.0)
    ((:odom_hdg __odom_hdg) 0.0)
    ((:cmd_x __cmd_x) 0.0)
    ((:cmd_y __cmd_y) 0.0)
    ((:cmd_z __cmd_z) 0.0)
    ((:cmd_hdg __cmd_hdg) 0.0)
    )
   (send-super :init)
   (setq _odom_hz (float __odom_hz))
   (setq _odom_color (round __odom_color))
   (setq _odom_x (float __odom_x))
   (setq _odom_y (float __odom_y))
   (setq _odom_z (float __odom_z))
   (setq _odom_hdg (float __odom_hdg))
   (setq _cmd_x (float __cmd_x))
   (setq _cmd_y (float __cmd_y))
   (setq _cmd_z (float __cmd_z))
   (setq _cmd_hdg (float __cmd_hdg))
   self)
  (:odom_hz
   (&optional __odom_hz)
   (if __odom_hz (setq _odom_hz __odom_hz)) _odom_hz)
  (:odom_color
   (&optional __odom_color)
   (if __odom_color (setq _odom_color __odom_color)) _odom_color)
  (:odom_x
   (&optional __odom_x)
   (if __odom_x (setq _odom_x __odom_x)) _odom_x)
  (:odom_y
   (&optional __odom_y)
   (if __odom_y (setq _odom_y __odom_y)) _odom_y)
  (:odom_z
   (&optional __odom_z)
   (if __odom_z (setq _odom_z __odom_z)) _odom_z)
  (:odom_hdg
   (&optional __odom_hdg)
   (if __odom_hdg (setq _odom_hdg __odom_hdg)) _odom_hdg)
  (:cmd_x
   (&optional __cmd_x)
   (if __cmd_x (setq _cmd_x __cmd_x)) _cmd_x)
  (:cmd_y
   (&optional __cmd_y)
   (if __cmd_y (setq _cmd_y __cmd_y)) _cmd_y)
  (:cmd_z
   (&optional __cmd_z)
   (if __cmd_z (setq _cmd_z __cmd_z)) _cmd_z)
  (:cmd_hdg
   (&optional __cmd_hdg)
   (if __cmd_hdg (setq _cmd_hdg __cmd_hdg)) _cmd_hdg)
  (:serialization-length
   ()
   (+
    ;; float32 _odom_hz
    4
    ;; int16 _odom_color
    2
    ;; float32 _odom_x
    4
    ;; float32 _odom_y
    4
    ;; float32 _odom_z
    4
    ;; float32 _odom_hdg
    4
    ;; float32 _cmd_x
    4
    ;; float32 _cmd_y
    4
    ;; float32 _cmd_z
    4
    ;; float32 _cmd_hdg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _odom_hz
       (sys::poke _odom_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _odom_color
       (write-word _odom_color s)
     ;; float32 _odom_x
       (sys::poke _odom_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_y
       (sys::poke _odom_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_z
       (sys::poke _odom_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_hdg
       (sys::poke _odom_hdg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_x
       (sys::poke _cmd_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_y
       (sys::poke _cmd_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_z
       (sys::poke _cmd_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_hdg
       (sys::poke _cmd_hdg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _odom_hz
     (setq _odom_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _odom_color
     (setq _odom_color (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _odom_x
     (setq _odom_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_y
     (setq _odom_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_z
     (setq _odom_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_hdg
     (setq _odom_hdg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_x
     (setq _cmd_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_y
     (setq _cmd_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_z
     (setq _cmd_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_hdg
     (setq _cmd_hdg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::UavStatusShort :md5sum-) "799c7489ad9979eb43be3571ef53b456")
(setf (get mrs_msgs::UavStatusShort :datatype-) "mrs_msgs/UavStatusShort")
(setf (get mrs_msgs::UavStatusShort :definition-)
      "float32 odom_hz
int16 odom_color
float32 odom_x
float32 odom_y
float32 odom_z
float32 odom_hdg

float32 cmd_x
float32 cmd_y
float32 cmd_z
float32 cmd_hdg

")



(provide :mrs_msgs/UavStatusShort "799c7489ad9979eb43be3571ef53b456")


