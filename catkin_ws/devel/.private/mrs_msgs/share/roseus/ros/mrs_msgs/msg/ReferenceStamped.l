;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ReferenceStamped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ReferenceStamped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::REFERENCESTAMPED")
  (make-package "MRS_MSGS::REFERENCESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ReferenceStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::ReferenceStamped
  :super ros::object
  :slots (_header _reference ))

(defmethod mrs_msgs::ReferenceStamped
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

(setf (get mrs_msgs::ReferenceStamped :md5sum-) "3e37cd4d360107bbe8b9682f8ebc4650")
(setf (get mrs_msgs::ReferenceStamped :datatype-) "mrs_msgs/ReferenceStamped")
(setf (get mrs_msgs::ReferenceStamped :definition-)
      "# A Positon+Heading reference with a header.

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



(provide :mrs_msgs/ReferenceStamped "3e37cd4d360107bbe8b9682f8ebc4650")


