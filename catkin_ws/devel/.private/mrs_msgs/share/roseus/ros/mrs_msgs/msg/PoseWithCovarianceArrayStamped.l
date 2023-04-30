;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::PoseWithCovarianceArrayStamped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'PoseWithCovarianceArrayStamped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::POSEWITHCOVARIANCEARRAYSTAMPED")
  (make-package "MRS_MSGS::POSEWITHCOVARIANCEARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PoseWithCovarianceArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::PoseWithCovarianceArrayStamped
  :super ros::object
  :slots (_header _poses ))

(defmethod mrs_msgs::PoseWithCovarianceArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poses __poses) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _poses __poses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/PoseWithCovarianceIdentified[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/PoseWithCovarianceIdentified[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/PoseWithCovarianceIdentified[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance mrs_msgs::PoseWithCovarianceIdentified :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::PoseWithCovarianceArrayStamped :md5sum-) "3dc32bc5b82667712bb3f8fdf00477a4")
(setf (get mrs_msgs::PoseWithCovarianceArrayStamped :datatype-) "mrs_msgs/PoseWithCovarianceArrayStamped")
(setf (get mrs_msgs::PoseWithCovarianceArrayStamped :definition-)
      "std_msgs/Header header
mrs_msgs/PoseWithCovarianceIdentified[] poses

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
MSG: mrs_msgs/PoseWithCovarianceIdentified
uint64 id
geometry_msgs/Pose pose
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :mrs_msgs/PoseWithCovarianceArrayStamped "3dc32bc5b82667712bb3f8fdf00477a4")


