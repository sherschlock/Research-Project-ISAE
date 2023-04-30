;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::CustomTopic)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'CustomTopic (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::CUSTOMTOPIC")
  (make-package "MRS_MSGS::CUSTOMTOPIC"))

(in-package "ROS")
;;//! \htmlinclude CustomTopic.msg.html


(defclass mrs_msgs::CustomTopic
  :super ros::object
  :slots (_topic_name _topic_hz _topic_color ))

(defmethod mrs_msgs::CustomTopic
  (:init
   (&key
    ((:topic_name __topic_name) "")
    ((:topic_hz __topic_hz) 0.0)
    ((:topic_color __topic_color) 0)
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   (setq _topic_hz (float __topic_hz))
   (setq _topic_color (round __topic_color))
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:topic_hz
   (&optional __topic_hz)
   (if __topic_hz (setq _topic_hz __topic_hz)) _topic_hz)
  (:topic_color
   (&optional __topic_color)
   (if __topic_color (setq _topic_color __topic_color)) _topic_color)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ;; float32 _topic_hz
    4
    ;; int16 _topic_color
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; float32 _topic_hz
       (sys::poke _topic_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _topic_color
       (write-word _topic_color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _topic_hz
     (setq _topic_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _topic_color
     (setq _topic_color (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mrs_msgs::CustomTopic :md5sum-) "eb521c01a11f857100125253e2150a98")
(setf (get mrs_msgs::CustomTopic :datatype-) "mrs_msgs/CustomTopic")
(setf (get mrs_msgs::CustomTopic :definition-)
      "string topic_name
float32 topic_hz
int16 topic_color

")



(provide :mrs_msgs/CustomTopic "eb521c01a11f857100125253e2150a98")


