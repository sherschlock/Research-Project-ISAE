;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Float64Srv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Float64Srv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::FLOAT64SRV")
  (make-package "MRS_MSGS::FLOAT64SRV"))
(unless (find-package "MRS_MSGS::FLOAT64SRVREQUEST")
  (make-package "MRS_MSGS::FLOAT64SRVREQUEST"))
(unless (find-package "MRS_MSGS::FLOAT64SRVRESPONSE")
  (make-package "MRS_MSGS::FLOAT64SRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::Float64SrvRequest
  :super ros::object
  :slots (_value ))

(defmethod mrs_msgs::Float64SrvRequest
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

(defclass mrs_msgs::Float64SrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::Float64SrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::Float64Srv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::Float64Srv :md5sum-) "5d5778235c8477c5669230b433701e6c")
(setf (get mrs_msgs::Float64Srv :datatype-) "mrs_msgs/Float64Srv")
(setf (get mrs_msgs::Float64Srv :request) mrs_msgs::Float64SrvRequest)
(setf (get mrs_msgs::Float64Srv :response) mrs_msgs::Float64SrvResponse)

(defmethod mrs_msgs::Float64SrvRequest
  (:response () (instance mrs_msgs::Float64SrvResponse :init)))

(setf (get mrs_msgs::Float64SrvRequest :md5sum-) "5d5778235c8477c5669230b433701e6c")
(setf (get mrs_msgs::Float64SrvRequest :datatype-) "mrs_msgs/Float64SrvRequest")
(setf (get mrs_msgs::Float64SrvRequest :definition-)
      "float64 value
---
bool success
string message

")

(setf (get mrs_msgs::Float64SrvResponse :md5sum-) "5d5778235c8477c5669230b433701e6c")
(setf (get mrs_msgs::Float64SrvResponse :datatype-) "mrs_msgs/Float64SrvResponse")
(setf (get mrs_msgs::Float64SrvResponse :definition-)
      "float64 value
---
bool success
string message

")



(provide :mrs_msgs/Float64Srv "5d5778235c8477c5669230b433701e6c")


