;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ChangeEstimator)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ChangeEstimator (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CHANGEESTIMATOR")
  (make-package "MRS_MSGS::CHANGEESTIMATOR"))
(unless (find-package "MRS_MSGS::CHANGEESTIMATORREQUEST")
  (make-package "MRS_MSGS::CHANGEESTIMATORREQUEST"))
(unless (find-package "MRS_MSGS::CHANGEESTIMATORRESPONSE")
  (make-package "MRS_MSGS::CHANGEESTIMATORRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ChangeEstimatorRequest
  :super ros::object
  :slots (_estimator_type ))

(defmethod mrs_msgs::ChangeEstimatorRequest
  (:init
   (&key
    ((:estimator_type __estimator_type) (instance mrs_msgs::EstimatorType :init))
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
    ;; mrs_msgs/EstimatorType _estimator_type
    (send _estimator_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/EstimatorType _estimator_type
       (send _estimator_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/EstimatorType _estimator_type
     (send _estimator_type :deserialize buf ptr-) (incf ptr- (send _estimator_type :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ChangeEstimatorResponse
  :super ros::object
  :slots (_success _message _estimator_type ))

(defmethod mrs_msgs::ChangeEstimatorResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:estimator_type __estimator_type) (instance mrs_msgs::EstimatorType :init))
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
    ;; mrs_msgs/EstimatorType _estimator_type
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
     ;; mrs_msgs/EstimatorType _estimator_type
       (send _estimator_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/EstimatorType _estimator_type
     (send _estimator_type :deserialize buf ptr-) (incf ptr- (send _estimator_type :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ChangeEstimator
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ChangeEstimator :md5sum-) "6a9b653bad05a218abe443442564de9a")
(setf (get mrs_msgs::ChangeEstimator :datatype-) "mrs_msgs/ChangeEstimator")
(setf (get mrs_msgs::ChangeEstimator :request) mrs_msgs::ChangeEstimatorRequest)
(setf (get mrs_msgs::ChangeEstimator :response) mrs_msgs::ChangeEstimatorResponse)

(defmethod mrs_msgs::ChangeEstimatorRequest
  (:response () (instance mrs_msgs::ChangeEstimatorResponse :init)))

(setf (get mrs_msgs::ChangeEstimatorRequest :md5sum-) "6a9b653bad05a218abe443442564de9a")
(setf (get mrs_msgs::ChangeEstimatorRequest :datatype-) "mrs_msgs/ChangeEstimatorRequest")
(setf (get mrs_msgs::ChangeEstimatorRequest :definition-)
      "mrs_msgs/EstimatorType estimator_type

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
---
bool success
string message
mrs_msgs/EstimatorType estimator_type


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
")

(setf (get mrs_msgs::ChangeEstimatorResponse :md5sum-) "6a9b653bad05a218abe443442564de9a")
(setf (get mrs_msgs::ChangeEstimatorResponse :datatype-) "mrs_msgs/ChangeEstimatorResponse")
(setf (get mrs_msgs::ChangeEstimatorResponse :definition-)
      "mrs_msgs/EstimatorType estimator_type

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
---
bool success
string message
mrs_msgs/EstimatorType estimator_type


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
")



(provide :mrs_msgs/ChangeEstimator "6a9b653bad05a218abe443442564de9a")


