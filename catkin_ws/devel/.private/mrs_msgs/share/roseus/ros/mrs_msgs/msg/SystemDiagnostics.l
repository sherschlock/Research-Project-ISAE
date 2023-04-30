;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::SystemDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'SystemDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SYSTEMDIAGNOSTICS")
  (make-package "MRS_MSGS::SYSTEMDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude SystemDiagnostics.msg.html


(defclass mrs_msgs::SystemDiagnostics
  :super ros::object
  :slots (_cpu_load _errors_comm ))

(defmethod mrs_msgs::SystemDiagnostics
  (:init
   (&key
    ((:cpu_load __cpu_load) 0.0)
    ((:errors_comm __errors_comm) 0)
    )
   (send-super :init)
   (setq _cpu_load (float __cpu_load))
   (setq _errors_comm (round __errors_comm))
   self)
  (:cpu_load
   (&optional __cpu_load)
   (if __cpu_load (setq _cpu_load __cpu_load)) _cpu_load)
  (:errors_comm
   (&optional __errors_comm)
   (if __errors_comm (setq _errors_comm __errors_comm)) _errors_comm)
  (:serialization-length
   ()
   (+
    ;; float32 _cpu_load
    4
    ;; uint32 _errors_comm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cpu_load
       (sys::poke _cpu_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _errors_comm
       (write-long _errors_comm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cpu_load
     (setq _cpu_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _errors_comm
     (setq _errors_comm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::SystemDiagnostics :md5sum-) "cde81d66be8af36e6d2be4bdc2a22417")
(setf (get mrs_msgs::SystemDiagnostics :datatype-) "mrs_msgs/SystemDiagnostics")
(setf (get mrs_msgs::SystemDiagnostics :definition-)
      "float32 cpu_load
uint32 errors_comm

")



(provide :mrs_msgs/SystemDiagnostics "cde81d66be8af36e6d2be4bdc2a22417")


