;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::LandoffDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'LandoffDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::LANDOFFDIAGNOSTICS")
  (make-package "MRS_MSGS::LANDOFFDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude LandoffDiagnostics.msg.html


(defclass mrs_msgs::LandoffDiagnostics
  :super ros::object
  :slots (_stamp _active _landing _taking_off _elanding ))

(defmethod mrs_msgs::LandoffDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:active __active) nil)
    ((:landing __landing) nil)
    ((:taking_off __taking_off) nil)
    ((:elanding __elanding) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _active __active)
   (setq _landing __landing)
   (setq _taking_off __taking_off)
   (setq _elanding __elanding)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:landing
   (&optional (__landing :null))
   (if (not (eq __landing :null)) (setq _landing __landing)) _landing)
  (:taking_off
   (&optional (__taking_off :null))
   (if (not (eq __taking_off :null)) (setq _taking_off __taking_off)) _taking_off)
  (:elanding
   (&optional (__elanding :null))
   (if (not (eq __elanding :null)) (setq _elanding __elanding)) _elanding)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _active
    1
    ;; bool _landing
    1
    ;; bool _taking_off
    1
    ;; bool _elanding
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; bool _landing
       (if _landing (write-byte -1 s) (write-byte 0 s))
     ;; bool _taking_off
       (if _taking_off (write-byte -1 s) (write-byte 0 s))
     ;; bool _elanding
       (if _elanding (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _landing
     (setq _landing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _taking_off
     (setq _taking_off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _elanding
     (setq _elanding (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::LandoffDiagnostics :md5sum-) "1feb5898812832580fccb73c0f05b11a")
(setf (get mrs_msgs::LandoffDiagnostics :datatype-) "mrs_msgs/LandoffDiagnostics")
(setf (get mrs_msgs::LandoffDiagnostics :definition-)
      "time stamp
bool active
bool landing
bool taking_off
bool elanding

")



(provide :mrs_msgs/LandoffDiagnostics "1feb5898812832580fccb73c0f05b11a")


