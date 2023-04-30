;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GpsStatus)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GpsStatus (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GPSSTATUS")
  (make-package "MRS_MSGS::GPSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GpsStatus.msg.html


(intern "*GPS_QUALITY_NO_FIX*" (find-package "MRS_MSGS::GPSSTATUS"))
(shadow '*GPS_QUALITY_NO_FIX* (find-package "MRS_MSGS::GPSSTATUS"))
(defconstant mrs_msgs::GpsStatus::*GPS_QUALITY_NO_FIX* 0)
(intern "*GPS_QUALITY_SIGLE_POINT*" (find-package "MRS_MSGS::GPSSTATUS"))
(shadow '*GPS_QUALITY_SIGLE_POINT* (find-package "MRS_MSGS::GPSSTATUS"))
(defconstant mrs_msgs::GpsStatus::*GPS_QUALITY_SIGLE_POINT* 1)
(intern "*GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL*" (find-package "MRS_MSGS::GPSSTATUS"))
(shadow '*GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL* (find-package "MRS_MSGS::GPSSTATUS"))
(defconstant mrs_msgs::GpsStatus::*GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL* 2)
(intern "*GPS_QUALITY_RTK_FIX*" (find-package "MRS_MSGS::GPSSTATUS"))
(shadow '*GPS_QUALITY_RTK_FIX* (find-package "MRS_MSGS::GPSSTATUS"))
(defconstant mrs_msgs::GpsStatus::*GPS_QUALITY_RTK_FIX* 4)
(intern "*GPS_QUALITY_RTK_FLOAT*" (find-package "MRS_MSGS::GPSSTATUS"))
(shadow '*GPS_QUALITY_RTK_FLOAT* (find-package "MRS_MSGS::GPSSTATUS"))
(defconstant mrs_msgs::GpsStatus::*GPS_QUALITY_RTK_FLOAT* 5)

(defun mrs_msgs::GpsStatus-to-symbol (const)
  (cond
        ((= const 0) 'mrs_msgs::GpsStatus::*GPS_QUALITY_NO_FIX*)
        ((= const 1) 'mrs_msgs::GpsStatus::*GPS_QUALITY_SIGLE_POINT*)
        ((= const 2) 'mrs_msgs::GpsStatus::*GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL*)
        ((= const 4) 'mrs_msgs::GpsStatus::*GPS_QUALITY_RTK_FIX*)
        ((= const 5) 'mrs_msgs::GpsStatus::*GPS_QUALITY_RTK_FLOAT*)
        (t nil)))

(defclass mrs_msgs::GpsStatus
  :super ros::object
  :slots (_quality ))

(defmethod mrs_msgs::GpsStatus
  (:init
   (&key
    ((:quality __quality) 0)
    )
   (send-super :init)
   (setq _quality (round __quality))
   self)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:serialization-length
   ()
   (+
    ;; uint32 _quality
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _quality
       (write-long _quality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _quality
     (setq _quality (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::GpsStatus :md5sum-) "636d1c2a6683d74dcd1bd4a78682ded9")
(setf (get mrs_msgs::GpsStatus :datatype-) "mrs_msgs/GpsStatus")
(setf (get mrs_msgs::GpsStatus :definition-)
      "uint32 quality
uint32 GPS_QUALITY_NO_FIX=0
uint32 GPS_QUALITY_SIGLE_POINT=1
uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2
uint32 GPS_QUALITY_RTK_FIX=4
uint32 GPS_QUALITY_RTK_FLOAT=5

")



(provide :mrs_msgs/GpsStatus "636d1c2a6683d74dcd1bd4a78682ded9")


