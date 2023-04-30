;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::HeadingStateNames)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'HeadingStateNames (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::HEADINGSTATENAMES")
  (make-package "MRS_MSGS::HEADINGSTATENAMES"))

(in-package "ROS")
;;//! \htmlinclude HeadingStateNames.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*YAW*" (find-package "MRS_MSGS::HEADINGSTATENAMES"))
(shadow '*YAW* (find-package "MRS_MSGS::HEADINGSTATENAMES"))
(defconstant mrs_msgs::HeadingStateNames::*YAW* 0)
(intern "*YAW_RATE*" (find-package "MRS_MSGS::HEADINGSTATENAMES"))
(shadow '*YAW_RATE* (find-package "MRS_MSGS::HEADINGSTATENAMES"))
(defconstant mrs_msgs::HeadingStateNames::*YAW_RATE* 1)
(intern "*GYRO_BIAS*" (find-package "MRS_MSGS::HEADINGSTATENAMES"))
(shadow '*GYRO_BIAS* (find-package "MRS_MSGS::HEADINGSTATENAMES"))
(defconstant mrs_msgs::HeadingStateNames::*GYRO_BIAS* 2)

(defun mrs_msgs::HeadingStateNames-to-symbol (const)
  (cond
        ((= const 0) 'mrs_msgs::HeadingStateNames::*YAW*)
        ((= const 1) 'mrs_msgs::HeadingStateNames::*YAW_RATE*)
        ((= const 2) 'mrs_msgs::HeadingStateNames::*GYRO_BIAS*)
        (t nil)))

(defclass mrs_msgs::HeadingStateNames
  :super ros::object
  :slots (_header ))

(defmethod mrs_msgs::HeadingStateNames
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::HeadingStateNames :md5sum-) "400ad705a51f1e6dfe6e06e2135895cf")
(setf (get mrs_msgs::HeadingStateNames :datatype-) "mrs_msgs/HeadingStateNames")
(setf (get mrs_msgs::HeadingStateNames :definition-)
      "std_msgs/Header header
uint8 YAW = 0
uint8 YAW_RATE = 1
uint8 GYRO_BIAS = 2

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

")



(provide :mrs_msgs/HeadingStateNames "400ad705a51f1e6dfe6e06e2135895cf")


