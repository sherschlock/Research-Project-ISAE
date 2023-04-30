;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GpsDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GpsDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GPSDIAGNOSTICS")
  (make-package "MRS_MSGS::GPSDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude GpsDiagnostics.msg.html


(defclass mrs_msgs::GpsDiagnostics
  :super ros::object
  :slots (_satellites_visible _fix_type _eph _epv ))

(defmethod mrs_msgs::GpsDiagnostics
  (:init
   (&key
    ((:satellites_visible __satellites_visible) 0)
    ((:fix_type __fix_type) 0)
    ((:eph __eph) 0.0)
    ((:epv __epv) 0.0)
    )
   (send-super :init)
   (setq _satellites_visible (round __satellites_visible))
   (setq _fix_type (round __fix_type))
   (setq _eph (float __eph))
   (setq _epv (float __epv))
   self)
  (:satellites_visible
   (&optional __satellites_visible)
   (if __satellites_visible (setq _satellites_visible __satellites_visible)) _satellites_visible)
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:eph
   (&optional __eph)
   (if __eph (setq _eph __eph)) _eph)
  (:epv
   (&optional __epv)
   (if __epv (setq _epv __epv)) _epv)
  (:serialization-length
   ()
   (+
    ;; uint8 _satellites_visible
    1
    ;; uint8 _fix_type
    1
    ;; float32 _eph
    4
    ;; float32 _epv
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _satellites_visible
       (write-byte _satellites_visible s)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; float32 _eph
       (sys::poke _eph (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _epv
       (sys::poke _epv (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _satellites_visible
     (setq _satellites_visible (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _eph
     (setq _eph (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _epv
     (setq _epv (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::GpsDiagnostics :md5sum-) "9ad1ab255ad6615041f82f42bc2320f6")
(setf (get mrs_msgs::GpsDiagnostics :datatype-) "mrs_msgs/GpsDiagnostics")
(setf (get mrs_msgs::GpsDiagnostics :definition-)
      "uint8 satellites_visible
uint8 fix_type
float32 eph
float32 epv

")



(provide :mrs_msgs/GpsDiagnostics "9ad1ab255ad6615041f82f42bc2320f6")


