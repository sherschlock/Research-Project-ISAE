;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Sphere)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Sphere (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SPHERE")
  (make-package "MRS_MSGS::SPHERE"))

(in-package "ROS")
;;//! \htmlinclude Sphere.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::Sphere
  :super ros::object
  :slots (_header _position _radius ))

(defmethod mrs_msgs::Sphere
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _radius (float __radius))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Sphere :md5sum-) "438755457f26e7227b578954cd7c0b0b")
(setf (get mrs_msgs::Sphere :datatype-) "mrs_msgs/Sphere")
(setf (get mrs_msgs::Sphere :definition-)
      "std_msgs/Header header

# position of the sphere's center in the coordinate frame, specified in the header
geometry_msgs/Point position

# radius of the sphere
float64 radius

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mrs_msgs/Sphere "438755457f26e7227b578954cd7c0b0b")


