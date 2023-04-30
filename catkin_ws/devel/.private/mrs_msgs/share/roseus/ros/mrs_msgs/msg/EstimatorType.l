;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::EstimatorType)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'EstimatorType (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::ESTIMATORTYPE")
  (make-package "MRS_MSGS::ESTIMATORTYPE"))

(in-package "ROS")
;;//! \htmlinclude EstimatorType.msg.html


(intern "*OPTFLOW*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*OPTFLOW* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*OPTFLOW* 0)
(intern "*GPS*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*GPS* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*GPS* 1)
(intern "*OPTFLOWGPS*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*OPTFLOWGPS* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*OPTFLOWGPS* 2)
(intern "*RTK*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*RTK* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*RTK* 3)
(intern "*VIO*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*VIO* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*VIO* 4)
(intern "*BRICK*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*BRICK* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*BRICK* 5)
(intern "*T265*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*T265* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*T265* 6)
(intern "*HECTOR*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*HECTOR* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*HECTOR* 7)
(intern "*BRICKFLOW*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*BRICKFLOW* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*BRICKFLOW* 8)
(intern "*VSLAM*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*VSLAM* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*VSLAM* 9)
(intern "*ICP*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*ICP* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*ICP* 10)
(intern "*ALOAM*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*ALOAM* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*ALOAM* 11)
(intern "*ALOAMGARM*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*ALOAMGARM* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*ALOAMGARM* 12)
(intern "*ALOAMREP*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*ALOAMREP* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*ALOAMREP* 13)
(intern "*LIOSAM*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*LIOSAM* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*LIOSAM* 14)
(intern "*UWB*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*UWB* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*UWB* 15)
(intern "*TYPE_COUNT*" (find-package "MRS_MSGS::ESTIMATORTYPE"))
(shadow '*TYPE_COUNT* (find-package "MRS_MSGS::ESTIMATORTYPE"))
(defconstant mrs_msgs::EstimatorType::*TYPE_COUNT* 16)

(defun mrs_msgs::EstimatorType-to-symbol (const)
  (cond
        ((= const 0) 'mrs_msgs::EstimatorType::*OPTFLOW*)
        ((= const 1) 'mrs_msgs::EstimatorType::*GPS*)
        ((= const 2) 'mrs_msgs::EstimatorType::*OPTFLOWGPS*)
        ((= const 3) 'mrs_msgs::EstimatorType::*RTK*)
        ((= const 4) 'mrs_msgs::EstimatorType::*VIO*)
        ((= const 5) 'mrs_msgs::EstimatorType::*BRICK*)
        ((= const 6) 'mrs_msgs::EstimatorType::*T265*)
        ((= const 7) 'mrs_msgs::EstimatorType::*HECTOR*)
        ((= const 8) 'mrs_msgs::EstimatorType::*BRICKFLOW*)
        ((= const 9) 'mrs_msgs::EstimatorType::*VSLAM*)
        ((= const 10) 'mrs_msgs::EstimatorType::*ICP*)
        ((= const 11) 'mrs_msgs::EstimatorType::*ALOAM*)
        ((= const 12) 'mrs_msgs::EstimatorType::*ALOAMGARM*)
        ((= const 13) 'mrs_msgs::EstimatorType::*ALOAMREP*)
        ((= const 14) 'mrs_msgs::EstimatorType::*LIOSAM*)
        ((= const 15) 'mrs_msgs::EstimatorType::*UWB*)
        ((= const 16) 'mrs_msgs::EstimatorType::*TYPE_COUNT*)
        (t nil)))

(defclass mrs_msgs::EstimatorType
  :super ros::object
  :slots (_name _type ))

(defmethod mrs_msgs::EstimatorType
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

(setf (get mrs_msgs::EstimatorType :md5sum-) "328329be4f2948aa570fdaba1a5a0e48")
(setf (get mrs_msgs::EstimatorType :datatype-) "mrs_msgs/EstimatorType")
(setf (get mrs_msgs::EstimatorType :definition-)
      "uint8 OPTFLOW=0
uint8 GPS=1
uint8 OPTFLOWGPS=2
uint8 RTK=3
uint8 VIO=4
uint8 BRICK=5
uint8 T265=6
uint8 HECTOR=7
uint8 BRICKFLOW=8
uint8 VSLAM=9
uint8 ICP=10
uint8 ALOAM=11
uint8 ALOAMGARM=12
uint8 ALOAMREP=13
uint8 LIOSAM=14
uint8 UWB=15

uint8 TYPE_COUNT=16

string name
uint8 type

")



(provide :mrs_msgs/EstimatorType "328329be4f2948aa570fdaba1a5a0e48")


