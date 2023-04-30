;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GainManagerDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GainManagerDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GAINMANAGERDIAGNOSTICS")
  (make-package "MRS_MSGS::GAINMANAGERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude GainManagerDiagnostics.msg.html


(defclass mrs_msgs::GainManagerDiagnostics
  :super ros::object
  :slots (_stamp _loaded _available _current_name _current_values ))

(defmethod mrs_msgs::GainManagerDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:loaded __loaded) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:available __available) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:current_name __current_name) "")
    ((:current_values __current_values) (instance mrs_msgs::Se3Gains :init))
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
    ;; mrs_msgs/Se3Gains _current_values
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
     ;; mrs_msgs/Se3Gains _current_values
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
   ;; mrs_msgs/Se3Gains _current_values
     (send _current_values :deserialize buf ptr-) (incf ptr- (send _current_values :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::GainManagerDiagnostics :md5sum-) "24039f9a2906ae6c07ed9b74d96b96e7")
(setf (get mrs_msgs::GainManagerDiagnostics :datatype-) "mrs_msgs/GainManagerDiagnostics")
(setf (get mrs_msgs::GainManagerDiagnostics :definition-)
      "# The diagnostics of the GainManager.

time stamp

# The list of all loaded gains.
string[] loaded

# The list of gains which are available for the currently active state estimator.
string[] available

# The name of the current gains.
string current_name

# The particular values of the current gains.
mrs_msgs/Se3Gains current_values

================================================================================
MSG: mrs_msgs/Se3Gains
# This a set of gains for the SE(3) controller.

# Horizontal position gain.
float64 kpxy

# Horizontal velocity gain.
float64 kvxy

# Horizontal acceleration gain.
float64 kaxy

# Vertical position gain.
float64 kpz

# Vertical velocity gain.
float64 kvz

# Vertical acceleration gain.
float64 kaz

# Roll+pitch attitude gain.
float64 kqxy

# Body disturbance gain.
float64 kibxy

# Body disturbance estimator limit ([N]).
float64 kibxy_lim

# World disturbance gain.
float64 kiwxy

# World disturbance estimator limit  ([N]).
float64 kiwxy_lim

# Yaw attitude gain.
float64 kqz

# Mass estimator gain.
float64 km

# Mass estimator limit ([m]).
float64 km_lim

")



(provide :mrs_msgs/GainManagerDiagnostics "24039f9a2906ae6c07ed9b74d96b96e7")


