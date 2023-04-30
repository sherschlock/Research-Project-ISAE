;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::AltitudeType)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'AltitudeType (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::ALTITUDETYPE")
  (make-package "MRS_MSGS::ALTITUDETYPE"))

(in-package "ROS")
;;//! \htmlinclude AltitudeType.msg.html


(intern "*HEIGHT*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*HEIGHT* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*HEIGHT* 0)
(intern "*PLANE*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*PLANE* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*PLANE* 1)
(intern "*BRICK*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*BRICK* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*BRICK* 2)
(intern "*VIO*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*VIO* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*VIO* 3)
(intern "*ALOAM*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*ALOAM* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*ALOAM* 4)
(intern "*ALOAMGARM*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*ALOAMGARM* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*ALOAMGARM* 5)
(intern "*ALOAMREP*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*ALOAMREP* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*ALOAMREP* 6)
(intern "*BARO*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*BARO* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*BARO* 7)
(intern "*RTK*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*RTK* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*RTK* 8)
(intern "*LIOSAM*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*LIOSAM* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*LIOSAM* 9)
(intern "*TYPE_COUNT*" (find-package "MRS_MSGS::ALTITUDETYPE"))
(shadow '*TYPE_COUNT* (find-package "MRS_MSGS::ALTITUDETYPE"))
(defconstant mrs_msgs::AltitudeType::*TYPE_COUNT* 10)

(defun mrs_msgs::AltitudeType-to-symbol (const)
  (cond
        ((= const 0) 'mrs_msgs::AltitudeType::*HEIGHT*)
        ((= const 1) 'mrs_msgs::AltitudeType::*PLANE*)
        ((= const 2) 'mrs_msgs::AltitudeType::*BRICK*)
        ((= const 3) 'mrs_msgs::AltitudeType::*VIO*)
        ((= const 4) 'mrs_msgs::AltitudeType::*ALOAM*)
        ((= const 5) 'mrs_msgs::AltitudeType::*ALOAMGARM*)
        ((= const 6) 'mrs_msgs::AltitudeType::*ALOAMREP*)
        ((= const 7) 'mrs_msgs::AltitudeType::*BARO*)
        ((= const 8) 'mrs_msgs::AltitudeType::*RTK*)
        ((= const 9) 'mrs_msgs::AltitudeType::*LIOSAM*)
        ((= const 10) 'mrs_msgs::AltitudeType::*TYPE_COUNT*)
        (t nil)))

(defclass mrs_msgs::AltitudeType
  :super ros::object
  :slots (_name _type ))

(defmethod mrs_msgs::AltitudeType
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (round __type))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::AltitudeType :md5sum-) "9adbe83b4879467630ae7301e2b791a4")
(setf (get mrs_msgs::AltitudeType :datatype-) "mrs_msgs/AltitudeType")
(setf (get mrs_msgs::AltitudeType :definition-)
      "uint8 HEIGHT=0
uint8 PLANE=1
uint8 BRICK=2
uint8 VIO=3
uint8 ALOAM=4
uint8 ALOAMGARM=5
uint8 ALOAMREP=6
uint8 BARO=7
uint8 RTK=8
uint8 LIOSAM=9

uint8 TYPE_COUNT=10

string name
uint8 type

")



(provide :mrs_msgs/AltitudeType "9adbe83b4879467630ae7301e2b791a4")


