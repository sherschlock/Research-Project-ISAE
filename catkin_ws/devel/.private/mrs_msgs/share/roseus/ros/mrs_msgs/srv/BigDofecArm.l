;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BigDofecArm)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BigDofecArm (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BIGDOFECARM")
  (make-package "MRS_MSGS::BIGDOFECARM"))
(unless (find-package "MRS_MSGS::BIGDOFECARMREQUEST")
  (make-package "MRS_MSGS::BIGDOFECARMREQUEST"))
(unless (find-package "MRS_MSGS::BIGDOFECARMRESPONSE")
  (make-package "MRS_MSGS::BIGDOFECARMRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::BigDofecArmRequest
  :super ros::object
  :slots (_arm ))

(defmethod mrs_msgs::BigDofecArmRequest
  (:init
   (&key
    ((:arm __arm) nil)
    )
   (send-super :init)
   (setq _arm __arm)
   self)
  (:arm
   (&optional (__arm :null))
   (if (not (eq __arm :null)) (setq _arm __arm)) _arm)
  (:serialization-length
   ()
   (+
    ;; bool _arm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _arm
       (if _arm (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _arm
     (setq _arm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mrs_msgs::BigDofecArmResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::BigDofecArmResponse
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

(defclass mrs_msgs::BigDofecArm
  :super ros::object
  :slots ())

(setf (get mrs_msgs::BigDofecArm :md5sum-) "b937cef067d7c684e0a7c0d4fc2d0a3d")
(setf (get mrs_msgs::BigDofecArm :datatype-) "mrs_msgs/BigDofecArm")
(setf (get mrs_msgs::BigDofecArm :request) mrs_msgs::BigDofecArmRequest)
(setf (get mrs_msgs::BigDofecArm :response) mrs_msgs::BigDofecArmResponse)

(defmethod mrs_msgs::BigDofecArmRequest
  (:response () (instance mrs_msgs::BigDofecArmResponse :init)))

(setf (get mrs_msgs::BigDofecArmRequest :md5sum-) "b937cef067d7c684e0a7c0d4fc2d0a3d")
(setf (get mrs_msgs::BigDofecArmRequest :datatype-) "mrs_msgs/BigDofecArmRequest")
(setf (get mrs_msgs::BigDofecArmRequest :definition-)
      "bool arm
---
bool success
string message

")

(setf (get mrs_msgs::BigDofecArmResponse :md5sum-) "b937cef067d7c684e0a7c0d4fc2d0a3d")
(setf (get mrs_msgs::BigDofecArmResponse :datatype-) "mrs_msgs/BigDofecArmResponse")
(setf (get mrs_msgs::BigDofecArmResponse :definition-)
      "bool arm
---
bool success
string message

")



(provide :mrs_msgs/BigDofecArm "b937cef067d7c684e0a7c0d4fc2d0a3d")


