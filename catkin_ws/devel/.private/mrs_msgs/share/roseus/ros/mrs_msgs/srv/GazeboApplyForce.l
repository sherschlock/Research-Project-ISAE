;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GazeboApplyForce)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GazeboApplyForce (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GAZEBOAPPLYFORCE")
  (make-package "MRS_MSGS::GAZEBOAPPLYFORCE"))
(unless (find-package "MRS_MSGS::GAZEBOAPPLYFORCEREQUEST")
  (make-package "MRS_MSGS::GAZEBOAPPLYFORCEREQUEST"))
(unless (find-package "MRS_MSGS::GAZEBOAPPLYFORCERESPONSE")
  (make-package "MRS_MSGS::GAZEBOAPPLYFORCERESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::GazeboApplyForceRequest
  :super ros::object
  :slots (_model_name _link_name _force _torque ))

(defmethod mrs_msgs::GazeboApplyForceRequest
  (:init
   (&key
    ((:model_name __model_name) "")
    ((:link_name __link_name) "")
    ((:force __force) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _model_name (string __model_name))
   (setq _link_name (string __link_name))
   (setq _force __force)
   (setq _torque __torque)
   self)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; string _model_name
    4 (length _model_name)
    ;; string _link_name
    4 (length _link_name)
    ;; float64[3] _force
    (* 8    3)
    ;; float64[3] _torque
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; float64[3] _force
     (dotimes (i 3)
       (sys::poke (elt _force i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _torque
     (dotimes (i 3)
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[3] _force
   (dotimes (i (length _force))
     (setf (elt _force i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _torque
   (dotimes (i (length _torque))
     (setf (elt _torque i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass mrs_msgs::GazeboApplyForceResponse
  :super ros::object
  :slots (_ok ))

(defmethod mrs_msgs::GazeboApplyForceResponse
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

(defclass mrs_msgs::GazeboApplyForce
  :super ros::object
  :slots ())

(setf (get mrs_msgs::GazeboApplyForce :md5sum-) "77ac0ae8a686941daaff7f70c849280e")
(setf (get mrs_msgs::GazeboApplyForce :datatype-) "mrs_msgs/GazeboApplyForce")
(setf (get mrs_msgs::GazeboApplyForce :request) mrs_msgs::GazeboApplyForceRequest)
(setf (get mrs_msgs::GazeboApplyForce :response) mrs_msgs::GazeboApplyForceResponse)

(defmethod mrs_msgs::GazeboApplyForceRequest
  (:response () (instance mrs_msgs::GazeboApplyForceResponse :init)))

(setf (get mrs_msgs::GazeboApplyForceRequest :md5sum-) "77ac0ae8a686941daaff7f70c849280e")
(setf (get mrs_msgs::GazeboApplyForceRequest :datatype-) "mrs_msgs/GazeboApplyForceRequest")
(setf (get mrs_msgs::GazeboApplyForceRequest :definition-)
      "# A service to apply a force and/or torque to a link in a Gazebo simulation
# using the mrs_gazebo_ros_interface package.

# Name of the model, containing the link to apply the force/torque to.
string model_name

# Name of the link to apply the force/torque to.
string link_name

# The force vector to apply (in the Gazebo global coordinate system).
float64[3] force

# The torque vector to apply (in the Gazebo global coordinate system).
float64[3] torque

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")

(setf (get mrs_msgs::GazeboApplyForceResponse :md5sum-) "77ac0ae8a686941daaff7f70c849280e")
(setf (get mrs_msgs::GazeboApplyForceResponse :datatype-) "mrs_msgs/GazeboApplyForceResponse")
(setf (get mrs_msgs::GazeboApplyForceResponse :definition-)
      "# A service to apply a force and/or torque to a link in a Gazebo simulation
# using the mrs_gazebo_ros_interface package.

# Name of the model, containing the link to apply the force/torque to.
string model_name

# Name of the link to apply the force/torque to.
string link_name

# The force vector to apply (in the Gazebo global coordinate system).
float64[3] force

# The torque vector to apply (in the Gazebo global coordinate system).
float64[3] torque

---

# Indicates whether the requested operation was carried out successfully.
bool ok

")



(provide :mrs_msgs/GazeboApplyForce "77ac0ae8a686941daaff7f70c849280e")


