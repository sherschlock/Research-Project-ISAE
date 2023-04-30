;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Vec1)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Vec1 (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VEC1")
  (make-package "MRS_MSGS::VEC1"))
(unless (find-package "MRS_MSGS::VEC1REQUEST")
  (make-package "MRS_MSGS::VEC1REQUEST"))
(unless (find-package "MRS_MSGS::VEC1RESPONSE")
  (make-package "MRS_MSGS::VEC1RESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::Vec1Request
  :super ros::object
  :slots (_goal ))

(defmethod mrs_msgs::Vec1Request
  (:init
   (&key
    ((:goal __goal) 0.0)
    )
   (send-super :init)
   (setq _goal (float __goal))
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; float64 _goal
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _goal
       (sys::poke _goal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _goal
     (setq _goal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass mrs_msgs::Vec1Response
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::Vec1Response
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

(defclass mrs_msgs::Vec1
  :super ros::object
  :slots ())

(setf (get mrs_msgs::Vec1 :md5sum-) "9f12dd235d16c796b68c355a87389da0")
(setf (get mrs_msgs::Vec1 :datatype-) "mrs_msgs/Vec1")
(setf (get mrs_msgs::Vec1 :request) mrs_msgs::Vec1Request)
(setf (get mrs_msgs::Vec1 :response) mrs_msgs::Vec1Response)

(defmethod mrs_msgs::Vec1Request
  (:response () (instance mrs_msgs::Vec1Response :init)))

(setf (get mrs_msgs::Vec1Request :md5sum-) "9f12dd235d16c796b68c355a87389da0")
(setf (get mrs_msgs::Vec1Request :datatype-) "mrs_msgs/Vec1Request")
(setf (get mrs_msgs::Vec1Request :definition-)
      "float64 goal
---
bool success
string message

")

(setf (get mrs_msgs::Vec1Response :md5sum-) "9f12dd235d16c796b68c355a87389da0")
(setf (get mrs_msgs::Vec1Response :datatype-) "mrs_msgs/Vec1Response")
(setf (get mrs_msgs::Vec1Response :definition-)
      "float64 goal
---
bool success
string message

")



(provide :mrs_msgs/Vec1 "9f12dd235d16c796b68c355a87389da0")


