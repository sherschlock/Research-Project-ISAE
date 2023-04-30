;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::LedStripDriver)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'LedStripDriver (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::LEDSTRIPDRIVER")
  (make-package "MRS_MSGS::LEDSTRIPDRIVER"))
(unless (find-package "MRS_MSGS::LEDSTRIPDRIVERREQUEST")
  (make-package "MRS_MSGS::LEDSTRIPDRIVERREQUEST"))
(unless (find-package "MRS_MSGS::LEDSTRIPDRIVERRESPONSE")
  (make-package "MRS_MSGS::LEDSTRIPDRIVERRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::LedStripDriverRequest
  :super ros::object
  :slots (_output_a _output_b _output_vbat ))

(defmethod mrs_msgs::LedStripDriverRequest
  (:init
   (&key
    ((:output_a __output_a) 0)
    ((:output_b __output_b) 0)
    ((:output_vbat __output_vbat) nil)
    )
   (send-super :init)
   (setq _output_a (round __output_a))
   (setq _output_b (round __output_b))
   (setq _output_vbat __output_vbat)
   self)
  (:output_a
   (&optional __output_a)
   (if __output_a (setq _output_a __output_a)) _output_a)
  (:output_b
   (&optional __output_b)
   (if __output_b (setq _output_b __output_b)) _output_b)
  (:output_vbat
   (&optional (__output_vbat :null))
   (if (not (eq __output_vbat :null)) (setq _output_vbat __output_vbat)) _output_vbat)
  (:serialization-length
   ()
   (+
    ;; uint8 _output_a
    1
    ;; uint8 _output_b
    1
    ;; bool _output_vbat
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _output_a
       (write-byte _output_a s)
     ;; uint8 _output_b
       (write-byte _output_b s)
     ;; bool _output_vbat
       (if _output_vbat (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _output_a
     (setq _output_a (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _output_b
     (setq _output_b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _output_vbat
     (setq _output_vbat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mrs_msgs::LedStripDriverResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::LedStripDriverResponse
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

(defclass mrs_msgs::LedStripDriver
  :super ros::object
  :slots ())

(setf (get mrs_msgs::LedStripDriver :md5sum-) "699df7492006841ba00430a91859da78")
(setf (get mrs_msgs::LedStripDriver :datatype-) "mrs_msgs/LedStripDriver")
(setf (get mrs_msgs::LedStripDriver :request) mrs_msgs::LedStripDriverRequest)
(setf (get mrs_msgs::LedStripDriver :response) mrs_msgs::LedStripDriverResponse)

(defmethod mrs_msgs::LedStripDriverRequest
  (:response () (instance mrs_msgs::LedStripDriverResponse :init)))

(setf (get mrs_msgs::LedStripDriverRequest :md5sum-) "699df7492006841ba00430a91859da78")
(setf (get mrs_msgs::LedStripDriverRequest :datatype-) "mrs_msgs/LedStripDriverRequest")
(setf (get mrs_msgs::LedStripDriverRequest :definition-)
      "uint8 output_a
uint8 output_b
bool output_vbat
---
bool success
string message

")

(setf (get mrs_msgs::LedStripDriverResponse :md5sum-) "699df7492006841ba00430a91859da78")
(setf (get mrs_msgs::LedStripDriverResponse :datatype-) "mrs_msgs/LedStripDriverResponse")
(setf (get mrs_msgs::LedStripDriverResponse :definition-)
      "uint8 output_a
uint8 output_b
bool output_vbat
---
bool success
string message

")



(provide :mrs_msgs/LedStripDriver "699df7492006841ba00430a91859da78")


