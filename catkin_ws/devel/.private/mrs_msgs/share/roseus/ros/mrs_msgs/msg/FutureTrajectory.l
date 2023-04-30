;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::FutureTrajectory)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'FutureTrajectory (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::FUTURETRAJECTORY")
  (make-package "MRS_MSGS::FUTURETRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude FutureTrajectory.msg.html


(defclass mrs_msgs::FutureTrajectory
  :super ros::object
  :slots (_stamp _uav_name _priority _collision_avoidance _points ))

(defmethod mrs_msgs::FutureTrajectory
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:uav_name __uav_name) "")
    ((:priority __priority) 0)
    ((:collision_avoidance __collision_avoidance) nil)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _uav_name (string __uav_name))
   (setq _priority (round __priority))
   (setq _collision_avoidance __collision_avoidance)
   (setq _points __points)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:uav_name
   (&optional __uav_name)
   (if __uav_name (setq _uav_name __uav_name)) _uav_name)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:collision_avoidance
   (&optional (__collision_avoidance :null))
   (if (not (eq __collision_avoidance :null)) (setq _collision_avoidance __collision_avoidance)) _collision_avoidance)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _uav_name
    4 (length _uav_name)
    ;; int32 _priority
    4
    ;; bool _collision_avoidance
    1
    ;; mrs_msgs/FuturePoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _uav_name
       (write-long (length _uav_name) s) (princ _uav_name s)
     ;; int32 _priority
       (write-long _priority s)
     ;; bool _collision_avoidance
       (if _collision_avoidance (write-byte -1 s) (write-byte 0 s))
     ;; mrs_msgs/FuturePoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _uav_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _collision_avoidance
     (setq _collision_avoidance (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mrs_msgs/FuturePoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance mrs_msgs::FuturePoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::FutureTrajectory :md5sum-) "f0fea67fc418564772e559179612541d")
(setf (get mrs_msgs::FutureTrajectory :datatype-) "mrs_msgs/FutureTrajectory")
(setf (get mrs_msgs::FutureTrajectory :definition-)
      "time stamp
string uav_name
int32 priority
bool collision_avoidance
FuturePoint[] points 

================================================================================
MSG: mrs_msgs/FuturePoint
float32 x
float32 y
float32 z

")



(provide :mrs_msgs/FutureTrajectory "f0fea67fc418564772e559179612541d")


