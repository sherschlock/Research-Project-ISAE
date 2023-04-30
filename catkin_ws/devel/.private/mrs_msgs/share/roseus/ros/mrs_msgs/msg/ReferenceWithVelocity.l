;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ReferenceWithVelocity)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ReferenceWithVelocity (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::REFERENCEWITHVELOCITY")
  (make-package "MRS_MSGS::REFERENCEWITHVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude ReferenceWithVelocity.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mrs_msgs::ReferenceWithVelocity
  :super ros::object
  :slots (_position _heading _enforce_velocity _velocity ))

(defmethod mrs_msgs::ReferenceWithVelocity
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:heading __heading) 0.0)
    ((:enforce_velocity __enforce_velocity) nil)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _heading (float __heading))
   (setq _enforce_velocity __enforce_velocity)
   (setq _velocity __velocity)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:enforce_velocity
   (&optional (__enforce_velocity :null))
   (if (not (eq __enforce_velocity :null)) (setq _enforce_velocity __enforce_velocity)) _enforce_velocity)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _heading
    8
    ;; bool _enforce_velocity
    1
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _enforce_velocity
       (if _enforce_velocity (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _enforce_velocity
     (setq _enforce_velocity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;;
   self)
  )

(setf (get mrs_msgs::ReferenceWithVelocity :md5sum-) "9fb8aa80a4919f0556c2cb3bfb9a6bab")
(setf (get mrs_msgs::ReferenceWithVelocity :datatype-) "mrs_msgs/ReferenceWithVelocity")
(setf (get mrs_msgs::ReferenceWithVelocity :definition-)
      "# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

bool enforce_velocity
geometry_msgs/Vector3 velocity

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mrs_msgs/ReferenceWithVelocity "9fb8aa80a4919f0556c2cb3bfb9a6bab")


