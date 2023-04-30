;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ValidateReferenceList)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ValidateReferenceList (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VALIDATEREFERENCELIST")
  (make-package "MRS_MSGS::VALIDATEREFERENCELIST"))
(unless (find-package "MRS_MSGS::VALIDATEREFERENCELISTREQUEST")
  (make-package "MRS_MSGS::VALIDATEREFERENCELISTREQUEST"))
(unless (find-package "MRS_MSGS::VALIDATEREFERENCELISTRESPONSE")
  (make-package "MRS_MSGS::VALIDATEREFERENCELISTRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ValidateReferenceListRequest
  :super ros::object
  :slots (_list ))

(defmethod mrs_msgs::ValidateReferenceListRequest
  (:init
   (&key
    ((:list __list) (instance mrs_msgs::ReferenceList :init))
    )
   (send-super :init)
   (setq _list __list)
   self)
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:serialization-length
   ()
   (+
    ;; mrs_msgs/ReferenceList _list
    (send _list :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/ReferenceList _list
       (send _list :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/ReferenceList _list
     (send _list :deserialize buf ptr-) (incf ptr- (send _list :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ValidateReferenceListResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::ValidateReferenceListResponse
  (:init
   (&key
    ((:success __success) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool[] _success
    (* 1    (length _success)) 4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _success
     (write-long (length _success) s)
     (dotimes (i (length _success))
       (if (elt _success i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _success
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _success (make-list n))
     (dotimes (i n)
     (setf (elt _success i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::ValidateReferenceList
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ValidateReferenceList :md5sum-) "816d5618f8279774a4a676445fc80658")
(setf (get mrs_msgs::ValidateReferenceList :datatype-) "mrs_msgs/ValidateReferenceList")
(setf (get mrs_msgs::ValidateReferenceList :request) mrs_msgs::ValidateReferenceListRequest)
(setf (get mrs_msgs::ValidateReferenceList :response) mrs_msgs::ValidateReferenceListResponse)

(defmethod mrs_msgs::ValidateReferenceListRequest
  (:response () (instance mrs_msgs::ValidateReferenceListResponse :init)))

(setf (get mrs_msgs::ValidateReferenceListRequest :md5sum-) "816d5618f8279774a4a676445fc80658")
(setf (get mrs_msgs::ValidateReferenceListRequest :datatype-) "mrs_msgs/ValidateReferenceListRequest")
(setf (get mrs_msgs::ValidateReferenceListRequest :definition-)
      "mrs_msgs/ReferenceList list

================================================================================
MSG: mrs_msgs/ReferenceList
# A list of references.

std_msgs/Header header
mrs_msgs/Reference[] list

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
bool[] success
string message

")

(setf (get mrs_msgs::ValidateReferenceListResponse :md5sum-) "816d5618f8279774a4a676445fc80658")
(setf (get mrs_msgs::ValidateReferenceListResponse :datatype-) "mrs_msgs/ValidateReferenceListResponse")
(setf (get mrs_msgs::ValidateReferenceListResponse :definition-)
      "mrs_msgs/ReferenceList list

================================================================================
MSG: mrs_msgs/ReferenceList
# A list of references.

std_msgs/Header header
mrs_msgs/Reference[] list

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
bool[] success
string message

")



(provide :mrs_msgs/ValidateReferenceList "816d5618f8279774a4a676445fc80658")


