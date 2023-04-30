;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GazeboAttachTyped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GazeboAttachTyped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GAZEBOATTACHTYPED")
  (make-package "MRS_MSGS::GAZEBOATTACHTYPED"))
(unless (find-package "MRS_MSGS::GAZEBOATTACHTYPEDREQUEST")
  (make-package "MRS_MSGS::GAZEBOATTACHTYPEDREQUEST"))
(unless (find-package "MRS_MSGS::GAZEBOATTACHTYPEDRESPONSE")
  (make-package "MRS_MSGS::GAZEBOATTACHTYPEDRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::GazeboAttachTypedRequest
  :super ros::object
  :slots (_model_name_1 _link_name_1 _model_name_2 _link_name_2 _joint_type ))

(defmethod mrs_msgs::GazeboAttachTypedRequest
  (:init
   (&key
    ((:model_name_1 __model_name_1) "")
    ((:link_name_1 __link_name_1) "")
    ((:model_name_2 __model_name_2) "")
    ((:link_name_2 __link_name_2) "")
    ((:joint_type __joint_type) "")
    )
   (send-super :init)
   (setq _model_name_1 (string __model_name_1))
   (setq _link_name_1 (string __link_name_1))
   (setq _model_name_2 (string __model_name_2))
   (setq _link_name_2 (string __link_name_2))
   (setq _joint_type (string __joint_type))
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
  (:joint_type
   (&optional __joint_type)
   (if __joint_type (setq _joint_type __joint_type)) _joint_type)
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
    ;; string _joint_type
    4 (length _joint_type)
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
     ;; string _joint_type
       (write-long (length _joint_type) s) (princ _joint_type s)
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
   ;; string _joint_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::GazeboAttachTypedResponse
  :super ros::object
  :slots (_ok ))

(defmethod mrs_msgs::GazeboAttachTypedResponse
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

(defclass mrs_msgs::GazeboAttachTyped
  :super ros::object
  :slots ())

(setf (get mrs_msgs::GazeboAttachTyped :md5sum-) "c8a200edf35f852bddb91566c6d0dc97")
(setf (get mrs_msgs::GazeboAttachTyped :datatype-) "mrs_msgs/GazeboAttachTyped")
(setf (get mrs_msgs::GazeboAttachTyped :request) mrs_msgs::GazeboAttachTypedRequest)
(setf (get mrs_msgs::GazeboAttachTyped :response) mrs_msgs::GazeboAttachTypedResponse)

(defmethod mrs_msgs::GazeboAttachTypedRequest
  (:response () (instance mrs_msgs::GazeboAttachTypedResponse :init)))

(setf (get mrs_msgs::GazeboAttachTypedRequest :md5sum-) "c8a200edf35f852bddb91566c6d0dc97")
(setf (get mrs_msgs::GazeboAttachTypedRequest :datatype-) "mrs_msgs/GazeboAttachTypedRequest")
(setf (get mrs_msgs::GazeboAttachTypedRequest :definition-)
      "# A service to apply a force and/or torque to a link in a Gazebo simulation
# using the mrs_gazebo_ros_interface package.

# Name of the model, containing the first link to be joined.
string model_name_1

# Name the first link to be joined.
string link_name_1

# Name of the model, containing the second link to be joined.
string model_name_2

# Name of the second link to be joined.
string link_name_2

# Type of the joint to be created.
# This should be one of the following values:
# \"revolute\"
# \"ball\"
# \"gearbox\"
# \"prismatic\"
# \"revolute2\"
# \"universal\"
# \"piston\"
# \"fixed\"
string joint_type

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")

(setf (get mrs_msgs::GazeboAttachTypedResponse :md5sum-) "c8a200edf35f852bddb91566c6d0dc97")
(setf (get mrs_msgs::GazeboAttachTypedResponse :datatype-) "mrs_msgs/GazeboAttachTypedResponse")
(setf (get mrs_msgs::GazeboAttachTypedResponse :definition-)
      "# A service to apply a force and/or torque to a link in a Gazebo simulation
# using the mrs_gazebo_ros_interface package.

# Name of the model, containing the first link to be joined.
string model_name_1

# Name the first link to be joined.
string link_name_1

# Name of the model, containing the second link to be joined.
string model_name_2

# Name of the second link to be joined.
string link_name_2

# Type of the joint to be created.
# This should be one of the following values:
# \"revolute\"
# \"ball\"
# \"gearbox\"
# \"prismatic\"
# \"revolute2\"
# \"universal\"
# \"piston\"
# \"fixed\"
string joint_type

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")



(provide :mrs_msgs/GazeboAttachTyped "c8a200edf35f852bddb91566c6d0dc97")


