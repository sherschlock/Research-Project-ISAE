;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Point2DWithFloat)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Point2DWithFloat (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::POINT2DWITHFLOAT")
  (make-package "MRS_MSGS::POINT2DWITHFLOAT"))

(in-package "ROS")
;;//! \htmlinclude Point2DWithFloat.msg.html


(defclass mrs_msgs::Point2DWithFloat
  :super ros::object
  :slots (_x _y _value ))

(defmethod mrs_msgs::Point2DWithFloat
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _value (float __value))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Point2DWithFloat :md5sum-) "d0746f45a08a06584bdbb3bc2f191f38")
(setf (get mrs_msgs::Point2DWithFloat :datatype-) "mrs_msgs/Point2DWithFloat")
(setf (get mrs_msgs::Point2DWithFloat :definition-)
      "float64 x
float64 y
float64 value

")



(provide :mrs_msgs/Point2DWithFloat "d0746f45a08a06584bdbb3bc2f191f38")


