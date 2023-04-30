;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Track)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Track (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::TRACK")
  (make-package "MRS_MSGS::TRACK"))

(in-package "ROS")
;;//! \htmlinclude Track.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mrs_msgs::Track
  :super ros::object
  :slots (_id _position _position_covariance _orientation _orientation_covariance _velocity _velocity_covariance ))

(defmethod mrs_msgs::Track
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:orientation_covariance __orientation_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:velocity_covariance __velocity_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _position_covariance __position_covariance)
   (setq _orientation __orientation)
   (setq _orientation_covariance __orientation_covariance)
   (setq _velocity __velocity)
   (setq _velocity_covariance __velocity_covariance)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:orientation_covariance
   (&optional __orientation_covariance)
   (if __orientation_covariance (setq _orientation_covariance __orientation_covariance)) _orientation_covariance)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:velocity_covariance
   (&optional __velocity_covariance)
   (if __velocity_covariance (setq _velocity_covariance __velocity_covariance)) _velocity_covariance)
  (:serialization-length
   ()
   (+
    ;; uint64 _id
    8
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64[9] _position_covariance
    (* 8    9)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; float64[9] _orientation_covariance
    (* 8    9)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; float64[9] _velocity_covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; float64[9] _orientation_covariance
     (dotimes (i 9)
       (sys::poke (elt _orientation_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; float64[9] _velocity_covariance
     (dotimes (i 9)
       (sys::poke (elt _velocity_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _id
     
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; float64[9] _orientation_covariance
   (dotimes (i (length _orientation_covariance))
     (setf (elt _orientation_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64[9] _velocity_covariance
   (dotimes (i (length _velocity_covariance))
     (setf (elt _velocity_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get mrs_msgs::Track :md5sum-) "5b27c85dc54166a137b9898639a69354")
(setf (get mrs_msgs::Track :datatype-) "mrs_msgs/Track")
(setf (get mrs_msgs::Track :definition-)
      "# This message represents an object being tracked in a three-dimensional
# free space by a multi-target tracking algorithm.
# Each tracked objects has a unique and persistent track ID,
# a position, orientation and velocity estimate with uncertainties represented
# by covariance matrices.

# An ID of this track that is unique and persistent for the tracked object.
uint64 id

# The rest of this message contains the state estimate of the track,
# including its position, orientation, and velocity and their respective
# uncertainty covariance matrices. These are all expressed in a coordinate
# frame, that is given in the header of the meta-message, containing this message.

# Three-dimensional position of the track.
geometry_msgs/Point position

# Row-major representation of the 3x3 matrix of position covariance.
# In order, the parameters are:
# (x, y, z)
float64[9] position_covariance

# Three-dimensional orientation of the track.
geometry_msgs/Quaternion orientation

# Row-major representation of the 3x3 matrix of orientation covariance.
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[9] orientation_covariance

# Velocity of the track in free space.
geometry_msgs/Vector3 velocity

# Row-major representation of the 3x3 matrix of velocity covariance.
# In order, the parameters are:
# (dx/dt, dy/dt, dz/dt)
float64[9] velocity_covariance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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



(provide :mrs_msgs/Track "5b27c85dc54166a137b9898639a69354")


