;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BigDofecSalvo)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BigDofecSalvo (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BIGDOFECSALVO")
  (make-package "MRS_MSGS::BIGDOFECSALVO"))
(unless (find-package "MRS_MSGS::BIGDOFECSALVOREQUEST")
  (make-package "MRS_MSGS::BIGDOFECSALVOREQUEST"))
(unless (find-package "MRS_MSGS::BIGDOFECSALVORESPONSE")
  (make-package "MRS_MSGS::BIGDOFECSALVORESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::BigDofecSalvoRequest
  :super ros::object
  :slots (_launch_delay_secs _msecs_open ))

(defmethod mrs_msgs::BigDofecSalvoRequest
  (:init
   (&key
    ((:launch_delay_secs __launch_delay_secs) 0.0)
    ((:msecs_open __msecs_open) 0)
    )
   (send-super :init)
   (setq _launch_delay_secs (float __launch_delay_secs))
   (setq _msecs_open (round __msecs_open))
   self)
  (:launch_delay_secs
   (&optional __launch_delay_secs)
   (if __launch_delay_secs (setq _launch_delay_secs __launch_delay_secs)) _launch_delay_secs)
  (:msecs_open
   (&optional __msecs_open)
   (if __msecs_open (setq _msecs_open __msecs_open)) _msecs_open)
  (:serialization-length
   ()
   (+
    ;; float64 _launch_delay_secs
    8
    ;; uint16 _msecs_open
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _launch_delay_secs
       (sys::poke _launch_delay_secs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _msecs_open
       (write-word _msecs_open s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _launch_delay_secs
     (setq _launch_delay_secs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _msecs_open
     (setq _msecs_open (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass mrs_msgs::BigDofecSalvoResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::BigDofecSalvoResponse
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

(defclass mrs_msgs::BigDofecSalvo
  :super ros::object
  :slots ())

(setf (get mrs_msgs::BigDofecSalvo :md5sum-) "6c76d9434acd11a1bca9dd92dec5f206")
(setf (get mrs_msgs::BigDofecSalvo :datatype-) "mrs_msgs/BigDofecSalvo")
(setf (get mrs_msgs::BigDofecSalvo :request) mrs_msgs::BigDofecSalvoRequest)
(setf (get mrs_msgs::BigDofecSalvo :response) mrs_msgs::BigDofecSalvoResponse)

(defmethod mrs_msgs::BigDofecSalvoRequest
  (:response () (instance mrs_msgs::BigDofecSalvoResponse :init)))

(setf (get mrs_msgs::BigDofecSalvoRequest :md5sum-) "6c76d9434acd11a1bca9dd92dec5f206")
(setf (get mrs_msgs::BigDofecSalvoRequest :datatype-) "mrs_msgs/BigDofecSalvoRequest")
(setf (get mrs_msgs::BigDofecSalvoRequest :definition-)
      "float64 launch_delay_secs
uint16 msecs_open
---
bool success
string message

")

(setf (get mrs_msgs::BigDofecSalvoResponse :md5sum-) "6c76d9434acd11a1bca9dd92dec5f206")
(setf (get mrs_msgs::BigDofecSalvoResponse :datatype-) "mrs_msgs/BigDofecSalvoResponse")
(setf (get mrs_msgs::BigDofecSalvoResponse :definition-)
      "float64 launch_delay_secs
uint16 msecs_open
---
bool success
string message

")



(provide :mrs_msgs/BigDofecSalvo "6c76d9434acd11a1bca9dd92dec5f206")


