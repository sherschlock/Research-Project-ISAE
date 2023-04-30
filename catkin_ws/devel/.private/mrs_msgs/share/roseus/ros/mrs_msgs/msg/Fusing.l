;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Fusing)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Fusing (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::FUSING")
  (make-package "MRS_MSGS::FUSING"))

(in-package "ROS")
;;//! \htmlinclude Fusing.msg.html


(defclass mrs_msgs::Fusing
  :super ros::object
  :slots (_model_state _is_fusing _covariance ))

(defmethod mrs_msgs::Fusing
  (:init
   (&key
    ((:model_state __model_state) (instance mrs_msgs::ModelState :init))
    ((:is_fusing __is_fusing) nil)
    ((:covariance __covariance) 0.0)
    )
   (send-super :init)
   (setq _model_state __model_state)
   (setq _is_fusing __is_fusing)
   (setq _covariance (float __covariance))
   self)
  (:model_state
   (&rest __model_state)
   (if (keywordp (car __model_state))
       (send* _model_state __model_state)
     (progn
       (if __model_state (setq _model_state (car __model_state)))
       _model_state)))
  (:is_fusing
   (&optional (__is_fusing :null))
   (if (not (eq __is_fusing :null)) (setq _is_fusing __is_fusing)) _is_fusing)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; mrs_msgs/ModelState _model_state
    (send _model_state :serialization-length)
    ;; bool _is_fusing
    1
    ;; float64 _covariance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/ModelState _model_state
       (send _model_state :serialize s)
     ;; bool _is_fusing
       (if _is_fusing (write-byte -1 s) (write-byte 0 s))
     ;; float64 _covariance
       (sys::poke _covariance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/ModelState _model_state
     (send _model_state :deserialize buf ptr-) (incf ptr- (send _model_state :serialization-length))
   ;; bool _is_fusing
     (setq _is_fusing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _covariance
     (setq _covariance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Fusing :md5sum-) "140fb768711cb5688a03db600c114f3f")
(setf (get mrs_msgs::Fusing :datatype-) "mrs_msgs/Fusing")
(setf (get mrs_msgs::Fusing :definition-)
      "mrs_msgs/ModelState model_state
bool is_fusing
float64 covariance

================================================================================
MSG: mrs_msgs/ModelState
uint8 TILT=5
uint8 ACCELERATION=3
uint8 VELOCITY=1
uint8 POSITION=0
uint8 state

")



(provide :mrs_msgs/Fusing "140fb768711cb5688a03db600c114f3f")


