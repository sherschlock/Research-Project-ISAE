;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::DynamicsConstraintsSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'DynamicsConstraintsSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::DYNAMICSCONSTRAINTSSRV")
  (make-package "MRS_MSGS::DYNAMICSCONSTRAINTSSRV"))
(unless (find-package "MRS_MSGS::DYNAMICSCONSTRAINTSSRVREQUEST")
  (make-package "MRS_MSGS::DYNAMICSCONSTRAINTSSRVREQUEST"))
(unless (find-package "MRS_MSGS::DYNAMICSCONSTRAINTSSRVRESPONSE")
  (make-package "MRS_MSGS::DYNAMICSCONSTRAINTSSRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::DynamicsConstraintsSrvRequest
  :super ros::object
  :slots (_constraints ))

(defmethod mrs_msgs::DynamicsConstraintsSrvRequest
  (:init
   (&key
    ((:constraints __constraints) (instance mrs_msgs::DynamicsConstraints :init))
    )
   (send-super :init)
   (setq _constraints __constraints)
   self)
  (:constraints
   (&rest __constraints)
   (if (keywordp (car __constraints))
       (send* _constraints __constraints)
     (progn
       (if __constraints (setq _constraints (car __constraints)))
       _constraints)))
  (:serialization-length
   ()
   (+
    ;; mrs_msgs/DynamicsConstraints _constraints
    (send _constraints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/DynamicsConstraints _constraints
       (send _constraints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/DynamicsConstraints _constraints
     (send _constraints :deserialize buf ptr-) (incf ptr- (send _constraints :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::DynamicsConstraintsSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::DynamicsConstraintsSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::DynamicsConstraintsSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::DynamicsConstraintsSrv :md5sum-) "6a22936cf27079c2902612f5c225d1df")
(setf (get mrs_msgs::DynamicsConstraintsSrv :datatype-) "mrs_msgs/DynamicsConstraintsSrv")
(setf (get mrs_msgs::DynamicsConstraintsSrv :request) mrs_msgs::DynamicsConstraintsSrvRequest)
(setf (get mrs_msgs::DynamicsConstraintsSrv :response) mrs_msgs::DynamicsConstraintsSrvResponse)

(defmethod mrs_msgs::DynamicsConstraintsSrvRequest
  (:response () (instance mrs_msgs::DynamicsConstraintsSrvResponse :init)))

(setf (get mrs_msgs::DynamicsConstraintsSrvRequest :md5sum-) "6a22936cf27079c2902612f5c225d1df")
(setf (get mrs_msgs::DynamicsConstraintsSrvRequest :datatype-) "mrs_msgs/DynamicsConstraintsSrvRequest")
(setf (get mrs_msgs::DynamicsConstraintsSrvRequest :definition-)
      "mrs_msgs/DynamicsConstraints constraints

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
---
bool success
string message

")

(setf (get mrs_msgs::DynamicsConstraintsSrvResponse :md5sum-) "6a22936cf27079c2902612f5c225d1df")
(setf (get mrs_msgs::DynamicsConstraintsSrvResponse :datatype-) "mrs_msgs/DynamicsConstraintsSrvResponse")
(setf (get mrs_msgs::DynamicsConstraintsSrvResponse :definition-)
      "mrs_msgs/DynamicsConstraints constraints

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
---
bool success
string message

")



(provide :mrs_msgs/DynamicsConstraintsSrv "6a22936cf27079c2902612f5c225d1df")


