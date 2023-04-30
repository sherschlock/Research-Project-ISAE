;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ConstraintManagerDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ConstraintManagerDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CONSTRAINTMANAGERDIAGNOSTICS")
  (make-package "MRS_MSGS::CONSTRAINTMANAGERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude ConstraintManagerDiagnostics.msg.html


(defclass mrs_msgs::ConstraintManagerDiagnostics
  :super ros::object
  :slots (_stamp _loaded _available _current_name _current_values ))

(defmethod mrs_msgs::ConstraintManagerDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:loaded __loaded) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:available __available) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_name __current_name) "")
    ((:current_values __current_values) (instance mrs_msgs::DynamicsConstraints :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _loaded __loaded)
   (setq _available __available)
   (setq _current_name (string __current_name))
   (setq _current_values __current_values)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:loaded
   (&optional __loaded)
   (if __loaded (setq _loaded __loaded)) _loaded)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:current_name
   (&optional __current_name)
   (if __current_name (setq _current_name __current_name)) _current_name)
  (:current_values
   (&rest __current_values)
   (if (keywordp (car __current_values))
       (send* _current_values __current_values)
     (progn
       (if __current_values (setq _current_values (car __current_values)))
       _current_values)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string[] _loaded
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _loaded)) 4
    ;; string[] _available
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available)) 4
    ;; string _current_name
    4 (length _current_name)
    ;; mrs_msgs/DynamicsConstraints _current_values
    (send _current_values :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string[] _loaded
     (write-long (length _loaded) s)
     (dolist (elem _loaded)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _available
     (write-long (length _available) s)
     (dolist (elem _available)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _current_name
       (write-long (length _current_name) s) (princ _current_name s)
     ;; mrs_msgs/DynamicsConstraints _current_values
       (send _current_values :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _loaded
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _loaded (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _loaded i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _available
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _current_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/DynamicsConstraints _current_values
     (send _current_values :deserialize buf ptr-) (incf ptr- (send _current_values :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::ConstraintManagerDiagnostics :md5sum-) "4492970994a46fd3abfb96a139dcd930")
(setf (get mrs_msgs::ConstraintManagerDiagnostics :datatype-) "mrs_msgs/ConstraintManagerDiagnostics")
(setf (get mrs_msgs::ConstraintManagerDiagnostics :definition-)
      "# The diagnostics of the ConstraintManager.

time stamp

# The list of all loaded constraints.
string[] loaded

# The list of constraints which are available for the currently active state estimator.
string[] available

# The name of the current constraints.
string current_name

# The particular values of the current constraints.
# Beware, those might be overloaded by the current controller.
# Subscribe to \"control_manager/current_constraints\" for the
# true values.
mrs_msgs/DynamicsConstraints current_values

================================================================================
MSG: mrs_msgs/DynamicsConstraints
# UAV dynamics constraints

# speed: m/s
# acceleration: m/s^2
# jerk: m/s^3
# snap: m/s^4

# translational dynamics

float64 horizontal_speed
float64 horizontal_acceleration
float64 horizontal_jerk
float64 horizontal_snap

float64 vertical_ascending_speed
float64 vertical_ascending_acceleration
float64 vertical_ascending_jerk
float64 vertical_ascending_snap

float64 vertical_descending_speed
float64 vertical_descending_acceleration
float64 vertical_descending_jerk
float64 vertical_descending_snap

# heading

float64 heading_speed
float64 heading_acceleration
float64 heading_jerk
float64 heading_snap

# angular rates: rad/s

float64 roll_rate
float64 pitch_rate
float64 yaw_rate

# maximum tilt, rad
# max angle between body-3 and world-3 axes

float64 tilt

")



(provide :mrs_msgs/ConstraintManagerDiagnostics "4492970994a46fd3abfb96a139dcd930")


