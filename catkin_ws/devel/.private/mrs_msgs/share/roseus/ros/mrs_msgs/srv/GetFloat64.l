;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GetFloat64)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GetFloat64 (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GETFLOAT64")
  (make-package "MRS_MSGS::GETFLOAT64"))
(unless (find-package "MRS_MSGS::GETFLOAT64REQUEST")
  (make-package "MRS_MSGS::GETFLOAT64REQUEST"))
(unless (find-package "MRS_MSGS::GETFLOAT64RESPONSE")
  (make-package "MRS_MSGS::GETFLOAT64RESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::GetFloat64Request
  :super ros::object
  :slots ())

(defmethod mrs_msgs::GetFloat64Request
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mrs_msgs::GetFloat64Response
  :super ros::object
  :slots (_value _success ))

(defmethod mrs_msgs::GetFloat64Response
  (:init
   (&key
    ((:value __value) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _success __success)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mrs_msgs::GetFloat64
  :super ros::object
  :slots ())

(setf (get mrs_msgs::GetFloat64 :md5sum-) "13e23e74b0a02943a0d2f6c5c29a5cd8")
(setf (get mrs_msgs::GetFloat64 :datatype-) "mrs_msgs/GetFloat64")
(setf (get mrs_msgs::GetFloat64 :request) mrs_msgs::GetFloat64Request)
(setf (get mrs_msgs::GetFloat64 :response) mrs_msgs::GetFloat64Response)

(defmethod mrs_msgs::GetFloat64Request
  (:response () (instance mrs_msgs::GetFloat64Response :init)))

(setf (get mrs_msgs::GetFloat64Request :md5sum-) "13e23e74b0a02943a0d2f6c5c29a5cd8")
(setf (get mrs_msgs::GetFloat64Request :datatype-) "mrs_msgs/GetFloat64Request")
(setf (get mrs_msgs::GetFloat64Request :definition-)
      "---
float64 value
bool success

")

(setf (get mrs_msgs::GetFloat64Response :md5sum-) "13e23e74b0a02943a0d2f6c5c29a5cd8")
(setf (get mrs_msgs::GetFloat64Response :datatype-) "mrs_msgs/GetFloat64Response")
(setf (get mrs_msgs::GetFloat64Response :definition-)
      "---
float64 value
bool success

")



(provide :mrs_msgs/GetFloat64 "13e23e74b0a02943a0d2f6c5c29a5cd8")


