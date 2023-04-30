;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ReferenceList)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ReferenceList (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::REFERENCELIST")
  (make-package "MRS_MSGS::REFERENCELIST"))

(in-package "ROS")
;;//! \htmlinclude ReferenceList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::ReferenceList
  :super ros::object
  :slots (_header _list ))

(defmethod mrs_msgs::ReferenceList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:list __list) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _list __list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/Reference[] _list
    (apply #'+ (send-all _list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/Reference[] _list
     (write-long (length _list) s)
     (dolist (elem _list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/Reference[] _list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _list (let (r) (dotimes (i n) (push (instance mrs_msgs::Reference :init) r)) r))
     (dolist (elem- _list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::ReferenceList :md5sum-) "a8f56fe295bd235943e2b79bf855de91")
(setf (get mrs_msgs::ReferenceList :datatype-) "mrs_msgs/ReferenceList")
(setf (get mrs_msgs::ReferenceList :definition-)
      "# A list of references.

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

")



(provide :mrs_msgs/ReferenceList "a8f56fe295bd235943e2b79bf855de91")


