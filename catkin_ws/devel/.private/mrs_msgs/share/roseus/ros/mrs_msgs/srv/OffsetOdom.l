;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::OffsetOdom)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'OffsetOdom (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::OFFSETODOM")
  (make-package "MRS_MSGS::OFFSETODOM"))
(unless (find-package "MRS_MSGS::OFFSETODOMREQUEST")
  (make-package "MRS_MSGS::OFFSETODOMREQUEST"))
(unless (find-package "MRS_MSGS::OFFSETODOMRESPONSE")
  (make-package "MRS_MSGS::OFFSETODOMRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::OffsetOdomRequest
  :super ros::object
  :slots (_x _y _dx _dy ))

(defmethod mrs_msgs::OffsetOdomRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:dx __dx) 0.0)
    ((:dy __dy) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _dx (float __dx))
   (setq _dy (float __dy))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:dx
   (&optional __dx)
   (if __dx (setq _dx __dx)) _dx)
  (:dy
   (&optional __dy)
   (if __dy (setq _dy __dy)) _dy)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _dx
    4
    ;; float32 _dy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dx
       (sys::poke _dx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dy
       (sys::poke _dy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dx
     (setq _dx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dy
     (setq _dy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mrs_msgs::OffsetOdomResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::OffsetOdomResponse
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

(defclass mrs_msgs::OffsetOdom
  :super ros::object
  :slots ())

(setf (get mrs_msgs::OffsetOdom :md5sum-) "79d132e6a932ab76faf1dd6eac92c729")
(setf (get mrs_msgs::OffsetOdom :datatype-) "mrs_msgs/OffsetOdom")
(setf (get mrs_msgs::OffsetOdom :request) mrs_msgs::OffsetOdomRequest)
(setf (get mrs_msgs::OffsetOdom :response) mrs_msgs::OffsetOdomResponse)

(defmethod mrs_msgs::OffsetOdomRequest
  (:response () (instance mrs_msgs::OffsetOdomResponse :init)))

(setf (get mrs_msgs::OffsetOdomRequest :md5sum-) "79d132e6a932ab76faf1dd6eac92c729")
(setf (get mrs_msgs::OffsetOdomRequest :datatype-) "mrs_msgs/OffsetOdomRequest")
(setf (get mrs_msgs::OffsetOdomRequest :definition-)
      "float32 x
float32 y
float32 dx
float32 dy
---
bool success
string message

")

(setf (get mrs_msgs::OffsetOdomResponse :md5sum-) "79d132e6a932ab76faf1dd6eac92c729")
(setf (get mrs_msgs::OffsetOdomResponse :datatype-) "mrs_msgs/OffsetOdomResponse")
(setf (get mrs_msgs::OffsetOdomResponse :definition-)
      "float32 x
float32 y
float32 dx
float32 dy
---
bool success
string message

")



(provide :mrs_msgs/OffsetOdom "79d132e6a932ab76faf1dd6eac92c729")


