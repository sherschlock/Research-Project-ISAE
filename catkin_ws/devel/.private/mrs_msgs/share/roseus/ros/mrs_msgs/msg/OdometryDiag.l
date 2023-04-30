;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::OdometryDiag)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'OdometryDiag (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::ODOMETRYDIAG")
  (make-package "MRS_MSGS::ODOMETRYDIAG"))

(in-package "ROS")
;;//! \htmlinclude OdometryDiag.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::OdometryDiag
  :super ros::object
  :slots (_header _max_altitude _estimator_type _heading_type _altitude_type _available_lat_estimators _available_hdg_estimators _available_alt_estimators ))

(defmethod mrs_msgs::OdometryDiag
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:max_altitude __max_altitude) 0.0)
    ((:estimator_type __estimator_type) (instance mrs_msgs::EstimatorType :init))
    ((:heading_type __heading_type) (instance mrs_msgs::HeadingType :init))
    ((:altitude_type __altitude_type) (instance mrs_msgs::AltitudeType :init))
    ((:available_lat_estimators __available_lat_estimators) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:available_hdg_estimators __available_hdg_estimators) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:available_alt_estimators __available_alt_estimators) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _max_altitude (float __max_altitude))
   (setq _estimator_type __estimator_type)
   (setq _heading_type __heading_type)
   (setq _altitude_type __altitude_type)
   (setq _available_lat_estimators __available_lat_estimators)
   (setq _available_hdg_estimators __available_hdg_estimators)
   (setq _available_alt_estimators __available_alt_estimators)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:max_altitude
   (&optional __max_altitude)
   (if __max_altitude (setq _max_altitude __max_altitude)) _max_altitude)
  (:estimator_type
   (&rest __estimator_type)
   (if (keywordp (car __estimator_type))
       (send* _estimator_type __estimator_type)
     (progn
       (if __estimator_type (setq _estimator_type (car __estimator_type)))
       _estimator_type)))
  (:heading_type
   (&rest __heading_type)
   (if (keywordp (car __heading_type))
       (send* _heading_type __heading_type)
     (progn
       (if __heading_type (setq _heading_type (car __heading_type)))
       _heading_type)))
  (:altitude_type
   (&rest __altitude_type)
   (if (keywordp (car __altitude_type))
       (send* _altitude_type __altitude_type)
     (progn
       (if __altitude_type (setq _altitude_type (car __altitude_type)))
       _altitude_type)))
  (:available_lat_estimators
   (&optional __available_lat_estimators)
   (if __available_lat_estimators (setq _available_lat_estimators __available_lat_estimators)) _available_lat_estimators)
  (:available_hdg_estimators
   (&optional __available_hdg_estimators)
   (if __available_hdg_estimators (setq _available_hdg_estimators __available_hdg_estimators)) _available_hdg_estimators)
  (:available_alt_estimators
   (&optional __available_alt_estimators)
   (if __available_alt_estimators (setq _available_alt_estimators __available_alt_estimators)) _available_alt_estimators)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _max_altitude
    8
    ;; mrs_msgs/EstimatorType _estimator_type
    (send _estimator_type :serialization-length)
    ;; mrs_msgs/HeadingType _heading_type
    (send _heading_type :serialization-length)
    ;; mrs_msgs/AltitudeType _altitude_type
    (send _altitude_type :serialization-length)
    ;; string[] _available_lat_estimators
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available_lat_estimators)) 4
    ;; string[] _available_hdg_estimators
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available_hdg_estimators)) 4
    ;; string[] _available_alt_estimators
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _available_alt_estimators)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _max_altitude
       (sys::poke _max_altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; mrs_msgs/EstimatorType _estimator_type
       (send _estimator_type :serialize s)
     ;; mrs_msgs/HeadingType _heading_type
       (send _heading_type :serialize s)
     ;; mrs_msgs/AltitudeType _altitude_type
       (send _altitude_type :serialize s)
     ;; string[] _available_lat_estimators
     (write-long (length _available_lat_estimators) s)
     (dolist (elem _available_lat_estimators)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _available_hdg_estimators
     (write-long (length _available_hdg_estimators) s)
     (dolist (elem _available_hdg_estimators)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _available_alt_estimators
     (write-long (length _available_alt_estimators) s)
     (dolist (elem _available_alt_estimators)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _max_altitude
     (setq _max_altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; mrs_msgs/EstimatorType _estimator_type
     (send _estimator_type :deserialize buf ptr-) (incf ptr- (send _estimator_type :serialization-length))
   ;; mrs_msgs/HeadingType _heading_type
     (send _heading_type :deserialize buf ptr-) (incf ptr- (send _heading_type :serialization-length))
   ;; mrs_msgs/AltitudeType _altitude_type
     (send _altitude_type :deserialize buf ptr-) (incf ptr- (send _altitude_type :serialization-length))
   ;; string[] _available_lat_estimators
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_lat_estimators (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available_lat_estimators i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _available_hdg_estimators
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_hdg_estimators (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available_hdg_estimators i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _available_alt_estimators
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _available_alt_estimators (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _available_alt_estimators i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::OdometryDiag :md5sum-) "b3eedf113f8464b7a0aafebba055d3cd")
(setf (get mrs_msgs::OdometryDiag :datatype-) "mrs_msgs/OdometryDiag")
(setf (get mrs_msgs::OdometryDiag :definition-)
      "std_msgs/Header header
float64 max_altitude
mrs_msgs/EstimatorType estimator_type
mrs_msgs/HeadingType heading_type
mrs_msgs/AltitudeType altitude_type
string[] available_lat_estimators
string[] available_hdg_estimators
string[] available_alt_estimators

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
MSG: mrs_msgs/EstimatorType
uint8 OPTFLOW=0
uint8 GPS=1
uint8 OPTFLOWGPS=2
uint8 RTK=3
uint8 VIO=4
uint8 BRICK=5
uint8 T265=6
uint8 HECTOR=7
uint8 BRICKFLOW=8
uint8 VSLAM=9
uint8 ICP=10
uint8 ALOAM=11
uint8 ALOAMGARM=12
uint8 ALOAMREP=13
uint8 LIOSAM=14
uint8 UWB=15

uint8 TYPE_COUNT=16

string name
uint8 type

================================================================================
MSG: mrs_msgs/HeadingType
uint8 PIXHAWK=0
uint8 GYRO=1
uint8 COMPASS=2
uint8 OPTFLOW=3
uint8 HECTOR=4
uint8 BRICK=5
uint8 VIO=6
uint8 VSLAM=7
uint8 ICP=8
uint8 BRICKFLOW=9
uint8 ALOAM=10
uint8 ALOAMREP=11
uint8 LIOSAM=12

uint8 TYPE_COUNT=13

string name
uint8 type

================================================================================
MSG: mrs_msgs/AltitudeType
uint8 HEIGHT=0
uint8 PLANE=1
uint8 BRICK=2
uint8 VIO=3
uint8 ALOAM=4
uint8 ALOAMGARM=5
uint8 ALOAMREP=6
uint8 BARO=7
uint8 RTK=8
uint8 LIOSAM=9

uint8 TYPE_COUNT=10

string name
uint8 type

")



(provide :mrs_msgs/OdometryDiag "b3eedf113f8464b7a0aafebba055d3cd")


