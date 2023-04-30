;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BigDofecSetPWM)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BigDofecSetPWM (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BIGDOFECSETPWM")
  (make-package "MRS_MSGS::BIGDOFECSETPWM"))
(unless (find-package "MRS_MSGS::BIGDOFECSETPWMREQUEST")
  (make-package "MRS_MSGS::BIGDOFECSETPWMREQUEST"))
(unless (find-package "MRS_MSGS::BIGDOFECSETPWMRESPONSE")
  (make-package "MRS_MSGS::BIGDOFECSETPWMRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::BigDofecSetPWMRequest
  :super ros::object
  :slots (_enable _pwm_1 _pwm_2 _pwm_3 _pwm_4 _pwm_5 _pwm_6 ))

(defmethod mrs_msgs::BigDofecSetPWMRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:pwm_1 __pwm_1) 0)
    ((:pwm_2 __pwm_2) 0)
    ((:pwm_3 __pwm_3) 0)
    ((:pwm_4 __pwm_4) 0)
    ((:pwm_5 __pwm_5) 0)
    ((:pwm_6 __pwm_6) 0)
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _pwm_1 (round __pwm_1))
   (setq _pwm_2 (round __pwm_2))
   (setq _pwm_3 (round __pwm_3))
   (setq _pwm_4 (round __pwm_4))
   (setq _pwm_5 (round __pwm_5))
   (setq _pwm_6 (round __pwm_6))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:pwm_1
   (&optional __pwm_1)
   (if __pwm_1 (setq _pwm_1 __pwm_1)) _pwm_1)
  (:pwm_2
   (&optional __pwm_2)
   (if __pwm_2 (setq _pwm_2 __pwm_2)) _pwm_2)
  (:pwm_3
   (&optional __pwm_3)
   (if __pwm_3 (setq _pwm_3 __pwm_3)) _pwm_3)
  (:pwm_4
   (&optional __pwm_4)
   (if __pwm_4 (setq _pwm_4 __pwm_4)) _pwm_4)
  (:pwm_5
   (&optional __pwm_5)
   (if __pwm_5 (setq _pwm_5 __pwm_5)) _pwm_5)
  (:pwm_6
   (&optional __pwm_6)
   (if __pwm_6 (setq _pwm_6 __pwm_6)) _pwm_6)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; uint16 _pwm_1
    2
    ;; uint16 _pwm_2
    2
    ;; uint16 _pwm_3
    2
    ;; uint16 _pwm_4
    2
    ;; uint16 _pwm_5
    2
    ;; uint16 _pwm_6
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _pwm_1
       (write-word _pwm_1 s)
     ;; uint16 _pwm_2
       (write-word _pwm_2 s)
     ;; uint16 _pwm_3
       (write-word _pwm_3 s)
     ;; uint16 _pwm_4
       (write-word _pwm_4 s)
     ;; uint16 _pwm_5
       (write-word _pwm_5 s)
     ;; uint16 _pwm_6
       (write-word _pwm_6 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _pwm_1
     (setq _pwm_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm_2
     (setq _pwm_2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm_3
     (setq _pwm_3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm_4
     (setq _pwm_4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm_5
     (setq _pwm_5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm_6
     (setq _pwm_6 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass mrs_msgs::BigDofecSetPWMResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::BigDofecSetPWMResponse
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

(defclass mrs_msgs::BigDofecSetPWM
  :super ros::object
  :slots ())

(setf (get mrs_msgs::BigDofecSetPWM :md5sum-) "520a4ed6517f96208c7031ef1b57775b")
(setf (get mrs_msgs::BigDofecSetPWM :datatype-) "mrs_msgs/BigDofecSetPWM")
(setf (get mrs_msgs::BigDofecSetPWM :request) mrs_msgs::BigDofecSetPWMRequest)
(setf (get mrs_msgs::BigDofecSetPWM :response) mrs_msgs::BigDofecSetPWMResponse)

(defmethod mrs_msgs::BigDofecSetPWMRequest
  (:response () (instance mrs_msgs::BigDofecSetPWMResponse :init)))

(setf (get mrs_msgs::BigDofecSetPWMRequest :md5sum-) "520a4ed6517f96208c7031ef1b57775b")
(setf (get mrs_msgs::BigDofecSetPWMRequest :datatype-) "mrs_msgs/BigDofecSetPWMRequest")
(setf (get mrs_msgs::BigDofecSetPWMRequest :definition-)
      "bool enable
uint16 pwm_1
uint16 pwm_2
uint16 pwm_3
uint16 pwm_4
uint16 pwm_5
uint16 pwm_6
---
bool success
string message

")

(setf (get mrs_msgs::BigDofecSetPWMResponse :md5sum-) "520a4ed6517f96208c7031ef1b57775b")
(setf (get mrs_msgs::BigDofecSetPWMResponse :datatype-) "mrs_msgs/BigDofecSetPWMResponse")
(setf (get mrs_msgs::BigDofecSetPWMResponse :definition-)
      "bool enable
uint16 pwm_1
uint16 pwm_2
uint16 pwm_3
uint16 pwm_4
uint16 pwm_5
uint16 pwm_6
---
bool success
string message

")



(provide :mrs_msgs/BigDofecSetPWM "520a4ed6517f96208c7031ef1b57775b")


