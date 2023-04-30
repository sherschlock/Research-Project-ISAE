;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ReferenceSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ReferenceSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::REFERENCESRV")
  (make-package "MRS_MSGS::REFERENCESRV"))
(unless (find-package "MRS_MSGS::REFERENCESRVREQUEST")
  (make-package "MRS_MSGS::REFERENCESRVREQUEST"))
(unless (find-package "MRS_MSGS::REFERENCESRVRESPONSE")
  (make-package "MRS_MSGS::REFERENCESRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ReferenceSrvRequest
  :super ros::object
  :slots (_reference ))

(defmethod mrs_msgs::ReferenceSrvRequest
  (:init
   (&key
    ((:reference __reference) (instance mrs_msgs::Reference :init))
    )
   (send-super :init)
   (setq _reference __reference)
   self)
  (:reference
   (&rest __reference)
   (if (keywordp (car __reference))
       (send* _reference __reference)
     (progn
       (if __reference (setq _reference (car __reference)))
       _reference)))
  (:serialization-length
   ()
   (+
    ;; mrs_msgs/Reference _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/Reference _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/Reference _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ReferenceSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::ReferenceSrvResponse
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

(defclass mrs_msgs::ReferenceSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ReferenceSrv :md5sum-) "d2bd04078f0e6934b3b579215143a7f4")
(setf (get mrs_msgs::ReferenceSrv :datatype-) "mrs_msgs/ReferenceSrv")
(setf (get mrs_msgs::ReferenceSrv :request) mrs_msgs::ReferenceSrvRequest)
(setf (get mrs_msgs::ReferenceSrv :response) mrs_msgs::ReferenceSrvResponse)

(defmethod mrs_msgs::ReferenceSrvRequest
  (:response () (instance mrs_msgs::ReferenceSrvResponse :init)))

(setf (get mrs_msgs::ReferenceSrvRequest :md5sum-) "d2bd04078f0e6934b3b579215143a7f4")
(setf (get mrs_msgs::ReferenceSrvRequest :datatype-) "mrs_msgs/ReferenceSrvRequest")
(setf (get mrs_msgs::ReferenceSrvRequest :definition-)
      "mrs_msgs/Reference reference

================================================================================
MSG: mrs_msgs/Reference
# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
string message

")

(setf (get mrs_msgs::ReferenceSrvResponse :md5sum-) "d2bd04078f0e6934b3b579215143a7f4")
(setf (get mrs_msgs::ReferenceSrvResponse :datatype-) "mrs_msgs/ReferenceSrvResponse")
(setf (get mrs_msgs::ReferenceSrvResponse :definition-)
      "mrs_msgs/Reference reference

================================================================================
MSG: mrs_msgs/Reference
# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool success
string message

")



(provide :mrs_msgs/ReferenceSrv "d2bd04078f0e6934b3b579215143a7f4")


