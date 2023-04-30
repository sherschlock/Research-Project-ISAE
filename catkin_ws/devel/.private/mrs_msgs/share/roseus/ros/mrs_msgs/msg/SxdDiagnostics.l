;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::SxdDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'SxdDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SXDDIAGNOSTICS")
  (make-package "MRS_MSGS::SXDDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude SxdDiagnostics.msg.html


(defclass mrs_msgs::SxdDiagnostics
  :super ros::object
  :slots (_stamp _temperature ))

(defmethod mrs_msgs::SxdDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _temperature (float __temperature))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float64 _temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::SxdDiagnostics :md5sum-) "584d7a29569614bb16133e5efd8b36c6")
(setf (get mrs_msgs::SxdDiagnostics :datatype-) "mrs_msgs/SxdDiagnostics")
(setf (get mrs_msgs::SxdDiagnostics :definition-)
      "time stamp
float64 temperature

")



(provide :mrs_msgs/SxdDiagnostics "584d7a29569614bb16133e5efd8b36c6")


