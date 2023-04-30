;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Float64ArrayStamped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Float64ArrayStamped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::FLOAT64ARRAYSTAMPED")
  (make-package "MRS_MSGS::FLOAT64ARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude Float64ArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Float64ArrayStamped
  :super ros::object
  :slots (_header _values ))

(defmethod mrs_msgs::Float64ArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:values __values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _values
    (* 8    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::Float64ArrayStamped :md5sum-) "bfa79f36371fee74e53d96afde61049b")
(setf (get mrs_msgs::Float64ArrayStamped :datatype-) "mrs_msgs/Float64ArrayStamped")
(setf (get mrs_msgs::Float64ArrayStamped :definition-)
      "std_msgs/Header header
float64[] values

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



(provide :mrs_msgs/Float64ArrayStamped "bfa79f36371fee74e53d96afde61049b")


