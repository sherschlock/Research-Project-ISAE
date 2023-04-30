;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Se3Gains)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Se3Gains (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SE3GAINS")
  (make-package "MRS_MSGS::SE3GAINS"))

(in-package "ROS")
;;//! \htmlinclude Se3Gains.msg.html


(defclass mrs_msgs::Se3Gains
  :super ros::object
  :slots (_kpxy _kvxy _kaxy _kpz _kvz _kaz _kqxy _kibxy _kibxy_lim _kiwxy _kiwxy_lim _kqz _km _km_lim ))

(defmethod mrs_msgs::Se3Gains
  (:init
   (&key
    ((:kpxy __kpxy) 0.0)
    ((:kvxy __kvxy) 0.0)
    ((:kaxy __kaxy) 0.0)
    ((:kpz __kpz) 0.0)
    ((:kvz __kvz) 0.0)
    ((:kaz __kaz) 0.0)
    ((:kqxy __kqxy) 0.0)
    ((:kibxy __kibxy) 0.0)
    ((:kibxy_lim __kibxy_lim) 0.0)
    ((:kiwxy __kiwxy) 0.0)
    ((:kiwxy_lim __kiwxy_lim) 0.0)
    ((:kqz __kqz) 0.0)
    ((:km __km) 0.0)
    ((:km_lim __km_lim) 0.0)
    )
   (send-super :init)
   (setq _kpxy (float __kpxy))
   (setq _kvxy (float __kvxy))
   (setq _kaxy (float __kaxy))
   (setq _kpz (float __kpz))
   (setq _kvz (float __kvz))
   (setq _kaz (float __kaz))
   (setq _kqxy (float __kqxy))
   (setq _kibxy (float __kibxy))
   (setq _kibxy_lim (float __kibxy_lim))
   (setq _kiwxy (float __kiwxy))
   (setq _kiwxy_lim (float __kiwxy_lim))
   (setq _kqz (float __kqz))
   (setq _km (float __km))
   (setq _km_lim (float __km_lim))
   self)
  (:kpxy
   (&optional __kpxy)
   (if __kpxy (setq _kpxy __kpxy)) _kpxy)
  (:kvxy
   (&optional __kvxy)
   (if __kvxy (setq _kvxy __kvxy)) _kvxy)
  (:kaxy
   (&optional __kaxy)
   (if __kaxy (setq _kaxy __kaxy)) _kaxy)
  (:kpz
   (&optional __kpz)
   (if __kpz (setq _kpz __kpz)) _kpz)
  (:kvz
   (&optional __kvz)
   (if __kvz (setq _kvz __kvz)) _kvz)
  (:kaz
   (&optional __kaz)
   (if __kaz (setq _kaz __kaz)) _kaz)
  (:kqxy
   (&optional __kqxy)
   (if __kqxy (setq _kqxy __kqxy)) _kqxy)
  (:kibxy
   (&optional __kibxy)
   (if __kibxy (setq _kibxy __kibxy)) _kibxy)
  (:kibxy_lim
   (&optional __kibxy_lim)
   (if __kibxy_lim (setq _kibxy_lim __kibxy_lim)) _kibxy_lim)
  (:kiwxy
   (&optional __kiwxy)
   (if __kiwxy (setq _kiwxy __kiwxy)) _kiwxy)
  (:kiwxy_lim
   (&optional __kiwxy_lim)
   (if __kiwxy_lim (setq _kiwxy_lim __kiwxy_lim)) _kiwxy_lim)
  (:kqz
   (&optional __kqz)
   (if __kqz (setq _kqz __kqz)) _kqz)
  (:km
   (&optional __km)
   (if __km (setq _km __km)) _km)
  (:km_lim
   (&optional __km_lim)
   (if __km_lim (setq _km_lim __km_lim)) _km_lim)
  (:serialization-length
   ()
   (+
    ;; float64 _kpxy
    8
    ;; float64 _kvxy
    8
    ;; float64 _kaxy
    8
    ;; float64 _kpz
    8
    ;; float64 _kvz
    8
    ;; float64 _kaz
    8
    ;; float64 _kqxy
    8
    ;; float64 _kibxy
    8
    ;; float64 _kibxy_lim
    8
    ;; float64 _kiwxy
    8
    ;; float64 _kiwxy_lim
    8
    ;; float64 _kqz
    8
    ;; float64 _km
    8
    ;; float64 _km_lim
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _kpxy
       (sys::poke _kpxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kvxy
       (sys::poke _kvxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kaxy
       (sys::poke _kaxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kpz
       (sys::poke _kpz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kvz
       (sys::poke _kvz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kaz
       (sys::poke _kaz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kqxy
       (sys::poke _kqxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kibxy
       (sys::poke _kibxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kibxy_lim
       (sys::poke _kibxy_lim (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kiwxy
       (sys::poke _kiwxy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kiwxy_lim
       (sys::poke _kiwxy_lim (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kqz
       (sys::poke _kqz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _km
       (sys::poke _km (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _km_lim
       (sys::poke _km_lim (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _kpxy
     (setq _kpxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kvxy
     (setq _kvxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kaxy
     (setq _kaxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kpz
     (setq _kpz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kvz
     (setq _kvz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kaz
     (setq _kaz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kqxy
     (setq _kqxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kibxy
     (setq _kibxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kibxy_lim
     (setq _kibxy_lim (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kiwxy
     (setq _kiwxy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kiwxy_lim
     (setq _kiwxy_lim (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kqz
     (setq _kqz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _km
     (setq _km (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _km_lim
     (setq _km_lim (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::Se3Gains :md5sum-) "8f0afd0f6c3244e7db3d1f6e5db85f04")
(setf (get mrs_msgs::Se3Gains :datatype-) "mrs_msgs/Se3Gains")
(setf (get mrs_msgs::Se3Gains :definition-)
      "# This a set of gains for the SE(3) controller.

# Horizontal position gain.
float64 kpxy

# Horizontal velocity gain.
float64 kvxy

# Horizontal acceleration gain.
float64 kaxy

# Vertical position gain.
float64 kpz

# Vertical velocity gain.
float64 kvz

# Vertical acceleration gain.
float64 kaz

# Roll+pitch attitude gain.
float64 kqxy

# Body disturbance gain.
float64 kibxy

# Body disturbance estimator limit ([N]).
float64 kibxy_lim

# World disturbance gain.
float64 kiwxy

# World disturbance estimator limit  ([N]).
float64 kiwxy_lim

# Yaw attitude gain.
float64 kqz

# Mass estimator gain.
float64 km

# Mass estimator limit ([m]).
float64 km_lim

")



(provide :mrs_msgs/Se3Gains "8f0afd0f6c3244e7db3d1f6e5db85f04")


