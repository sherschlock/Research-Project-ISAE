;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::MpcTrackerDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'MpcTrackerDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::MPCTRACKERDIAGNOSTICS")
  (make-package "MRS_MSGS::MPCTRACKERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude MpcTrackerDiagnostics.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::MpcTrackerDiagnostics
  :super ros::object
  :slots (_header _uav_name _active _collision_avoidance_active _avoiding_collision _avoidance_active_uavs _setpoint ))

(defmethod mrs_msgs::MpcTrackerDiagnostics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uav_name __uav_name) "")
    ((:active __active) nil)
    ((:collision_avoidance_active __collision_avoidance_active) nil)
    ((:avoiding_collision __avoiding_collision) nil)
    ((:avoidance_active_uavs __avoidance_active_uavs) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:setpoint __setpoint) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _uav_name (string __uav_name))
   (setq _active __active)
   (setq _collision_avoidance_active __collision_avoidance_active)
   (setq _avoiding_collision __avoiding_collision)
   (setq _avoidance_active_uavs __avoidance_active_uavs)
   (setq _setpoint __setpoint)
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
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:collision_avoidance_active
   (&optional (__collision_avoidance_active :null))
   (if (not (eq __collision_avoidance_active :null)) (setq _collision_avoidance_active __collision_avoidance_active)) _collision_avoidance_active)
  (:avoiding_collision
   (&optional (__avoiding_collision :null))
   (if (not (eq __avoiding_collision :null)) (setq _avoiding_collision __avoiding_collision)) _avoiding_collision)
  (:avoidance_active_uavs
   (&optional __avoidance_active_uavs)
   (if __avoidance_active_uavs (setq _avoidance_active_uavs __avoidance_active_uavs)) _avoidance_active_uavs)
  (:setpoint
   (&rest __setpoint)
   (if (keywordp (car __setpoint))
       (send* _setpoint __setpoint)
     (progn
       (if __setpoint (setq _setpoint (car __setpoint)))
       _setpoint)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _uav_name
    4 (length _uav_name)
    ;; bool _active
    1
    ;; bool _collision_avoidance_active
    1
    ;; bool _avoiding_collision
    1
    ;; string[] _avoidance_active_uavs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _avoidance_active_uavs)) 4
    ;; geometry_msgs/Pose _setpoint
    (send _setpoint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _uav_name
       (write-long (length _uav_name) s) (princ _uav_name s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; bool _collision_avoidance_active
       (if _collision_avoidance_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _avoiding_collision
       (if _avoiding_collision (write-byte -1 s) (write-byte 0 s))
     ;; string[] _avoidance_active_uavs
     (write-long (length _avoidance_active_uavs) s)
     (dolist (elem _avoidance_active_uavs)
       (write-long (length elem) s) (princ elem s)
       )
     ;; geometry_msgs/Pose _setpoint
       (send _setpoint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _uav_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _collision_avoidance_active
     (setq _collision_avoidance_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _avoiding_collision
     (setq _avoiding_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _avoidance_active_uavs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avoidance_active_uavs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _avoidance_active_uavs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; geometry_msgs/Pose _setpoint
     (send _setpoint :deserialize buf ptr-) (incf ptr- (send _setpoint :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::MpcTrackerDiagnostics :md5sum-) "3fcb4d421dc34e3a114f4a7a3e1f6ee8")
(setf (get mrs_msgs::MpcTrackerDiagnostics :datatype-) "mrs_msgs/MpcTrackerDiagnostics")
(setf (get mrs_msgs::MpcTrackerDiagnostics :definition-)
      "Header header

string uav_name
bool active
bool collision_avoidance_active
bool avoiding_collision
string[] avoidance_active_uavs
geometry_msgs/Pose setpoint

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



(provide :mrs_msgs/MpcTrackerDiagnostics "3fcb4d421dc34e3a114f4a7a3e1f6ee8")


