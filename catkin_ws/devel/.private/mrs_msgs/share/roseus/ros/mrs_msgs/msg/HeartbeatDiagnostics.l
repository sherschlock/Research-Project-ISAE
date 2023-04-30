;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::HeartbeatDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'HeartbeatDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::HEARTBEATDIAGNOSTICS")
  (make-package "MRS_MSGS::HEARTBEATDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude HeartbeatDiagnostics.msg.html


(defclass mrs_msgs::HeartbeatDiagnostics
  :super ros::object
  :slots (_mode ))

(defmethod mrs_msgs::HeartbeatDiagnostics
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mrs_msgs::HeartbeatDiagnostics :md5sum-) "e84dc3ad5dc323bb64f0aca01c2d1eef")
(setf (get mrs_msgs::HeartbeatDiagnostics :datatype-) "mrs_msgs/HeartbeatDiagnostics")
(setf (get mrs_msgs::HeartbeatDiagnostics :definition-)
      "string mode

")



(provide :mrs_msgs/HeartbeatDiagnostics "e84dc3ad5dc323bb64f0aca01c2d1eef")


