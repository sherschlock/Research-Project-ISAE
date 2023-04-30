;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BigDofecLaunch)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BigDofecLaunch (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BIGDOFECLAUNCH")
  (make-package "MRS_MSGS::BIGDOFECLAUNCH"))
(unless (find-package "MRS_MSGS::BIGDOFECLAUNCHREQUEST")
  (make-package "MRS_MSGS::BIGDOFECLAUNCHREQUEST"))
(unless (find-package "MRS_MSGS::BIGDOFECLAUNCHRESPONSE")
  (make-package "MRS_MSGS::BIGDOFECLAUNCHRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::BigDofecLaunchRequest
  :super ros::object
  :slots (_channel _msecs_open ))

(defmethod mrs_msgs::BigDofecLaunchRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:msecs_open __msecs_open) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _msecs_open (round __msecs_open))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:msecs_open
   (&optional __msecs_open)
   (if __msecs_open (setq _msecs_open __msecs_open)) _msecs_open)
  (:serialization-length
   ()
   (+
    ;; uint8 _channel
    1
    ;; uint16 _msecs_open
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint16 _msecs_open
       (write-word _msecs_open s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _msecs_open
     (setq _msecs_open (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass mrs_msgs::BigDofecLaunchResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::BigDofecLaunchResponse
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

(defclass mrs_msgs::BigDofecLaunch
  :super ros::object
  :slots ())

(setf (get mrs_msgs::BigDofecLaunch :md5sum-) "357f0bafa0cfddcfa722df8b39793652")
(setf (get mrs_msgs::BigDofecLaunch :datatype-) "mrs_msgs/BigDofecLaunch")
(setf (get mrs_msgs::BigDofecLaunch :request) mrs_msgs::BigDofecLaunchRequest)
(setf (get mrs_msgs::BigDofecLaunch :response) mrs_msgs::BigDofecLaunchResponse)

(defmethod mrs_msgs::BigDofecLaunchRequest
  (:response () (instance mrs_msgs::BigDofecLaunchResponse :init)))

(setf (get mrs_msgs::BigDofecLaunchRequest :md5sum-) "357f0bafa0cfddcfa722df8b39793652")
(setf (get mrs_msgs::BigDofecLaunchRequest :datatype-) "mrs_msgs/BigDofecLaunchRequest")
(setf (get mrs_msgs::BigDofecLaunchRequest :definition-)
      "uint8 channel
uint16 msecs_open
---
bool success
string message

")

(setf (get mrs_msgs::BigDofecLaunchResponse :md5sum-) "357f0bafa0cfddcfa722df8b39793652")
(setf (get mrs_msgs::BigDofecLaunchResponse :datatype-) "mrs_msgs/BigDofecLaunchResponse")
(setf (get mrs_msgs::BigDofecLaunchResponse :definition-)
      "uint8 channel
uint16 msecs_open
---
bool success
string message

")



(provide :mrs_msgs/BigDofecLaunch "357f0bafa0cfddcfa722df8b39793652")


