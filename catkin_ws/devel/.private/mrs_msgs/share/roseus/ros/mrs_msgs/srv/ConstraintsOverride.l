;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ConstraintsOverride)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ConstraintsOverride (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CONSTRAINTSOVERRIDE")
  (make-package "MRS_MSGS::CONSTRAINTSOVERRIDE"))
(unless (find-package "MRS_MSGS::CONSTRAINTSOVERRIDEREQUEST")
  (make-package "MRS_MSGS::CONSTRAINTSOVERRIDEREQUEST"))
(unless (find-package "MRS_MSGS::CONSTRAINTSOVERRIDERESPONSE")
  (make-package "MRS_MSGS::CONSTRAINTSOVERRIDERESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ConstraintsOverrideRequest
  :super ros::object
  :slots (_acceleration_horizontal _acceleration_vertical ))

(defmethod mrs_msgs::ConstraintsOverrideRequest
  (:init
   (&key
    ((:acceleration_horizontal __acceleration_horizontal) 0.0)
    ((:acceleration_vertical __acceleration_vertical) 0.0)
    )
   (send-super :init)
   (setq _acceleration_horizontal (float __acceleration_horizontal))
   (setq _acceleration_vertical (float __acceleration_vertical))
   self)
  (:acceleration_horizontal
   (&optional __acceleration_horizontal)
   (if __acceleration_horizontal (setq _acceleration_horizontal __acceleration_horizontal)) _acceleration_horizontal)
  (:acceleration_vertical
   (&optional __acceleration_vertical)
   (if __acceleration_vertical (setq _acceleration_vertical __acceleration_vertical)) _acceleration_vertical)
  (:serialization-length
   ()
   (+
    ;; float64 _acceleration_horizontal
    8
    ;; float64 _acceleration_vertical
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _acceleration_horizontal
       (sys::poke _acceleration_horizontal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration_vertical
       (sys::poke _acceleration_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _acceleration_horizontal
     (setq _acceleration_horizontal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration_vertical
     (setq _acceleration_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass mrs_msgs::ConstraintsOverrideResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::ConstraintsOverrideResponse
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

(defclass mrs_msgs::ConstraintsOverride
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ConstraintsOverride :md5sum-) "56bf1beffb328c1889ee5151b25df6dc")
(setf (get mrs_msgs::ConstraintsOverride :datatype-) "mrs_msgs/ConstraintsOverride")
(setf (get mrs_msgs::ConstraintsOverride :request) mrs_msgs::ConstraintsOverrideRequest)
(setf (get mrs_msgs::ConstraintsOverride :response) mrs_msgs::ConstraintsOverrideResponse)

(defmethod mrs_msgs::ConstraintsOverrideRequest
  (:response () (instance mrs_msgs::ConstraintsOverrideResponse :init)))

(setf (get mrs_msgs::ConstraintsOverrideRequest :md5sum-) "56bf1beffb328c1889ee5151b25df6dc")
(setf (get mrs_msgs::ConstraintsOverrideRequest :datatype-) "mrs_msgs/ConstraintsOverrideRequest")
(setf (get mrs_msgs::ConstraintsOverrideRequest :definition-)
      "float64 acceleration_horizontal
float64 acceleration_vertical
---
bool success
string message

")

(setf (get mrs_msgs::ConstraintsOverrideResponse :md5sum-) "56bf1beffb328c1889ee5151b25df6dc")
(setf (get mrs_msgs::ConstraintsOverrideResponse :datatype-) "mrs_msgs/ConstraintsOverrideResponse")
(setf (get mrs_msgs::ConstraintsOverrideResponse :definition-)
      "float64 acceleration_horizontal
float64 acceleration_vertical
---
bool success
string message

")



(provide :mrs_msgs/ConstraintsOverride "56bf1beffb328c1889ee5151b25df6dc")


