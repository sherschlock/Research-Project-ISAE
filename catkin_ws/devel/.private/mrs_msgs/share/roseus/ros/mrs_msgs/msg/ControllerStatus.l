;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ControllerStatus)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ControllerStatus (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CONTROLLERSTATUS")
  (make-package "MRS_MSGS::CONTROLLERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ControllerStatus.msg.html


(defclass mrs_msgs::ControllerStatus
  :super ros::object
  :slots (_active ))

(defmethod mrs_msgs::ControllerStatus
  (:init
   (&key
    ((:active __active) nil)
    )
   (send-super :init)
   (setq _active __active)
   self)
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; bool _active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::ControllerStatus :md5sum-) "2c5cfb0a2565df41de6873994aee57d2")
(setf (get mrs_msgs::ControllerStatus :datatype-) "mrs_msgs/ControllerStatus")
(setf (get mrs_msgs::ControllerStatus :definition-)
      "bool active

")



(provide :mrs_msgs/ControllerStatus "2c5cfb0a2565df41de6873994aee57d2")


