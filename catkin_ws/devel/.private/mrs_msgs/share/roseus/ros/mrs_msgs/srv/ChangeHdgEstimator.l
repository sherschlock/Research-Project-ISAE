;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ChangeHdgEstimator)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ChangeHdgEstimator (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CHANGEHDGESTIMATOR")
  (make-package "MRS_MSGS::CHANGEHDGESTIMATOR"))
(unless (find-package "MRS_MSGS::CHANGEHDGESTIMATORREQUEST")
  (make-package "MRS_MSGS::CHANGEHDGESTIMATORREQUEST"))
(unless (find-package "MRS_MSGS::CHANGEHDGESTIMATORRESPONSE")
  (make-package "MRS_MSGS::CHANGEHDGESTIMATORRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::ChangeHdgEstimatorRequest
  :super ros::object
  :slots (_estimator_type ))

(defmethod mrs_msgs::ChangeHdgEstimatorRequest
  (:init
   (&key
    ((:estimator_type __estimator_type) (instance mrs_msgs::HeadingType :init))
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
    ;; mrs_msgs/HeadingType _estimator_type
    (send _estimator_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/HeadingType _estimator_type
       (send _estimator_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/HeadingType _estimator_type
     (send _estimator_type :deserialize buf ptr-) (incf ptr- (send _estimator_type :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ChangeHdgEstimatorResponse
  :super ros::object
  :slots (_success _message _estimator_type ))

(defmethod mrs_msgs::ChangeHdgEstimatorResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:estimator_type __estimator_type) (instance mrs_msgs::HeadingType :init))
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
    ;; mrs_msgs/HeadingType _estimator_type
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
     ;; mrs_msgs/HeadingType _estimator_type
       (send _estimator_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mrs_msgs/HeadingType _estimator_type
     (send _estimator_type :deserialize buf ptr-) (incf ptr- (send _estimator_type :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::ChangeHdgEstimator
  :super ros::object
  :slots ())

(setf (get mrs_msgs::ChangeHdgEstimator :md5sum-) "96e3923e6e8cb71c18fdec0035178d67")
(setf (get mrs_msgs::ChangeHdgEstimator :datatype-) "mrs_msgs/ChangeHdgEstimator")
(setf (get mrs_msgs::ChangeHdgEstimator :request) mrs_msgs::ChangeHdgEstimatorRequest)
(setf (get mrs_msgs::ChangeHdgEstimator :response) mrs_msgs::ChangeHdgEstimatorResponse)

(defmethod mrs_msgs::ChangeHdgEstimatorRequest
  (:response () (instance mrs_msgs::ChangeHdgEstimatorResponse :init)))

(setf (get mrs_msgs::ChangeHdgEstimatorRequest :md5sum-) "96e3923e6e8cb71c18fdec0035178d67")
(setf (get mrs_msgs::ChangeHdgEstimatorRequest :datatype-) "mrs_msgs/ChangeHdgEstimatorRequest")
(setf (get mrs_msgs::ChangeHdgEstimatorRequest :definition-)
      "mrs_msgs/HeadingType estimator_type

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
---
bool success
string message
mrs_msgs/HeadingType estimator_type


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
")

(setf (get mrs_msgs::ChangeHdgEstimatorResponse :md5sum-) "96e3923e6e8cb71c18fdec0035178d67")
(setf (get mrs_msgs::ChangeHdgEstimatorResponse :datatype-) "mrs_msgs/ChangeHdgEstimatorResponse")
(setf (get mrs_msgs::ChangeHdgEstimatorResponse :definition-)
      "mrs_msgs/HeadingType estimator_type

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
---
bool success
string message
mrs_msgs/HeadingType estimator_type


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
")



(provide :mrs_msgs/ChangeHdgEstimator "96e3923e6e8cb71c18fdec0035178d67")


