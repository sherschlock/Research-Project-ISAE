;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BumperStatus)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BumperStatus (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BUMPERSTATUS")
  (make-package "MRS_MSGS::BUMPERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BumperStatus.msg.html


(defclass mrs_msgs::BumperStatus
  :super ros::object
  :slots (_stamp _repulsing _modifying_reference ))

(defmethod mrs_msgs::BumperStatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:repulsing __repulsing) nil)
    ((:modifying_reference __modifying_reference) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _repulsing __repulsing)
   (setq _modifying_reference __modifying_reference)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:repulsing
   (&optional (__repulsing :null))
   (if (not (eq __repulsing :null)) (setq _repulsing __repulsing)) _repulsing)
  (:modifying_reference
   (&optional (__modifying_reference :null))
   (if (not (eq __modifying_reference :null)) (setq _modifying_reference __modifying_reference)) _modifying_reference)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _repulsing
    1
    ;; bool _modifying_reference
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _repulsing
       (if _repulsing (write-byte -1 s) (write-byte 0 s))
     ;; bool _modifying_reference
       (if _modifying_reference (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _repulsing
     (setq _repulsing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _modifying_reference
     (setq _modifying_reference (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::BumperStatus :md5sum-) "61b2690b519e811c0a533b0dc63657c3")
(setf (get mrs_msgs::BumperStatus :datatype-) "mrs_msgs/BumperStatus")
(setf (get mrs_msgs::BumperStatus :definition-)
      "time stamp
bool repulsing
bool modifying_reference

")



(provide :mrs_msgs/BumperStatus "61b2690b519e811c0a533b0dc63657c3")


