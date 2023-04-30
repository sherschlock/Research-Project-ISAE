;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BigDofecSetLeds)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BigDofecSetLeds (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BIGDOFECSETLEDS")
  (make-package "MRS_MSGS::BIGDOFECSETLEDS"))
(unless (find-package "MRS_MSGS::BIGDOFECSETLEDSREQUEST")
  (make-package "MRS_MSGS::BIGDOFECSETLEDSREQUEST"))
(unless (find-package "MRS_MSGS::BIGDOFECSETLEDSRESPONSE")
  (make-package "MRS_MSGS::BIGDOFECSETLEDSRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::BigDofecSetLedsRequest
  :super ros::object
  :slots (_channel _num_leds _r _g _b ))

(defmethod mrs_msgs::BigDofecSetLedsRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:num_leds __num_leds) 0)
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _num_leds (round __num_leds))
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:num_leds
   (&optional __num_leds)
   (if __num_leds (setq _num_leds __num_leds)) _num_leds)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; uint8 _channel
    1
    ;; uint8 _num_leds
    1
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint8 _num_leds
       (write-byte _num_leds s)
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_leds
     (setq _num_leds (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mrs_msgs::BigDofecSetLedsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::BigDofecSetLedsResponse
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

(defclass mrs_msgs::BigDofecSetLeds
  :super ros::object
  :slots ())

(setf (get mrs_msgs::BigDofecSetLeds :md5sum-) "4f4853b0cec3ee4ae284153b1ef7bba5")
(setf (get mrs_msgs::BigDofecSetLeds :datatype-) "mrs_msgs/BigDofecSetLeds")
(setf (get mrs_msgs::BigDofecSetLeds :request) mrs_msgs::BigDofecSetLedsRequest)
(setf (get mrs_msgs::BigDofecSetLeds :response) mrs_msgs::BigDofecSetLedsResponse)

(defmethod mrs_msgs::BigDofecSetLedsRequest
  (:response () (instance mrs_msgs::BigDofecSetLedsResponse :init)))

(setf (get mrs_msgs::BigDofecSetLedsRequest :md5sum-) "4f4853b0cec3ee4ae284153b1ef7bba5")
(setf (get mrs_msgs::BigDofecSetLedsRequest :datatype-) "mrs_msgs/BigDofecSetLedsRequest")
(setf (get mrs_msgs::BigDofecSetLedsRequest :definition-)
      "uint8 channel
uint8 num_leds
uint8 r
uint8 g
uint8 b
---
bool success
string message

")

(setf (get mrs_msgs::BigDofecSetLedsResponse :md5sum-) "4f4853b0cec3ee4ae284153b1ef7bba5")
(setf (get mrs_msgs::BigDofecSetLedsResponse :datatype-) "mrs_msgs/BigDofecSetLedsResponse")
(setf (get mrs_msgs::BigDofecSetLedsResponse :definition-)
      "uint8 channel
uint8 num_leds
uint8 r
uint8 g
uint8 b
---
bool success
string message

")



(provide :mrs_msgs/BigDofecSetLeds "4f4853b0cec3ee4ae284153b1ef7bba5")


