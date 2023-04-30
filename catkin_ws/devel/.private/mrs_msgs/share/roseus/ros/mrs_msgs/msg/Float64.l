;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Float64)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Float64 (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::FLOAT64")
  (make-package "MRS_MSGS::FLOAT64"))

(in-package "ROS")
;;//! \htmlinclude Float64.msg.html


(defclass mrs_msgs::Float64
  :super ros::object
  :slots (_value ))

(defmethod mrs_msgs::Float64
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Float64 :md5sum-) "1b1594d2b74931ef8fe7be8e2d594455")
(setf (get mrs_msgs::Float64 :datatype-) "mrs_msgs/Float64")
(setf (get mrs_msgs::Float64 :definition-)
      "float64 value

")



(provide :mrs_msgs/Float64 "1b1594d2b74931ef8fe7be8e2d594455")


