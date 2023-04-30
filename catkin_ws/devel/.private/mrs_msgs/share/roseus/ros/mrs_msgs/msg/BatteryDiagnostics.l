;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BatteryDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BatteryDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BATTERYDIAGNOSTICS")
  (make-package "MRS_MSGS::BATTERYDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude BatteryDiagnostics.msg.html


(defclass mrs_msgs::BatteryDiagnostics
  :super ros::object
  :slots (_voltage _current ))

(defmethod mrs_msgs::BatteryDiagnostics
  (:init
   (&key
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    )
   (send-super :init)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::BatteryDiagnostics :md5sum-) "9e237a0971ec09fc952c0717bd077bf2")
(setf (get mrs_msgs::BatteryDiagnostics :datatype-) "mrs_msgs/BatteryDiagnostics")
(setf (get mrs_msgs::BatteryDiagnostics :definition-)
      "float32 voltage
float32 current

")



(provide :mrs_msgs/BatteryDiagnostics "9e237a0971ec09fc952c0717bd077bf2")


