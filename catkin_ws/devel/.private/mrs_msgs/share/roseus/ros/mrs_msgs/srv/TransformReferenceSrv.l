;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TransformReferenceSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TransformReferenceSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TRANSFORMREFERENCESRV")
  (make-package "MRS_MSGS::TRANSFORMREFERENCESRV"))
(unless (find-package "MRS_MSGS::TRANSFORMREFERENCESRVREQUEST")
  (make-package "MRS_MSGS::TRANSFORMREFERENCESRVREQUEST"))
(unless (find-package "MRS_MSGS::TRANSFORMREFERENCESRVRESPONSE")
  (make-package "MRS_MSGS::TRANSFORMREFERENCESRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::TransformReferenceSrvRequest
  :super ros::object
  :slots (_frame_id _reference ))

(defmethod mrs_msgs::TransformReferenceSrvRequest
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:reference __reference) (instance mrs_msgs::ReferenceStamped :init))
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _reference __reference)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
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
    ;; string _frame_id
    4 (length _frame_id)
    ;; mrs_msgs/ReferenceStamped _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; mrs_msgs/ReferenceStamped _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/ReferenceStamped _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::TransformReferenceSrvResponse
  :super ros::object
  :slots (_success _message _reference ))

(defmethod mrs_msgs::TransformReferenceSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:reference __reference) (instance mrs_msgs::ReferenceStamped :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _reference __reference)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
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
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; mrs_msgs/ReferenceStamped _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; mrs_msgs/ReferenceStamped _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/ReferenceStamped _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::TransformReferenceSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::TransformReferenceSrv :md5sum-) "5e0803e0e8a703e9f79a6e9c93ef94c5")
(setf (get mrs_msgs::TransformReferenceSrv :datatype-) "mrs_msgs/TransformReferenceSrv")
(setf (get mrs_msgs::TransformReferenceSrv :request) mrs_msgs::TransformReferenceSrvRequest)
(setf (get mrs_msgs::TransformReferenceSrv :response) mrs_msgs::TransformReferenceSrvResponse)

(defmethod mrs_msgs::TransformReferenceSrvRequest
  (:response () (instance mrs_msgs::TransformReferenceSrvResponse :init)))

(setf (get mrs_msgs::TransformReferenceSrvRequest :md5sum-) "5e0803e0e8a703e9f79a6e9c93ef94c5")
(setf (get mrs_msgs::TransformReferenceSrvRequest :datatype-) "mrs_msgs/TransformReferenceSrvRequest")
(setf (get mrs_msgs::TransformReferenceSrvRequest :definition-)
      "string frame_id
mrs_msgs/ReferenceStamped reference

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
mrs_msgs/ReferenceStamped reference


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
")

(setf (get mrs_msgs::TransformReferenceSrvResponse :md5sum-) "5e0803e0e8a703e9f79a6e9c93ef94c5")
(setf (get mrs_msgs::TransformReferenceSrvResponse :datatype-) "mrs_msgs/TransformReferenceSrvResponse")
(setf (get mrs_msgs::TransformReferenceSrvResponse :definition-)
      "string frame_id
mrs_msgs/ReferenceStamped reference

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
mrs_msgs/ReferenceStamped reference


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
")



(provide :mrs_msgs/TransformReferenceSrv "5e0803e0e8a703e9f79a6e9c93ef94c5")


