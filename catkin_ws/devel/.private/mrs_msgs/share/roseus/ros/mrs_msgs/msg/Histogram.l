;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Histogram)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Histogram (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::HISTOGRAM")
  (make-package "MRS_MSGS::HISTOGRAM"))

(in-package "ROS")
;;//! \htmlinclude Histogram.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Histogram
  :super ros::object
  :slots (_header _unit _bin_size _bin_min _bin_max _bin_mark _bins ))

(defmethod mrs_msgs::Histogram
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:unit __unit) "")
    ((:bin_size __bin_size) 0.0)
    ((:bin_min __bin_min) 0.0)
    ((:bin_max __bin_max) 0.0)
    ((:bin_mark __bin_mark) 0)
    ((:bins __bins) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _unit (string __unit))
   (setq _bin_size (float __bin_size))
   (setq _bin_min (float __bin_min))
   (setq _bin_max (float __bin_max))
   (setq _bin_mark (round __bin_mark))
   (setq _bins __bins)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:bin_size
   (&optional __bin_size)
   (if __bin_size (setq _bin_size __bin_size)) _bin_size)
  (:bin_min
   (&optional __bin_min)
   (if __bin_min (setq _bin_min __bin_min)) _bin_min)
  (:bin_max
   (&optional __bin_max)
   (if __bin_max (setq _bin_max __bin_max)) _bin_max)
  (:bin_mark
   (&optional __bin_mark)
   (if __bin_mark (setq _bin_mark __bin_mark)) _bin_mark)
  (:bins
   (&optional __bins)
   (if __bins (setq _bins __bins)) _bins)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _unit
    4 (length _unit)
    ;; float64 _bin_size
    8
    ;; float64 _bin_min
    8
    ;; float64 _bin_max
    8
    ;; uint32 _bin_mark
    4
    ;; float32[] _bins
    (* 4    (length _bins)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;; float64 _bin_size
       (sys::poke _bin_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bin_min
       (sys::poke _bin_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bin_max
       (sys::poke _bin_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _bin_mark
       (write-long _bin_mark s)
     ;; float32[] _bins
     (write-long (length _bins) s)
     (dotimes (i (length _bins))
       (sys::poke (elt _bins i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _bin_size
     (setq _bin_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bin_min
     (setq _bin_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bin_max
     (setq _bin_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _bin_mark
     (setq _bin_mark (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _bins
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bins (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bins i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::Histogram :md5sum-) "d299fa208b702809f19d8557835b7559")
(setf (get mrs_msgs::Histogram :datatype-) "mrs_msgs/Histogram")
(setf (get mrs_msgs::Histogram :definition-)
      "# This is a debug message for the mrs_bumper package.
# It contains a histogram of depth values from a depthmap
# image, if the depth sensor is used for obstacle detection.

# Time at which the data in this message was generated, coordinate frame ID.
std_msgs/Header header

# Unit of distance measurement in the histogram (e.g. \"mm\" for millimeters\").
string    unit

# Structure of the histogram.
float64   bin_size
float64   bin_min
float64   bin_max

# The mark at which an obstacle was detected (if equal to the number of bins,
# no obstacle was detected).
uint32    bin_mark

# Bin values of the histogram.
float32[] bins

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



(provide :mrs_msgs/Histogram "d299fa208b702809f19d8557835b7559")


