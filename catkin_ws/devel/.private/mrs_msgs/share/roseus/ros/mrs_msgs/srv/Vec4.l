;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Vec4)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Vec4 (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VEC4")
  (make-package "MRS_MSGS::VEC4"))
(unless (find-package "MRS_MSGS::VEC4REQUEST")
  (make-package "MRS_MSGS::VEC4REQUEST"))
(unless (find-package "MRS_MSGS::VEC4RESPONSE")
  (make-package "MRS_MSGS::VEC4RESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::Vec4Request
  :super ros::object
  :slots (_goal ))

(defmethod mrs_msgs::Vec4Request
  (:init
   (&key
    ((:goal __goal) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; float64[4] _goal
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[4] _goal
     (dotimes (i 4)
       (sys::poke (elt _goal i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[4] _goal
   (dotimes (i (length _goal))
     (setf (elt _goal i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass mrs_msgs::Vec4Response
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::Vec4Response
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

(defclass mrs_msgs::Vec4
  :super ros::object
  :slots ())

(setf (get mrs_msgs::Vec4 :md5sum-) "023f7b397f1175bc8ddb57928281c1d4")
(setf (get mrs_msgs::Vec4 :datatype-) "mrs_msgs/Vec4")
(setf (get mrs_msgs::Vec4 :request) mrs_msgs::Vec4Request)
(setf (get mrs_msgs::Vec4 :response) mrs_msgs::Vec4Response)

(defmethod mrs_msgs::Vec4Request
  (:response () (instance mrs_msgs::Vec4Response :init)))

(setf (get mrs_msgs::Vec4Request :md5sum-) "023f7b397f1175bc8ddb57928281c1d4")
(setf (get mrs_msgs::Vec4Request :datatype-) "mrs_msgs/Vec4Request")
(setf (get mrs_msgs::Vec4Request :definition-)
      "float64[4] goal
---
bool success
string message

")

(setf (get mrs_msgs::Vec4Response :md5sum-) "023f7b397f1175bc8ddb57928281c1d4")
(setf (get mrs_msgs::Vec4Response :datatype-) "mrs_msgs/Vec4Response")
(setf (get mrs_msgs::Vec4Response :definition-)
      "float64[4] goal
---
bool success
string message

")



(provide :mrs_msgs/Vec4 "023f7b397f1175bc8ddb57928281c1d4")


