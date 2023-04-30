;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ParachuteDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ParachuteDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PARACHUTEDIAGNOSTICS")
  (make-package "MRS_MSGS::PARACHUTEDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude ParachuteDiagnostics.msg.html


(defclass mrs_msgs::ParachuteDiagnostics
  :super ros::object
  :slots (_stamp _alive _armed _fired ))

(defmethod mrs_msgs::ParachuteDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:alive __alive) nil)
    ((:armed __armed) nil)
    ((:fired __fired) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _alive __alive)
   (setq _armed __armed)
   (setq _fired __fired)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:alive
   (&optional (__alive :null))
   (if (not (eq __alive :null)) (setq _alive __alive)) _alive)
  (:armed
   (&optional (__armed :null))
   (if (not (eq __armed :null)) (setq _armed __armed)) _armed)
  (:fired
   (&optional (__fired :null))
   (if (not (eq __fired :null)) (setq _fired __fired)) _fired)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _alive
    1
    ;; bool _armed
    1
    ;; bool _fired
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _alive
       (if _alive (write-byte -1 s) (write-byte 0 s))
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _fired
       (if _fired (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _alive
     (setq _alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fired
     (setq _fired (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::ParachuteDiagnostics :md5sum-) "432cf17f44e8b7c1519f8ae5a6317641")
(setf (get mrs_msgs::ParachuteDiagnostics :datatype-) "mrs_msgs/ParachuteDiagnostics")
(setf (get mrs_msgs::ParachuteDiagnostics :definition-)
      "time stamp

# If this value is false, the low level driver is not responding and parachute will not work
bool alive

# Parachute is armed and ready to be fired
bool armed 

# Parachute has been already fired
bool fired 

")



(provide :mrs_msgs/ParachuteDiagnostics "432cf17f44e8b7c1519f8ae5a6317641")


