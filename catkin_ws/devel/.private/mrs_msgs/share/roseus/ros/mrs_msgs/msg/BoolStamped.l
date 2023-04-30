;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BoolStamped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BoolStamped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BOOLSTAMPED")
  (make-package "MRS_MSGS::BOOLSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude BoolStamped.msg.html


(defclass mrs_msgs::BoolStamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod mrs_msgs::BoolStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::BoolStamped :md5sum-) "512a323cb011736b47fa65bd15fa0439")
(setf (get mrs_msgs::BoolStamped :datatype-) "mrs_msgs/BoolStamped")
(setf (get mrs_msgs::BoolStamped :definition-)
      "time stamp
bool data

")



(provide :mrs_msgs/BoolStamped "512a323cb011736b47fa65bd15fa0439")


