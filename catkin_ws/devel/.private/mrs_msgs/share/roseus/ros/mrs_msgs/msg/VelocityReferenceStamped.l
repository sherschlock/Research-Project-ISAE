;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::VelocityReferenceStamped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'VelocityReferenceStamped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCESTAMPED")
  (make-package "MRS_MSGS::VELOCITYREFERENCESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude VelocityReferenceStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::VelocityReferenceStamped
  :super ros::object
  :slots (_header _reference ))

(defmethod mrs_msgs::VelocityReferenceStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:reference __reference) (instance mrs_msgs::VelocityReference :init))
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
    ;; mrs_msgs/VelocityReference _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/VelocityReference _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/VelocityReference _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::VelocityReferenceStamped :md5sum-) "9dc32c82b2b9ffd6f16c8bf17c42baad")
(setf (get mrs_msgs::VelocityReferenceStamped :datatype-) "mrs_msgs/VelocityReferenceStamped")
(setf (get mrs_msgs::VelocityReferenceStamped :definition-)
      "# contains the frame_id = your reference frame of choice
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
float64 z
")



(provide :mrs_msgs/VelocityReferenceStamped "9dc32c82b2b9ffd6f16c8bf17c42baad")


