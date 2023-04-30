;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ImagePointsWithFloatStamped)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ImagePointsWithFloatStamped (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::IMAGEPOINTSWITHFLOATSTAMPED")
  (make-package "MRS_MSGS::IMAGEPOINTSWITHFLOATSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ImagePointsWithFloatStamped.msg.html


(defclass mrs_msgs::ImagePointsWithFloatStamped
  :super ros::object
  :slots (_stamp _image_height _image_width _points ))

(defmethod mrs_msgs::ImagePointsWithFloatStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:image_height __image_height) 0)
    ((:image_width __image_width) 0)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _image_height (round __image_height))
   (setq _image_width (round __image_width))
   (setq _points __points)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _image_height
    4
    ;; uint32 _image_width
    4
    ;; mrs_msgs/Point2DWithFloat[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _image_height
       (write-long _image_height s)
     ;; uint32 _image_width
       (write-long _image_width s)
     ;; mrs_msgs/Point2DWithFloat[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _image_height
     (setq _image_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _image_width
     (setq _image_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mrs_msgs/Point2DWithFloat[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance mrs_msgs::Point2DWithFloat :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::ImagePointsWithFloatStamped :md5sum-) "2f80394ba17236fe2f5a874f644ea3a5")
(setf (get mrs_msgs::ImagePointsWithFloatStamped :datatype-) "mrs_msgs/ImagePointsWithFloatStamped")
(setf (get mrs_msgs::ImagePointsWithFloatStamped :definition-)
      "time stamp
uint32 image_height
uint32 image_width
mrs_msgs/Point2DWithFloat[] points

================================================================================
MSG: mrs_msgs/Point2DWithFloat
float64 x
float64 y
float64 value

")



(provide :mrs_msgs/ImagePointsWithFloatStamped "2f80394ba17236fe2f5a874f644ea3a5")


