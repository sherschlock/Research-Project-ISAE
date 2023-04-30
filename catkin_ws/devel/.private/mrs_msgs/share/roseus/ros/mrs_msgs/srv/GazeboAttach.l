;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GazeboAttach)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GazeboAttach (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GAZEBOATTACH")
  (make-package "MRS_MSGS::GAZEBOATTACH"))
(unless (find-package "MRS_MSGS::GAZEBOATTACHREQUEST")
  (make-package "MRS_MSGS::GAZEBOATTACHREQUEST"))
(unless (find-package "MRS_MSGS::GAZEBOATTACHRESPONSE")
  (make-package "MRS_MSGS::GAZEBOATTACHRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::GazeboAttachRequest
  :super ros::object
  :slots (_model_name_1 _link_name_1 _model_name_2 _link_name_2 ))

(defmethod mrs_msgs::GazeboAttachRequest
  (:init
   (&key
    ((:model_name_1 __model_name_1) "")
    ((:link_name_1 __link_name_1) "")
    ((:model_name_2 __model_name_2) "")
    ((:link_name_2 __link_name_2) "")
    )
   (send-super :init)
   (setq _model_name_1 (string __model_name_1))
   (setq _link_name_1 (string __link_name_1))
   (setq _model_name_2 (string __model_name_2))
   (setq _link_name_2 (string __link_name_2))
   self)
  (:model_name_1
   (&optional __model_name_1)
   (if __model_name_1 (setq _model_name_1 __model_name_1)) _model_name_1)
  (:link_name_1
   (&optional __link_name_1)
   (if __link_name_1 (setq _link_name_1 __link_name_1)) _link_name_1)
  (:model_name_2
   (&optional __model_name_2)
   (if __model_name_2 (setq _model_name_2 __model_name_2)) _model_name_2)
  (:link_name_2
   (&optional __link_name_2)
   (if __link_name_2 (setq _link_name_2 __link_name_2)) _link_name_2)
  (:serialization-length
   ()
   (+
    ;; string _model_name_1
    4 (length _model_name_1)
    ;; string _link_name_1
    4 (length _link_name_1)
    ;; string _model_name_2
    4 (length _model_name_2)
    ;; string _link_name_2
    4 (length _link_name_2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name_1
       (write-long (length _model_name_1) s) (princ _model_name_1 s)
     ;; string _link_name_1
       (write-long (length _link_name_1) s) (princ _link_name_1 s)
     ;; string _model_name_2
       (write-long (length _model_name_2) s) (princ _model_name_2 s)
     ;; string _link_name_2
       (write-long (length _link_name_2) s) (princ _link_name_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name_1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name_1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _link_name_1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name_1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_name_2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name_2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _link_name_2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name_2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::GazeboAttachResponse
  :super ros::object
  :slots (_ok ))

(defmethod mrs_msgs::GazeboAttachResponse
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

(defclass mrs_msgs::GazeboAttach
  :super ros::object
  :slots ())

(setf (get mrs_msgs::GazeboAttach :md5sum-) "c91fb3be70ce66d19130d40294cf4bd5")
(setf (get mrs_msgs::GazeboAttach :datatype-) "mrs_msgs/GazeboAttach")
(setf (get mrs_msgs::GazeboAttach :request) mrs_msgs::GazeboAttachRequest)
(setf (get mrs_msgs::GazeboAttach :response) mrs_msgs::GazeboAttachResponse)

(defmethod mrs_msgs::GazeboAttachRequest
  (:response () (instance mrs_msgs::GazeboAttachResponse :init)))

(setf (get mrs_msgs::GazeboAttachRequest :md5sum-) "c91fb3be70ce66d19130d40294cf4bd5")
(setf (get mrs_msgs::GazeboAttachRequest :datatype-) "mrs_msgs/GazeboAttachRequest")
(setf (get mrs_msgs::GazeboAttachRequest :definition-)
      "# A service to apply a force and/or torque to a link in a Gazebo simulation
# using the mrs_gazebo_ros_interface package. The links will be joined
# by a revolute joint type.

# Name of the model, containing the first link to be joined.
string model_name_1

# Name the first link to be joined.
string link_name_1

# Name of the model, containing the second link to be joined.
string model_name_2

# Name of the second link to be joined.
string link_name_2

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")

(setf (get mrs_msgs::GazeboAttachResponse :md5sum-) "c91fb3be70ce66d19130d40294cf4bd5")
(setf (get mrs_msgs::GazeboAttachResponse :datatype-) "mrs_msgs/GazeboAttachResponse")
(setf (get mrs_msgs::GazeboAttachResponse :definition-)
      "# A service to apply a force and/or torque to a link in a Gazebo simulation
# using the mrs_gazebo_ros_interface package. The links will be joined
# by a revolute joint type.

# Name of the model, containing the first link to be joined.
string model_name_1

# Name the first link to be joined.
string link_name_1

# Name of the model, containing the second link to be joined.
string model_name_2

# Name of the second link to be joined.
string link_name_2

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")



(provide :mrs_msgs/GazeboAttach "c91fb3be70ce66d19130d40294cf4bd5")


