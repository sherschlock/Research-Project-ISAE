;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ControlManagerDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ControlManagerDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CONTROLMANAGERDIAGNOSTICS")
  (make-package "MRS_MSGS::CONTROLMANAGERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude ControlManagerDiagnostics.msg.html


(defclass mrs_msgs::ControlManagerDiagnostics
  :super ros::object
  :slots (_stamp _uav_name _motors _flying_normally _rc_mode _active_tracker _tracker_status _active_controller _controller_status _available_controllers _available_trackers _human_switchable_controllers _human_switchable_trackers ))

(defmethod mrs_msgs::ControlManagerDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:uav_name __uav_name) "")
    ((:motors __motors) nil)
    ((:flying_normally __flying_normally) nil)
    ((:rc_mode __rc_mode) nil)
    ((:active_tracker __active_tracker) "")
    ((:tracker_status __tracker_status) (instance mrs_msgs::TrackerStatus :init))
    ((:active_controller __active_controller) "")
    ((:controller_status __controller_status) (instance mrs_msgs::ControllerStatus :init))
    ((:available_controllers __available_controllers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:available_trackers __available_trackers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:human_switchable_controllers __human_switchable_controllers) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:human_switchable_trackers __human_switchable_trackers) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _uav_name (string __uav_name))
   (setq _motors __motors)
   (setq _flying_normally __flying_normally)
   (setq _rc_mode __rc_mode)
   (setq _active_tracker (string __active_tracker))
   (setq _tracker_status __tracker_status)
   (setq _active_controller (string __active_controller))
   (setq _controller_status __controller_status)
   (setq _available_controllers __available_controllers)
   (setq _available_trackers __available_trackers)
   (setq _human_switchable_controllers __human_switchable_controllers)
   (setq _human_switchable_trackers __human_switchable_trackers)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:uav_name
   (&optional __uav_name)
   (if __uav_name (setq _uav_name __uav_name)) _uav_name)
  (:motors
   (&optional (__motors :null))
   (if (not (eq __motors :null)) (setq _motors __motors)) _motors)
  (:flying_normally
   (&optional (__flying_normally :null))
   (if (not (eq __flying_normally :null)) (setq _flying_normally __flying_normally)) _flying_normally)
  (:rc_mode
   (&optional (__rc_mode :null))
   (if (not (eq __rc_mode :null)) (setq _rc_mode __rc_mode)) _rc_mode)
  (:active_tracker
   (&optional __active_tracker)
   (if __active_tracker (setq _active_tracker __active_tracker)) _active_tracker)
  (:tracker_status
   (&rest __tracker_status)
   (if (keywordp (car __tracker_status))
       (send* _tracker_status __tracker_status)
     (progn
       (if __tracker_status (setq _tracker_status (car __tracker_status)))
       _tracker_status)))
  (:active_controller
   (&optional __active_controller)
   (if __active_controller (setq _active_controller __active_controller)) _active_controller)
  (:controller_status
   (&rest __controller_status)
   (if (keywordp (car __controller_status))
       (send* _controller_status __controller_status)
     (progn
       (if __controller_status (setq _controller_status (car __controller_status)))
       _controller_status)))
  (:available_controllers
   (&optional __available_controllers)
   (if __available_controllers (setq _available_controllers __available_controllers)) _available_controllers)
  (:available_trackers
   (&optional __available_trackers)
   (if __available_trackers (setq _available_trackers __available_trackers)) _available_trackers)
  (:human_switchable_controllers
   (&optional __human_switchable_controllers)
   (if __human_switchable_controllers (setq _human_switchable_controllers __human_switchable_controllers)) _human_switchable_controllers)
  (:human_switchable_trackers
   (&optional __human_switchable_trackers)
   (if __human_switchable_trackers (setq _human_switchable_trackers __human_switchable_trackers)) _human_switchable_trackers)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _uav_name
    4 (length _uav_name)
    ;; bool _motors
    1
    ;; bool _flying_normally
    1
    ;; bool _rc_mode
    1
    ;; string _active_tracker
    4 (length _active_tracker)
    ;; mrs_msgs/TrackerStatus _tracker_status
    (send _tracker_status :serialization-length)
    ;; string _active_controller
    4 (length _active_controller)
    ;; mrs_msgs/ControllerStatus _controller_status
    (send _controller_status :serialization-length)
    ;; string[] _available_controllers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available_controllers)) 4
    ;; string[] _available_trackers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available_trackers)) 4
    ;; bool[] _human_switchable_controllers
    (* 1    (length _human_switchable_controllers)) 4
    ;; bool[] _human_switchable_trackers
    (* 1    (length _human_switchable_trackers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _uav_name
       (write-long (length _uav_name) s) (princ _uav_name s)
     ;; bool _motors
       (if _motors (write-byte -1 s) (write-byte 0 s))
     ;; bool _flying_normally
       (if _flying_normally (write-byte -1 s) (write-byte 0 s))
     ;; bool _rc_mode
       (if _rc_mode (write-byte -1 s) (write-byte 0 s))
     ;; string _active_tracker
       (write-long (length _active_tracker) s) (princ _active_tracker s)
     ;; mrs_msgs/TrackerStatus _tracker_status
       (send _tracker_status :serialize s)
     ;; string _active_controller
       (write-long (length _active_controller) s) (princ _active_controller s)
     ;; mrs_msgs/ControllerStatus _controller_status
       (send _controller_status :serialize s)
     ;; string[] _available_controllers
     (write-long (length _available_controllers) s)
     (dolist (elem _available_controllers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _available_trackers
     (write-long (length _available_trackers) s)
     (dolist (elem _available_trackers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _human_switchable_controllers
     (write-long (length _human_switchable_controllers) s)
     (dotimes (i (length _human_switchable_controllers))
       (if (elt _human_switchable_controllers i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _human_switchable_trackers
     (write-long (length _human_switchable_trackers) s)
     (dotimes (i (length _human_switchable_trackers))
       (if (elt _human_switchable_trackers i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _uav_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _motors
     (setq _motors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _flying_normally
     (setq _flying_normally (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rc_mode
     (setq _rc_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _active_tracker
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_tracker (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/TrackerStatus _tracker_status
     (send _tracker_status :deserialize buf ptr-) (incf ptr- (send _tracker_status :serialization-length))
   ;; string _active_controller
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _active_controller (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/ControllerStatus _controller_status
     (send _controller_status :deserialize buf ptr-) (incf ptr- (send _controller_status :serialization-length))
   ;; string[] _available_controllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_controllers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available_controllers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _available_trackers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_trackers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available_trackers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _human_switchable_controllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _human_switchable_controllers (make-list n))
     (dotimes (i n)
     (setf (elt _human_switchable_controllers i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _human_switchable_trackers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _human_switchable_trackers (make-list n))
     (dotimes (i n)
     (setf (elt _human_switchable_trackers i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::ControlManagerDiagnostics :md5sum-) "739e0d9e7c44e1a1b9b450d58889c80b")
(setf (get mrs_msgs::ControlManagerDiagnostics :datatype-) "mrs_msgs/ControlManagerDiagnostics")
(setf (get mrs_msgs::ControlManagerDiagnostics :definition-)
      "# This reports on the state of the ControlManager and the currently active tracker and controller.

time stamp
string uav_name

# If the motors are enabled, in other words, if the output of the ControlManager can pass out.
bool motors

# True if the UAV is flying and no special case occurred (emergency land, failsafe, etc.).
bool flying_normally

# True if under the \"RC Joystick\" mode
bool rc_mode

# The name of the currently active tracker, as defined in the trackers.yaml in the \"mrs_uav_manager\" package.
string active_tracker

# The status of the currently active tracker.
mrs_msgs/TrackerStatus tracker_status

# The name of the currently active controller, as defined in the controllers.yaml in the \"mrs_uav_manager\" package.
string active_controller

# The status of the currently active controller.
mrs_msgs/ControllerStatus controller_status

# list of controllers and trackers that are loaded and can be switched to
string[] available_controllers
string[] available_trackers

# flags reporting on whether the trackers and controller should be \"human switchable\", meaning,
# whether people should be \"just\" able to switch to them, e.g., using a GUI or TUI interface
bool[] human_switchable_controllers
bool[] human_switchable_trackers

================================================================================
MSG: mrs_msgs/TrackerStatus
bool active
bool callbacks_enabled

# is true whenever the tracker is doing something
# in other words, not idling
bool have_goal

# is true only then a trajectory is being tracked
bool tracking_trajectory

int32 trajectory_length
int32 trajectory_idx

# only when following trajectory
# the current reference in the trajectory UNINTERPOLATED
mrs_msgs/ReferenceStamped trajectory_reference

================================================================================
MSG: mrs_msgs/ReferenceStamped
# A Positon+Heading reference with a header.

std_msgs/Header header
mrs_msgs/Reference reference

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

================================================================================
MSG: mrs_msgs/ControllerStatus
bool active

")



(provide :mrs_msgs/ControlManagerDiagnostics "739e0d9e7c44e1a1b9b450d58889c80b")


