;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::VelocityReferenceStampedSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'VelocityReferenceStampedSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCESTAMPEDSRV")
  (make-package "MRS_MSGS::VELOCITYREFERENCESTAMPEDSRV"))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCESTAMPEDSRVREQUEST")
  (make-package "MRS_MSGS::VELOCITYREFERENCESTAMPEDSRVREQUEST"))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCESTAMPEDSRVRESPONSE")
  (make-package "MRS_MSGS::VELOCITYREFERENCESTAMPEDSRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::VelocityReferenceStampedSrvRequest
  :super ros::object
  :slots (_reference ))

(defmethod mrs_msgs::VelocityReferenceStampedSrvRequest
  (:init
   (&key
    ((:reference __reference) (instance mrs_msgs::VelocityReferenceStamped :init))
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
    ;; mrs_msgs/VelocityReferenceStamped _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/VelocityReferenceStamped _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/VelocityReferenceStamped _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::VelocityReferenceStampedSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::VelocityReferenceStampedSrvResponse
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

(defclass mrs_msgs::VelocityReferenceStampedSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::VelocityReferenceStampedSrv :md5sum-) "2049bed7ddaf936a6b0c045878f5182e")
(setf (get mrs_msgs::VelocityReferenceStampedSrv :datatype-) "mrs_msgs/VelocityReferenceStampedSrv")
(setf (get mrs_msgs::VelocityReferenceStampedSrv :request) mrs_msgs::VelocityReferenceStampedSrvRequest)
(setf (get mrs_msgs::VelocityReferenceStampedSrv :response) mrs_msgs::VelocityReferenceStampedSrvResponse)

(defmethod mrs_msgs::VelocityReferenceStampedSrvRequest
  (:response () (instance mrs_msgs::VelocityReferenceStampedSrvResponse :init)))

(setf (get mrs_msgs::VelocityReferenceStampedSrvRequest :md5sum-) "2049bed7ddaf936a6b0c045878f5182e")
(setf (get mrs_msgs::VelocityReferenceStampedSrvRequest :datatype-) "mrs_msgs/VelocityReferenceStampedSrvRequest")
(setf (get mrs_msgs::VelocityReferenceStampedSrvRequest :definition-)
      "mrs_msgs/VelocityReferenceStamped reference

================================================================================
MSG: mrs_msgs/VelocityReferenceStamped
# contains the frame_id = your reference frame of choice
std_msgs/Header header

mrs_msgs/VelocityReference reference

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
MSG: mrs_msgs/VelocityReference
# desired velocity [m/s]
geometry_msgs/Vector3 velocity

# altitude
float64 altitude

# desired heading and its rate, optional
# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"
float64 heading
float64 heading_rate

# overrides vertical velocity
bool use_altitude

bool use_heading

# overrides heading
bool use_heading_rate

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

")

(setf (get mrs_msgs::VelocityReferenceStampedSrvResponse :md5sum-) "2049bed7ddaf936a6b0c045878f5182e")
(setf (get mrs_msgs::VelocityReferenceStampedSrvResponse :datatype-) "mrs_msgs/VelocityReferenceStampedSrvResponse")
(setf (get mrs_msgs::VelocityReferenceStampedSrvResponse :definition-)
      "mrs_msgs/VelocityReferenceStamped reference

================================================================================
MSG: mrs_msgs/VelocityReferenceStamped
# contains the frame_id = your reference frame of choice
std_msgs/Header header

mrs_msgs/VelocityReference reference

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
MSG: mrs_msgs/VelocityReference
# desired velocity [m/s]
geometry_msgs/Vector3 velocity

# altitude
float64 altitude

# desired heading and its rate, optional
# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"
float64 heading
float64 heading_rate

# overrides vertical velocity
bool use_altitude

bool use_heading

# overrides heading
bool use_heading_rate

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

")



(provide :mrs_msgs/VelocityReferenceStampedSrv "2049bed7ddaf936a6b0c045878f5182e")


