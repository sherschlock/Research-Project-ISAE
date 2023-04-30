;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ChangeState)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ChangeState (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CHANGESTATE")
  (make-package "MRS_MSGS::CHANGESTATE"))
(unless (find-package "MRS_MSGS::CHANGESTATEREQUEST")
  (make-package "MRS_MSGS::CHANGESTATEREQUEST"))
(unless (find-package "MRS_MSGS::CHANGESTATERESPONSE")
  (make-package "MRS_MSGS::CHANGESTATERESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ChangeStateRequest
  :super ros::object
  :slots (_state_id ))

(defmethod mrs_msgs::ChangeStateRequest
  (:init
   (&key
    ((:state_id __state_id) 0)
    )
   (send-super :init)
   (setq _state_id (round __state_id))
   self)
  (:state_id
   (&optional __state_id)
   (if __state_id (setq _state_id __state_id)) _state_id)
  (:serialization-length
   ()
   (+
    ;; int32 _state_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state_id
       (write-long _state_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state_id
     (setq _state_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mrs_msgs::ChangeStateResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::ChangeStateResponse
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

(defclass mrs_msgs::ChangeState
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ChangeState :md5sum-) "e106cc88a1deaecd5961b110a257908e")
(setf (get mrs_msgs::ChangeState :datatype-) "mrs_msgs/ChangeState")
(setf (get mrs_msgs::ChangeState :request) mrs_msgs::ChangeStateRequest)
(setf (get mrs_msgs::ChangeState :response) mrs_msgs::ChangeStateResponse)

(defmethod mrs_msgs::ChangeStateRequest
  (:response () (instance mrs_msgs::ChangeStateResponse :init)))

(setf (get mrs_msgs::ChangeStateRequest :md5sum-) "e106cc88a1deaecd5961b110a257908e")
(setf (get mrs_msgs::ChangeStateRequest :datatype-) "mrs_msgs/ChangeStateRequest")
(setf (get mrs_msgs::ChangeStateRequest :definition-)
      "int32 state_id
---
bool success
string message
")

(setf (get mrs_msgs::ChangeStateResponse :md5sum-) "e106cc88a1deaecd5961b110a257908e")
(setf (get mrs_msgs::ChangeStateResponse :datatype-) "mrs_msgs/ChangeStateResponse")
(setf (get mrs_msgs::ChangeStateResponse :definition-)
      "int32 state_id
---
bool success
string message
")



(provide :mrs_msgs/ChangeState "e106cc88a1deaecd5961b110a257908e")


