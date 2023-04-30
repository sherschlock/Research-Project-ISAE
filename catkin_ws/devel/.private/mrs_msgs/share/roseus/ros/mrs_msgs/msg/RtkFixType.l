;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::RtkFixType)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'RtkFixType (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::RTKFIXTYPE")
  (make-package "MRS_MSGS::RTKFIXTYPE"))

(in-package "ROS")
;;//! \htmlinclude RtkFixType.msg.html


(intern "*RTK_FIX*" (find-package "MRS_MSGS::RTKFIXTYPE"))
(shadow '*RTK_FIX* (find-package "MRS_MSGS::RTKFIXTYPE"))
(defconstant mrs_msgs::RtkFixType::*RTK_FIX* 5)
(intern "*RTK_FLOAT*" (find-package "MRS_MSGS::RTKFIXTYPE"))
(shadow '*RTK_FLOAT* (find-package "MRS_MSGS::RTKFIXTYPE"))
(defconstant mrs_msgs::RtkFixType::*RTK_FLOAT* 4)
(intern "*UNKNOWN*" (find-package "MRS_MSGS::RTKFIXTYPE"))
(shadow '*UNKNOWN* (find-package "MRS_MSGS::RTKFIXTYPE"))
(defconstant mrs_msgs::RtkFixType::*UNKNOWN* 3)
(intern "*DGPS*" (find-package "MRS_MSGS::RTKFIXTYPE"))
(shadow '*DGPS* (find-package "MRS_MSGS::RTKFIXTYPE"))
(defconstant mrs_msgs::RtkFixType::*DGPS* 2)
(intern "*SPS*" (find-package "MRS_MSGS::RTKFIXTYPE"))
(shadow '*SPS* (find-package "MRS_MSGS::RTKFIXTYPE"))
(defconstant mrs_msgs::RtkFixType::*SPS* 1)
(intern "*NO_FIX*" (find-package "MRS_MSGS::RTKFIXTYPE"))
(shadow '*NO_FIX* (find-package "MRS_MSGS::RTKFIXTYPE"))
(defconstant mrs_msgs::RtkFixType::*NO_FIX* 0)

(defun mrs_msgs::RtkFixType-to-symbol (const)
  (cond
        ((= const 5) 'mrs_msgs::RtkFixType::*RTK_FIX*)
        ((= const 4) 'mrs_msgs::RtkFixType::*RTK_FLOAT*)
        ((= const 3) 'mrs_msgs::RtkFixType::*UNKNOWN*)
        ((= const 2) 'mrs_msgs::RtkFixType::*DGPS*)
        ((= const 1) 'mrs_msgs::RtkFixType::*SPS*)
        ((= const 0) 'mrs_msgs::RtkFixType::*NO_FIX*)
        (t nil)))

(defclass mrs_msgs::RtkFixType
  :super ros::object
  :slots (_fix_type ))

(defmethod mrs_msgs::RtkFixType
  (:init
   (&key
    ((:fix_type __fix_type) 0)
    )
   (send-super :init)
   (setq _fix_type (round __fix_type))
   self)
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _fix_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::RtkFixType :md5sum-) "3323b0cae49ed181a81a1139b0a61ca7")
(setf (get mrs_msgs::RtkFixType :datatype-) "mrs_msgs/RtkFixType")
(setf (get mrs_msgs::RtkFixType :definition-)
      "uint8 RTK_FIX=5
uint8 RTK_FLOAT=4
uint8 UNKNOWN=3
uint8 DGPS=2
uint8 SPS=1
uint8 NO_FIX=0
uint8 fix_type

")



(provide :mrs_msgs/RtkFixType "3323b0cae49ed181a81a1139b0a61ca7")


