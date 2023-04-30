;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::HeadingType)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'HeadingType (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::HEADINGTYPE")
  (make-package "MRS_MSGS::HEADINGTYPE"))

(in-package "ROS")
;;//! \htmlinclude HeadingType.msg.html


(intern "*PIXHAWK*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*PIXHAWK* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*PIXHAWK* 0)
(intern "*GYRO*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*GYRO* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*GYRO* 1)
(intern "*COMPASS*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*COMPASS* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*COMPASS* 2)
(intern "*OPTFLOW*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*OPTFLOW* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*OPTFLOW* 3)
(intern "*HECTOR*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*HECTOR* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*HECTOR* 4)
(intern "*BRICK*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*BRICK* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*BRICK* 5)
(intern "*VIO*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*VIO* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*VIO* 6)
(intern "*VSLAM*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*VSLAM* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*VSLAM* 7)
(intern "*ICP*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*ICP* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*ICP* 8)
(intern "*BRICKFLOW*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*BRICKFLOW* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*BRICKFLOW* 9)
(intern "*ALOAM*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*ALOAM* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*ALOAM* 10)
(intern "*ALOAMREP*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*ALOAMREP* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*ALOAMREP* 11)
(intern "*LIOSAM*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*LIOSAM* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*LIOSAM* 12)
(intern "*TYPE_COUNT*" (find-package "MRS_MSGS::HEADINGTYPE"))
(shadow '*TYPE_COUNT* (find-package "MRS_MSGS::HEADINGTYPE"))
(defconstant mrs_msgs::HeadingType::*TYPE_COUNT* 13)

(defun mrs_msgs::HeadingType-to-symbol (const)
  (cond
        ((= const 0) 'mrs_msgs::HeadingType::*PIXHAWK*)
        ((= const 1) 'mrs_msgs::HeadingType::*GYRO*)
        ((= const 2) 'mrs_msgs::HeadingType::*COMPASS*)
        ((= const 3) 'mrs_msgs::HeadingType::*OPTFLOW*)
        ((= const 4) 'mrs_msgs::HeadingType::*HECTOR*)
        ((= const 5) 'mrs_msgs::HeadingType::*BRICK*)
        ((= const 6) 'mrs_msgs::HeadingType::*VIO*)
        ((= const 7) 'mrs_msgs::HeadingType::*VSLAM*)
        ((= const 8) 'mrs_msgs::HeadingType::*ICP*)
        ((= const 9) 'mrs_msgs::HeadingType::*BRICKFLOW*)
        ((= const 10) 'mrs_msgs::HeadingType::*ALOAM*)
        ((= const 11) 'mrs_msgs::HeadingType::*ALOAMREP*)
        ((= const 12) 'mrs_msgs::HeadingType::*LIOSAM*)
        ((= const 13) 'mrs_msgs::HeadingType::*TYPE_COUNT*)
        (t nil)))

(defclass mrs_msgs::HeadingType
  :super ros::object
  :slots (_name _type ))

(defmethod mrs_msgs::HeadingType
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

(setf (get mrs_msgs::HeadingType :md5sum-) "4575f57d7ab2d67fda5521732eca4e89")
(setf (get mrs_msgs::HeadingType :datatype-) "mrs_msgs/HeadingType")
(setf (get mrs_msgs::HeadingType :definition-)
      "uint8 PIXHAWK=0
uint8 GYRO=1
uint8 COMPASS=2
uint8 OPTFLOW=3
uint8 HECTOR=4
uint8 BRICK=5
uint8 VIO=6
uint8 VSLAM=7
uint8 ICP=8
uint8 BRICKFLOW=9
uint8 ALOAM=10
uint8 ALOAMREP=11
uint8 LIOSAM=12

uint8 TYPE_COUNT=13

string name
uint8 type

")



(provide :mrs_msgs/HeadingType "4575f57d7ab2d67fda5521732eca4e89")


