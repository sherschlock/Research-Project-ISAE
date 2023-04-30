;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::TransformVector3Srv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'TransformVector3Srv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TRANSFORMVECTOR3SRV")
  (make-package "MRS_MSGS::TRANSFORMVECTOR3SRV"))
(unless (find-package "MRS_MSGS::TRANSFORMVECTOR3SRVREQUEST")
  (make-package "MRS_MSGS::TRANSFORMVECTOR3SRVREQUEST"))
(unless (find-package "MRS_MSGS::TRANSFORMVECTOR3SRVRESPONSE")
  (make-package "MRS_MSGS::TRANSFORMVECTOR3SRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mrs_msgs::TransformVector3SrvRequest
  :super ros::object
  :slots (_frame_id _vector ))

(defmethod mrs_msgs::TransformVector3SrvRequest
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:vector __vector) (instance geometry_msgs::Vector3Stamped :init))
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _vector __vector)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:vector
   (&rest __vector)
   (if (keywordp (car __vector))
       (send* _vector __vector)
     (progn
       (if __vector (setq _vector (car __vector)))
       _vector)))
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Vector3Stamped _vector
    (send _vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Vector3Stamped _vector
       (send _vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3Stamped _vector
     (send _vector :deserialize buf ptr-) (incf ptr- (send _vector :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::TransformVector3SrvResponse
  :super ros::object
  :slots (_success _message _vector ))

(defmethod mrs_msgs::TransformVector3SrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:vector __vector) (instance geometry_msgs::Vector3Stamped :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _vector __vector)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:vector
   (&rest __vector)
   (if (keywordp (car __vector))
       (send* _vector __vector)
     (progn
       (if __vector (setq _vector (car __vector)))
       _vector)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; geometry_msgs/Vector3Stamped _vector
    (send _vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; geometry_msgs/Vector3Stamped _vector
       (send _vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3Stamped _vector
     (send _vector :deserialize buf ptr-) (incf ptr- (send _vector :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::TransformVector3Srv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::TransformVector3Srv :md5sum-) "997fb77f6976e071a4e765fdba14bb92")
(setf (get mrs_msgs::TransformVector3Srv :datatype-) "mrs_msgs/TransformVector3Srv")
(setf (get mrs_msgs::TransformVector3Srv :request) mrs_msgs::TransformVector3SrvRequest)
(setf (get mrs_msgs::TransformVector3Srv :response) mrs_msgs::TransformVector3SrvResponse)

(defmethod mrs_msgs::TransformVector3SrvRequest
  (:response () (instance mrs_msgs::TransformVector3SrvResponse :init)))

(setf (get mrs_msgs::TransformVector3SrvRequest :md5sum-) "997fb77f6976e071a4e765fdba14bb92")
(setf (get mrs_msgs::TransformVector3SrvRequest :datatype-) "mrs_msgs/TransformVector3SrvRequest")
(setf (get mrs_msgs::TransformVector3SrvRequest :definition-)
      "string frame_id
geometry_msgs/Vector3Stamped vector

================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string message
geometry_msgs/Vector3Stamped vector


================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get mrs_msgs::TransformVector3SrvResponse :md5sum-) "997fb77f6976e071a4e765fdba14bb92")
(setf (get mrs_msgs::TransformVector3SrvResponse :datatype-) "mrs_msgs/TransformVector3SrvResponse")
(setf (get mrs_msgs::TransformVector3SrvResponse :definition-)
      "string frame_id
geometry_msgs/Vector3Stamped vector

================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string message
geometry_msgs/Vector3Stamped vector


================================================================================
MSG: geometry_msgs/Vector3Stamped
# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :mrs_msgs/TransformVector3Srv "997fb77f6976e071a4e765fdba14bb92")


