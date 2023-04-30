;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GazeboDeleteModel)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GazeboDeleteModel (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GAZEBODELETEMODEL")
  (make-package "MRS_MSGS::GAZEBODELETEMODEL"))
(unless (find-package "MRS_MSGS::GAZEBODELETEMODELREQUEST")
  (make-package "MRS_MSGS::GAZEBODELETEMODELREQUEST"))
(unless (find-package "MRS_MSGS::GAZEBODELETEMODELRESPONSE")
  (make-package "MRS_MSGS::GAZEBODELETEMODELRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::GazeboDeleteModelRequest
  :super ros::object
  :slots (_model_name ))

(defmethod mrs_msgs::GazeboDeleteModelRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::GazeboDeleteModelResponse
  :super ros::object
  :slots (_ok ))

(defmethod mrs_msgs::GazeboDeleteModelResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mrs_msgs::GazeboDeleteModel
  :super ros::object
  :slots ())

(setf (get mrs_msgs::GazeboDeleteModel :md5sum-) "7fbee826e882b5a106f0e80ba4b38712")
(setf (get mrs_msgs::GazeboDeleteModel :datatype-) "mrs_msgs/GazeboDeleteModel")
(setf (get mrs_msgs::GazeboDeleteModel :request) mrs_msgs::GazeboDeleteModelRequest)
(setf (get mrs_msgs::GazeboDeleteModel :response) mrs_msgs::GazeboDeleteModelResponse)

(defmethod mrs_msgs::GazeboDeleteModelRequest
  (:response () (instance mrs_msgs::GazeboDeleteModelResponse :init)))

(setf (get mrs_msgs::GazeboDeleteModelRequest :md5sum-) "7fbee826e882b5a106f0e80ba4b38712")
(setf (get mrs_msgs::GazeboDeleteModelRequest :datatype-) "mrs_msgs/GazeboDeleteModelRequest")
(setf (get mrs_msgs::GazeboDeleteModelRequest :definition-)
      "# A service to delete a model in a Gazebo simulation
# using the mrs_gazebo_ros_interface package.

# Name of the model to be deleted.
string model_name

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")

(setf (get mrs_msgs::GazeboDeleteModelResponse :md5sum-) "7fbee826e882b5a106f0e80ba4b38712")
(setf (get mrs_msgs::GazeboDeleteModelResponse :datatype-) "mrs_msgs/GazeboDeleteModelResponse")
(setf (get mrs_msgs::GazeboDeleteModelResponse :definition-)
      "# A service to delete a model in a Gazebo simulation
# using the mrs_gazebo_ros_interface package.

# Name of the model to be deleted.
string model_name

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")



(provide :mrs_msgs/GazeboDeleteModel "7fbee826e882b5a106f0e80ba4b38712")


