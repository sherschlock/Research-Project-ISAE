;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Float64StampedSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Float64StampedSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::FLOAT64STAMPEDSRV")
  (make-package "MRS_MSGS::FLOAT64STAMPEDSRV"))
(unless (find-package "MRS_MSGS::FLOAT64STAMPEDSRVREQUEST")
  (make-package "MRS_MSGS::FLOAT64STAMPEDSRVREQUEST"))
(unless (find-package "MRS_MSGS::FLOAT64STAMPEDSRVRESPONSE")
  (make-package "MRS_MSGS::FLOAT64STAMPEDSRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass mrs_msgs::Float64StampedSrvRequest
  :super ros::object
  :slots (_header _value ))

(defmethod mrs_msgs::Float64StampedSrvRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _value (float __value))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass mrs_msgs::Float64StampedSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::Float64StampedSrvResponse
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

(defclass mrs_msgs::Float64StampedSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::Float64StampedSrv :md5sum-) "b70212202386f89868e028f471ec5a6e")
(setf (get mrs_msgs::Float64StampedSrv :datatype-) "mrs_msgs/Float64StampedSrv")
(setf (get mrs_msgs::Float64StampedSrv :request) mrs_msgs::Float64StampedSrvRequest)
(setf (get mrs_msgs::Float64StampedSrv :response) mrs_msgs::Float64StampedSrvResponse)

(defmethod mrs_msgs::Float64StampedSrvRequest
  (:response () (instance mrs_msgs::Float64StampedSrvResponse :init)))

(setf (get mrs_msgs::Float64StampedSrvRequest :md5sum-) "b70212202386f89868e028f471ec5a6e")
(setf (get mrs_msgs::Float64StampedSrvRequest :datatype-) "mrs_msgs/Float64StampedSrvRequest")
(setf (get mrs_msgs::Float64StampedSrvRequest :definition-)
      "std_msgs/Header header
float64 value

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
---
bool success
string message

")

(setf (get mrs_msgs::Float64StampedSrvResponse :md5sum-) "b70212202386f89868e028f471ec5a6e")
(setf (get mrs_msgs::Float64StampedSrvResponse :datatype-) "mrs_msgs/Float64StampedSrvResponse")
(setf (get mrs_msgs::Float64StampedSrvResponse :definition-)
      "std_msgs/Header header
float64 value

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
---
bool success
string message

")



(provide :mrs_msgs/Float64StampedSrv "b70212202386f89868e028f471ec5a6e")


