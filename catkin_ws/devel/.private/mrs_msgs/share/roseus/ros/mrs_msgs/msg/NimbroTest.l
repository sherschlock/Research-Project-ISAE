;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::NimbroTest)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'NimbroTest (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::NIMBROTEST")
  (make-package "MRS_MSGS::NIMBROTEST"))

(in-package "ROS")
;;//! \htmlinclude NimbroTest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::NimbroTest
  :super ros::object
  :slots (_header _uav_name _payload ))

(defmethod mrs_msgs::NimbroTest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uav_name __uav_name) "")
    ((:payload __payload) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _uav_name (string __uav_name))
   (setq _payload __payload)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:uav_name
   (&optional __uav_name)
   (if __uav_name (setq _uav_name __uav_name)) _uav_name)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _uav_name
    4 (length _uav_name)
    ;; float64[] _payload
    (* 8    (length _payload)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _uav_name
       (write-long (length _uav_name) s) (princ _uav_name s)
     ;; float64[] _payload
     (write-long (length _payload) s)
     (dotimes (i (length _payload))
       (sys::poke (elt _payload i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _uav_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _payload
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _payload (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _payload i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::NimbroTest :md5sum-) "0b6695bff0b9f7df207ad44c822dbf7a")
(setf (get mrs_msgs::NimbroTest :datatype-) "mrs_msgs/NimbroTest")
(setf (get mrs_msgs::NimbroTest :definition-)
      "std_msgs/Header header
string uav_name
float64[] payload



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



(provide :mrs_msgs/NimbroTest "0b6695bff0b9f7df207ad44c822dbf7a")


