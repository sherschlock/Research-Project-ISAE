;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ValidateReference)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ValidateReference (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VALIDATEREFERENCE")
  (make-package "MRS_MSGS::VALIDATEREFERENCE"))
(unless (find-package "MRS_MSGS::VALIDATEREFERENCEREQUEST")
  (make-package "MRS_MSGS::VALIDATEREFERENCEREQUEST"))
(unless (find-package "MRS_MSGS::VALIDATEREFERENCERESPONSE")
  (make-package "MRS_MSGS::VALIDATEREFERENCERESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ValidateReferenceRequest
  :super ros::object
  :slots (_reference ))

(defmethod mrs_msgs::ValidateReferenceRequest
  (:init
   (&key
    ((:reference __reference) (instance mrs_msgs::ReferenceStamped :init))
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
    ;; mrs_msgs/ReferenceStamped _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/ReferenceStamped _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/ReferenceStamped _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ValidateReferenceResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::ValidateReferenceResponse
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

(defclass mrs_msgs::ValidateReference
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ValidateReference :md5sum-) "06b7f4eca680cb864af481be91ecc956")
(setf (get mrs_msgs::ValidateReference :datatype-) "mrs_msgs/ValidateReference")
(setf (get mrs_msgs::ValidateReference :request) mrs_msgs::ValidateReferenceRequest)
(setf (get mrs_msgs::ValidateReference :response) mrs_msgs::ValidateReferenceResponse)

(defmethod mrs_msgs::ValidateReferenceRequest
  (:response () (instance mrs_msgs::ValidateReferenceResponse :init)))

(setf (get mrs_msgs::ValidateReferenceRequest :md5sum-) "06b7f4eca680cb864af481be91ecc956")
(setf (get mrs_msgs::ValidateReferenceRequest :datatype-) "mrs_msgs/ValidateReferenceRequest")
(setf (get mrs_msgs::ValidateReferenceRequest :definition-)
      "mrs_msgs/ReferenceStamped reference

================================================================================
MSG: mrs_msgs/ReferenceStamped
# A Positon+Heading reference with a header.

std_msgs/Header header
mrs_msgs/Reference reference

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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

(setf (get mrs_msgs::ValidateReferenceResponse :md5sum-) "06b7f4eca680cb864af481be91ecc956")
(setf (get mrs_msgs::ValidateReferenceResponse :datatype-) "mrs_msgs/ValidateReferenceResponse")
(setf (get mrs_msgs::ValidateReferenceResponse :definition-)
      "mrs_msgs/ReferenceStamped reference

================================================================================
MSG: mrs_msgs/ReferenceStamped
# A Positon+Heading reference with a header.

std_msgs/Header header
mrs_msgs/Reference reference

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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



(provide :mrs_msgs/ValidateReference "06b7f4eca680cb864af481be91ecc956")


