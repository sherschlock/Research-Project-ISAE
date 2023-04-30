;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Reference)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Reference (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::REFERENCE")
  (make-package "MRS_MSGS::REFERENCE"))

(in-package "ROS")
;;//! \htmlinclude Reference.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mrs_msgs::Reference
  :super ros::object
  :slots (_position _heading ))

(defmethod mrs_msgs::Reference
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _heading (float __heading))
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
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Reference :md5sum-) "b7529b96025c54855f296c4413ac7578")
(setf (get mrs_msgs::Reference :datatype-) "mrs_msgs/Reference")
(setf (get mrs_msgs::Reference :definition-)
      "# This message defines a control reference with a Position+Heading.

geometry_msgs/Point position

# Heading is atan2() of XY-world projection of the UAV's body X-axis.
float64 heading

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mrs_msgs/Reference "b7529b96025c54855f296c4413ac7578")


