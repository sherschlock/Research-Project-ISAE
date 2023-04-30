;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::MavrosDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'MavrosDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::MAVROSDIAGNOSTICS")
  (make-package "MRS_MSGS::MAVROSDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude MavrosDiagnostics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::MavrosDiagnostics
  :super ros::object
  :slots (_header _state _heartbeat _system _gps _battery ))

(defmethod mrs_msgs::MavrosDiagnostics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance mrs_msgs::MavrosState :init))
    ((:heartbeat __heartbeat) (instance mrs_msgs::HeartbeatDiagnostics :init))
    ((:system __system) (instance mrs_msgs::SystemDiagnostics :init))
    ((:gps __gps) (instance mrs_msgs::GpsDiagnostics :init))
    ((:battery __battery) (instance mrs_msgs::BatteryDiagnostics :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _heartbeat __heartbeat)
   (setq _system __system)
   (setq _gps __gps)
   (setq _battery __battery)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:heartbeat
   (&rest __heartbeat)
   (if (keywordp (car __heartbeat))
       (send* _heartbeat __heartbeat)
     (progn
       (if __heartbeat (setq _heartbeat (car __heartbeat)))
       _heartbeat)))
  (:system
   (&rest __system)
   (if (keywordp (car __system))
       (send* _system __system)
     (progn
       (if __system (setq _system (car __system)))
       _system)))
  (:gps
   (&rest __gps)
   (if (keywordp (car __gps))
       (send* _gps __gps)
     (progn
       (if __gps (setq _gps (car __gps)))
       _gps)))
  (:battery
   (&rest __battery)
   (if (keywordp (car __battery))
       (send* _battery __battery)
     (progn
       (if __battery (setq _battery (car __battery)))
       _battery)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mrs_msgs/MavrosState _state
    (send _state :serialization-length)
    ;; mrs_msgs/HeartbeatDiagnostics _heartbeat
    (send _heartbeat :serialization-length)
    ;; mrs_msgs/SystemDiagnostics _system
    (send _system :serialization-length)
    ;; mrs_msgs/GpsDiagnostics _gps
    (send _gps :serialization-length)
    ;; mrs_msgs/BatteryDiagnostics _battery
    (send _battery :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mrs_msgs/MavrosState _state
       (send _state :serialize s)
     ;; mrs_msgs/HeartbeatDiagnostics _heartbeat
       (send _heartbeat :serialize s)
     ;; mrs_msgs/SystemDiagnostics _system
       (send _system :serialize s)
     ;; mrs_msgs/GpsDiagnostics _gps
       (send _gps :serialize s)
     ;; mrs_msgs/BatteryDiagnostics _battery
       (send _battery :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mrs_msgs/MavrosState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; mrs_msgs/HeartbeatDiagnostics _heartbeat
     (send _heartbeat :deserialize buf ptr-) (incf ptr- (send _heartbeat :serialization-length))
   ;; mrs_msgs/SystemDiagnostics _system
     (send _system :deserialize buf ptr-) (incf ptr- (send _system :serialization-length))
   ;; mrs_msgs/GpsDiagnostics _gps
     (send _gps :deserialize buf ptr-) (incf ptr- (send _gps :serialization-length))
   ;; mrs_msgs/BatteryDiagnostics _battery
     (send _battery :deserialize buf ptr-) (incf ptr- (send _battery :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::MavrosDiagnostics :md5sum-) "b71f6da90e9d066eadc58c626133b5fe")
(setf (get mrs_msgs::MavrosDiagnostics :datatype-) "mrs_msgs/MavrosDiagnostics")
(setf (get mrs_msgs::MavrosDiagnostics :definition-)
      "std_msgs/Header header
mrs_msgs/MavrosState state
mrs_msgs/HeartbeatDiagnostics heartbeat
mrs_msgs/SystemDiagnostics system
mrs_msgs/GpsDiagnostics gps
mrs_msgs/BatteryDiagnostics battery

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
MSG: mrs_msgs/MavrosState
bool armed
bool offboard

================================================================================
MSG: mrs_msgs/HeartbeatDiagnostics
string mode

================================================================================
MSG: mrs_msgs/SystemDiagnostics
float32 cpu_load
uint32 errors_comm

================================================================================
MSG: mrs_msgs/GpsDiagnostics
uint8 satellites_visible
uint8 fix_type
float32 eph
float32 epv

================================================================================
MSG: mrs_msgs/BatteryDiagnostics
float32 voltage
float32 current

")



(provide :mrs_msgs/MavrosDiagnostics "b71f6da90e9d066eadc58c626133b5fe")


