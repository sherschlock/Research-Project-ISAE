;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::VelocityReference)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'VelocityReference (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCE")
  (make-package "MRS_MSGS::VELOCITYREFERENCE"))

(in-package "ROS")
;;//! \htmlinclude VelocityReference.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mrs_msgs::VelocityReference
  :super ros::object
  :slots (_velocity _altitude _heading _heading_rate _use_altitude _use_heading _use_heading_rate ))

(defmethod mrs_msgs::VelocityReference
  (:init
   (&key
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:altitude __altitude) 0.0)
    ((:heading __heading) 0.0)
    ((:heading_rate __heading_rate) 0.0)
    ((:use_altitude __use_altitude) nil)
    ((:use_heading __use_heading) nil)
    ((:use_heading_rate __use_heading_rate) nil)
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _altitude (float __altitude))
   (setq _heading (float __heading))
   (setq _heading_rate (float __heading_rate))
   (setq _use_altitude __use_altitude)
   (setq _use_heading __use_heading)
   (setq _use_heading_rate __use_heading_rate)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:heading_rate
   (&optional __heading_rate)
   (if __heading_rate (setq _heading_rate __heading_rate)) _heading_rate)
  (:use_altitude
   (&optional (__use_altitude :null))
   (if (not (eq __use_altitude :null)) (setq _use_altitude __use_altitude)) _use_altitude)
  (:use_heading
   (&optional (__use_heading :null))
   (if (not (eq __use_heading :null)) (setq _use_heading __use_heading)) _use_heading)
  (:use_heading_rate
   (&optional (__use_heading_rate :null))
   (if (not (eq __use_heading_rate :null)) (setq _use_heading_rate __use_heading_rate)) _use_heading_rate)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; float64 _altitude
    8
    ;; float64 _heading
    8
    ;; float64 _heading_rate
    8
    ;; bool _use_altitude
    1
    ;; bool _use_heading
    1
    ;; bool _use_heading_rate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_rate
       (sys::poke _heading_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _use_altitude
       (if _use_altitude (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_heading
       (if _use_heading (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_heading_rate
       (if _use_heading_rate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_rate
     (setq _heading_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _use_altitude
     (setq _use_altitude (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_heading
     (setq _use_heading (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_heading_rate
     (setq _use_heading_rate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::VelocityReference :md5sum-) "2348b640862acc25f552bfe7973e0390")
(setf (get mrs_msgs::VelocityReference :datatype-) "mrs_msgs/VelocityReference")
(setf (get mrs_msgs::VelocityReference :definition-)
      "# desired velocity [m/s]
geometry_msgs/Vector3 velocity

# altitude
float64 altitude

# desired heading and its rate, optional
# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"
float64 heading
float64 heading_rate

# overrides vertical velocity
bool use_altitude

bool use_heading

# overrides heading
bool use_heading_rate

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



(provide :mrs_msgs/VelocityReference "2348b640862acc25f552bfe7973e0390")


