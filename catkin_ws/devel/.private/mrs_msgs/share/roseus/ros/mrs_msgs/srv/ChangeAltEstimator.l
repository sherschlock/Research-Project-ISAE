;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ChangeAltEstimator)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ChangeAltEstimator (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CHANGEALTESTIMATOR")
  (make-package "MRS_MSGS::CHANGEALTESTIMATOR"))
(unless (find-package "MRS_MSGS::CHANGEALTESTIMATORREQUEST")
  (make-package "MRS_MSGS::CHANGEALTESTIMATORREQUEST"))
(unless (find-package "MRS_MSGS::CHANGEALTESTIMATORRESPONSE")
  (make-package "MRS_MSGS::CHANGEALTESTIMATORRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ChangeAltEstimatorRequest
  :super ros::object
  :slots (_estimator_type ))

(defmethod mrs_msgs::ChangeAltEstimatorRequest
  (:init
   (&key
    ((:estimator_type __estimator_type) (instance mrs_msgs::AltitudeType :init))
    )
   (send-super :init)
   (setq _estimator_type __estimator_type)
   self)
  (:estimator_type
   (&rest __estimator_type)
   (if (keywordp (car __estimator_type))
       (send* _estimator_type __estimator_type)
     (progn
       (if __estimator_type (setq _estimator_type (car __estimator_type)))
       _estimator_type)))
  (:serialization-length
   ()
   (+
    ;; mrs_msgs/AltitudeType _estimator_type
    (send _estimator_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/AltitudeType _estimator_type
       (send _estimator_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/AltitudeType _estimator_type
     (send _estimator_type :deserialize buf ptr-) (incf ptr- (send _estimator_type :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ChangeAltEstimatorResponse
  :super ros::object
  :slots (_success _message _estimator_type ))

(defmethod mrs_msgs::ChangeAltEstimatorResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:estimator_type __estimator_type) (instance mrs_msgs::AltitudeType :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _estimator_type __estimator_type)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:estimator_type
   (&rest __estimator_type)
   (if (keywordp (car __estimator_type))
       (send* _estimator_type __estimator_type)
     (progn
       (if __estimator_type (setq _estimator_type (car __estimator_type)))
       _estimator_type)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; mrs_msgs/AltitudeType _estimator_type
    (send _estimator_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; mrs_msgs/AltitudeType _estimator_type
       (send _estimator_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/AltitudeType _estimator_type
     (send _estimator_type :deserialize buf ptr-) (incf ptr- (send _estimator_type :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ChangeAltEstimator
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ChangeAltEstimator :md5sum-) "d44d7ecd4f387249481ad597e7864694")
(setf (get mrs_msgs::ChangeAltEstimator :datatype-) "mrs_msgs/ChangeAltEstimator")
(setf (get mrs_msgs::ChangeAltEstimator :request) mrs_msgs::ChangeAltEstimatorRequest)
(setf (get mrs_msgs::ChangeAltEstimator :response) mrs_msgs::ChangeAltEstimatorResponse)

(defmethod mrs_msgs::ChangeAltEstimatorRequest
  (:response () (instance mrs_msgs::ChangeAltEstimatorResponse :init)))

(setf (get mrs_msgs::ChangeAltEstimatorRequest :md5sum-) "d44d7ecd4f387249481ad597e7864694")
(setf (get mrs_msgs::ChangeAltEstimatorRequest :datatype-) "mrs_msgs/ChangeAltEstimatorRequest")
(setf (get mrs_msgs::ChangeAltEstimatorRequest :definition-)
      "mrs_msgs/AltitudeType estimator_type

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
---
bool success
string message
mrs_msgs/AltitudeType estimator_type


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

(setf (get mrs_msgs::ChangeAltEstimatorResponse :md5sum-) "d44d7ecd4f387249481ad597e7864694")
(setf (get mrs_msgs::ChangeAltEstimatorResponse :datatype-) "mrs_msgs/ChangeAltEstimatorResponse")
(setf (get mrs_msgs::ChangeAltEstimatorResponse :definition-)
      "mrs_msgs/AltitudeType estimator_type

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
---
bool success
string message
mrs_msgs/AltitudeType estimator_type


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



(provide :mrs_msgs/ChangeAltEstimator "d44d7ecd4f387249481ad597e7864694")


