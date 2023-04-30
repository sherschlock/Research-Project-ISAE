;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::AltitudeStateNames)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'AltitudeStateNames (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::ALTITUDESTATENAMES")
  (make-package "MRS_MSGS::ALTITUDESTATENAMES"))

(in-package "ROS")
;;//! \htmlinclude AltitudeStateNames.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*HEIGHT*" (find-package "MRS_MSGS::ALTITUDESTATENAMES"))
(shadow '*HEIGHT* (find-package "MRS_MSGS::ALTITUDESTATENAMES"))
(defconstant mrs_msgs::AltitudeStateNames::*HEIGHT* 0)
(intern "*VELOCITY*" (find-package "MRS_MSGS::ALTITUDESTATENAMES"))
(shadow '*VELOCITY* (find-package "MRS_MSGS::ALTITUDESTATENAMES"))
(defconstant mrs_msgs::AltitudeStateNames::*VELOCITY* 1)
(intern "*ACCELERATION*" (find-package "MRS_MSGS::ALTITUDESTATENAMES"))
(shadow '*ACCELERATION* (find-package "MRS_MSGS::ALTITUDESTATENAMES"))
(defconstant mrs_msgs::AltitudeStateNames::*ACCELERATION* 2)

(defun mrs_msgs::AltitudeStateNames-to-symbol (const)
  (cond
        ((= const 0) 'mrs_msgs::AltitudeStateNames::*HEIGHT*)
        ((= const 1) 'mrs_msgs::AltitudeStateNames::*VELOCITY*)
        ((= const 2) 'mrs_msgs::AltitudeStateNames::*ACCELERATION*)
        (t nil)))

(defclass mrs_msgs::AltitudeStateNames
  :super ros::object
  :slots (_header ))

(defmethod mrs_msgs::AltitudeStateNames
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

(setf (get mrs_msgs::AltitudeStateNames :md5sum-) "ccfe487c423d896ac53e72022b621e4b")
(setf (get mrs_msgs::AltitudeStateNames :datatype-) "mrs_msgs/AltitudeStateNames")
(setf (get mrs_msgs::AltitudeStateNames :definition-)
      "std_msgs/Header header
uint8 HEIGHT = 0
uint8 VELOCITY = 1
uint8 ACCELERATION = 2

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



(provide :mrs_msgs/AltitudeStateNames "ccfe487c423d896ac53e72022b621e4b")


