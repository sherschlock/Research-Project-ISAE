;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::MavrosState)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'MavrosState (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::MAVROSSTATE")
  (make-package "MRS_MSGS::MAVROSSTATE"))

(in-package "ROS")
;;//! \htmlinclude MavrosState.msg.html


(defclass mrs_msgs::MavrosState
  :super ros::object
  :slots (_armed _offboard ))

(defmethod mrs_msgs::MavrosState
  (:init
   (&key
    ((:armed __armed) nil)
    ((:offboard __offboard) nil)
    )
   (send-super :init)
   (setq _armed __armed)
   (setq _offboard __offboard)
   self)
  (:armed
   (&optional (__armed :null))
   (if (not (eq __armed :null)) (setq _armed __armed)) _armed)
  (:offboard
   (&optional (__offboard :null))
   (if (not (eq __offboard :null)) (setq _offboard __offboard)) _offboard)
  (:serialization-length
   ()
   (+
    ;; bool _armed
    1
    ;; bool _offboard
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _offboard
       (if _offboard (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _offboard
     (setq _offboard (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::MavrosState :md5sum-) "16648b716cc061680e9afcd8a78601a4")
(setf (get mrs_msgs::MavrosState :datatype-) "mrs_msgs/MavrosState")
(setf (get mrs_msgs::MavrosState :definition-)
      "bool armed
bool offboard

")



(provide :mrs_msgs/MavrosState "16648b716cc061680e9afcd8a78601a4")


