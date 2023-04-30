;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ReferenceStampedSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ReferenceStampedSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::REFERENCESTAMPEDSRV")
  (make-package "MRS_MSGS::REFERENCESTAMPEDSRV"))
(unless (find-package "MRS_MSGS::REFERENCESTAMPEDSRVREQUEST")
  (make-package "MRS_MSGS::REFERENCESTAMPEDSRVREQUEST"))
(unless (find-package "MRS_MSGS::REFERENCESTAMPEDSRVRESPONSE")
  (make-package "MRS_MSGS::REFERENCESTAMPEDSRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass mrs_msgs::ReferenceStampedSrvRequest
  :super ros::object
  :slots (_header _reference ))

(defmethod mrs_msgs::ReferenceStampedSrvRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:reference __reference) (instance mrs_msgs::Reference :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _reference __reference)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/Reference _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/Reference _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/Reference _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ReferenceStampedSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::ReferenceStampedSrvResponse
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

(defclass mrs_msgs::ReferenceStampedSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ReferenceStampedSrv :md5sum-) "28cdbf41a017795fe55f4fe1bc97170e")
(setf (get mrs_msgs::ReferenceStampedSrv :datatype-) "mrs_msgs/ReferenceStampedSrv")
(setf (get mrs_msgs::ReferenceStampedSrv :request) mrs_msgs::ReferenceStampedSrvRequest)
(setf (get mrs_msgs::ReferenceStampedSrv :response) mrs_msgs::ReferenceStampedSrvResponse)

(defmethod mrs_msgs::ReferenceStampedSrvRequest
  (:response () (instance mrs_msgs::ReferenceStampedSrvResponse :init)))

(setf (get mrs_msgs::ReferenceStampedSrvRequest :md5sum-) "28cdbf41a017795fe55f4fe1bc97170e")
(setf (get mrs_msgs::ReferenceStampedSrvRequest :datatype-) "mrs_msgs/ReferenceStampedSrvRequest")
(setf (get mrs_msgs::ReferenceStampedSrvRequest :definition-)
      "std_msgs/Header header
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

(setf (get mrs_msgs::ReferenceStampedSrvResponse :md5sum-) "28cdbf41a017795fe55f4fe1bc97170e")
(setf (get mrs_msgs::ReferenceStampedSrvResponse :datatype-) "mrs_msgs/ReferenceStampedSrvResponse")
(setf (get mrs_msgs::ReferenceStampedSrvResponse :definition-)
      "std_msgs/Header header
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



(provide :mrs_msgs/ReferenceStampedSrv "28cdbf41a017795fe55f4fe1bc97170e")


