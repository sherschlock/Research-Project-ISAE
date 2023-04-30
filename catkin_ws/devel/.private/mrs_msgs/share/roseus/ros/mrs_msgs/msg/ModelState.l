;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ModelState)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ModelState (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::MODELSTATE")
  (make-package "MRS_MSGS::MODELSTATE"))

(in-package "ROS")
;;//! \htmlinclude ModelState.msg.html


(intern "*TILT*" (find-package "MRS_MSGS::MODELSTATE"))
(shadow '*TILT* (find-package "MRS_MSGS::MODELSTATE"))
(defconstant mrs_msgs::ModelState::*TILT* 5)
(intern "*ACCELERATION*" (find-package "MRS_MSGS::MODELSTATE"))
(shadow '*ACCELERATION* (find-package "MRS_MSGS::MODELSTATE"))
(defconstant mrs_msgs::ModelState::*ACCELERATION* 3)
(intern "*VELOCITY*" (find-package "MRS_MSGS::MODELSTATE"))
(shadow '*VELOCITY* (find-package "MRS_MSGS::MODELSTATE"))
(defconstant mrs_msgs::ModelState::*VELOCITY* 1)
(intern "*POSITION*" (find-package "MRS_MSGS::MODELSTATE"))
(shadow '*POSITION* (find-package "MRS_MSGS::MODELSTATE"))
(defconstant mrs_msgs::ModelState::*POSITION* 0)

(defun mrs_msgs::ModelState-to-symbol (const)
  (cond
        ((= const 5) 'mrs_msgs::ModelState::*TILT*)
        ((= const 3) 'mrs_msgs::ModelState::*ACCELERATION*)
        ((= const 1) 'mrs_msgs::ModelState::*VELOCITY*)
        ((= const 0) 'mrs_msgs::ModelState::*POSITION*)
        (t nil)))

(defclass mrs_msgs::ModelState
  :super ros::object
  :slots (_state ))

(defmethod mrs_msgs::ModelState
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::ModelState :md5sum-) "a48c55bf77e2f2a8ec2e94f56ea6c941")
(setf (get mrs_msgs::ModelState :datatype-) "mrs_msgs/ModelState")
(setf (get mrs_msgs::ModelState :definition-)
      "uint8 TILT=5
uint8 ACCELERATION=3
uint8 VELOCITY=1
uint8 POSITION=0
uint8 state

")



(provide :mrs_msgs/ModelState "a48c55bf77e2f2a8ec2e94f56ea6c941")


