;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::LkfStates)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'LkfStates (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::LKFSTATES")
  (make-package "MRS_MSGS::LKFSTATES"))

(in-package "ROS")
;;//! \htmlinclude LkfStates.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::LkfStates
  :super ros::object
  :slots (_header _pos _vel _acc _acc_i _acc_d _tilt _covariance _eigenvalues ))

(defmethod mrs_msgs::LkfStates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pos __pos) 0.0)
    ((:vel __vel) 0.0)
    ((:acc __acc) 0.0)
    ((:acc_i __acc_i) 0.0)
    ((:acc_d __acc_d) 0.0)
    ((:tilt __tilt) 0.0)
    ((:covariance __covariance) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:eigenvalues __eigenvalues) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pos (float __pos))
   (setq _vel (float __vel))
   (setq _acc (float __acc))
   (setq _acc_i (float __acc_i))
   (setq _acc_d (float __acc_d))
   (setq _tilt (float __tilt))
   (setq _covariance __covariance)
   (setq _eigenvalues __eigenvalues)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:acc_i
   (&optional __acc_i)
   (if __acc_i (setq _acc_i __acc_i)) _acc_i)
  (:acc_d
   (&optional __acc_d)
   (if __acc_d (setq _acc_d __acc_d)) _acc_d)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:eigenvalues
   (&optional __eigenvalues)
   (if __eigenvalues (setq _eigenvalues __eigenvalues)) _eigenvalues)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _pos
    8
    ;; float64 _vel
    8
    ;; float64 _acc
    8
    ;; float64 _acc_i
    8
    ;; float64 _acc_d
    8
    ;; float64 _tilt
    8
    ;; float64[6] _covariance
    (* 8    6)
    ;; float64[6] _eigenvalues
    (* 8    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_i
       (sys::poke _acc_i (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_d
       (sys::poke _acc_d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[6] _covariance
     (dotimes (i 6)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _eigenvalues
     (dotimes (i 6)
       (sys::poke (elt _eigenvalues i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _pos
     (setq _pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_i
     (setq _acc_i (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_d
     (setq _acc_d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tilt
     (setq _tilt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[6] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _eigenvalues
   (dotimes (i (length _eigenvalues))
     (setf (elt _eigenvalues i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get mrs_msgs::LkfStates :md5sum-) "14d93260f53a181dfa1b6786648828c5")
(setf (get mrs_msgs::LkfStates :datatype-) "mrs_msgs/LkfStates")
(setf (get mrs_msgs::LkfStates :definition-)
      "std_msgs/Header header
float64 pos
float64 vel
float64 acc
float64 acc_i
float64 acc_d
float64 tilt
float64[6] covariance
float64[6] eigenvalues

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



(provide :mrs_msgs/LkfStates "14d93260f53a181dfa1b6786648828c5")


