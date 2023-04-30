;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::GripperDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'GripperDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::GRIPPERDIAGNOSTICS")
  (make-package "MRS_MSGS::GRIPPERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude GripperDiagnostics.msg.html


(defclass mrs_msgs::GripperDiagnostics
  :super ros::object
  :slots (_stamp _gripper_on _gripping_object _has_hall _hall1_debug _hall2_debug _has_ultrasonic _ultrasonic1_debug _ultrasonic2_debug _has_proximity _proximity1_debug _proximity2_debug ))

(defmethod mrs_msgs::GripperDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:gripper_on __gripper_on) nil)
    ((:gripping_object __gripping_object) nil)
    ((:has_hall __has_hall) nil)
    ((:hall1_debug __hall1_debug) 0)
    ((:hall2_debug __hall2_debug) 0)
    ((:has_ultrasonic __has_ultrasonic) nil)
    ((:ultrasonic1_debug __ultrasonic1_debug) 0)
    ((:ultrasonic2_debug __ultrasonic2_debug) 0)
    ((:has_proximity __has_proximity) nil)
    ((:proximity1_debug __proximity1_debug) 0)
    ((:proximity2_debug __proximity2_debug) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _gripper_on __gripper_on)
   (setq _gripping_object __gripping_object)
   (setq _has_hall __has_hall)
   (setq _hall1_debug (round __hall1_debug))
   (setq _hall2_debug (round __hall2_debug))
   (setq _has_ultrasonic __has_ultrasonic)
   (setq _ultrasonic1_debug (round __ultrasonic1_debug))
   (setq _ultrasonic2_debug (round __ultrasonic2_debug))
   (setq _has_proximity __has_proximity)
   (setq _proximity1_debug (round __proximity1_debug))
   (setq _proximity2_debug (round __proximity2_debug))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:gripper_on
   (&optional (__gripper_on :null))
   (if (not (eq __gripper_on :null)) (setq _gripper_on __gripper_on)) _gripper_on)
  (:gripping_object
   (&optional (__gripping_object :null))
   (if (not (eq __gripping_object :null)) (setq _gripping_object __gripping_object)) _gripping_object)
  (:has_hall
   (&optional (__has_hall :null))
   (if (not (eq __has_hall :null)) (setq _has_hall __has_hall)) _has_hall)
  (:hall1_debug
   (&optional __hall1_debug)
   (if __hall1_debug (setq _hall1_debug __hall1_debug)) _hall1_debug)
  (:hall2_debug
   (&optional __hall2_debug)
   (if __hall2_debug (setq _hall2_debug __hall2_debug)) _hall2_debug)
  (:has_ultrasonic
   (&optional (__has_ultrasonic :null))
   (if (not (eq __has_ultrasonic :null)) (setq _has_ultrasonic __has_ultrasonic)) _has_ultrasonic)
  (:ultrasonic1_debug
   (&optional __ultrasonic1_debug)
   (if __ultrasonic1_debug (setq _ultrasonic1_debug __ultrasonic1_debug)) _ultrasonic1_debug)
  (:ultrasonic2_debug
   (&optional __ultrasonic2_debug)
   (if __ultrasonic2_debug (setq _ultrasonic2_debug __ultrasonic2_debug)) _ultrasonic2_debug)
  (:has_proximity
   (&optional (__has_proximity :null))
   (if (not (eq __has_proximity :null)) (setq _has_proximity __has_proximity)) _has_proximity)
  (:proximity1_debug
   (&optional __proximity1_debug)
   (if __proximity1_debug (setq _proximity1_debug __proximity1_debug)) _proximity1_debug)
  (:proximity2_debug
   (&optional __proximity2_debug)
   (if __proximity2_debug (setq _proximity2_debug __proximity2_debug)) _proximity2_debug)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _gripper_on
    1
    ;; bool _gripping_object
    1
    ;; bool _has_hall
    1
    ;; int32 _hall1_debug
    4
    ;; int32 _hall2_debug
    4
    ;; bool _has_ultrasonic
    1
    ;; int32 _ultrasonic1_debug
    4
    ;; int32 _ultrasonic2_debug
    4
    ;; bool _has_proximity
    1
    ;; int32 _proximity1_debug
    4
    ;; int32 _proximity2_debug
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _gripper_on
       (if _gripper_on (write-byte -1 s) (write-byte 0 s))
     ;; bool _gripping_object
       (if _gripping_object (write-byte -1 s) (write-byte 0 s))
     ;; bool _has_hall
       (if _has_hall (write-byte -1 s) (write-byte 0 s))
     ;; int32 _hall1_debug
       (write-long _hall1_debug s)
     ;; int32 _hall2_debug
       (write-long _hall2_debug s)
     ;; bool _has_ultrasonic
       (if _has_ultrasonic (write-byte -1 s) (write-byte 0 s))
     ;; int32 _ultrasonic1_debug
       (write-long _ultrasonic1_debug s)
     ;; int32 _ultrasonic2_debug
       (write-long _ultrasonic2_debug s)
     ;; bool _has_proximity
       (if _has_proximity (write-byte -1 s) (write-byte 0 s))
     ;; int32 _proximity1_debug
       (write-long _proximity1_debug s)
     ;; int32 _proximity2_debug
       (write-long _proximity2_debug s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _gripper_on
     (setq _gripper_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gripping_object
     (setq _gripping_object (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _has_hall
     (setq _has_hall (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _hall1_debug
     (setq _hall1_debug (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hall2_debug
     (setq _hall2_debug (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _has_ultrasonic
     (setq _has_ultrasonic (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _ultrasonic1_debug
     (setq _ultrasonic1_debug (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ultrasonic2_debug
     (setq _ultrasonic2_debug (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _has_proximity
     (setq _has_proximity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _proximity1_debug
     (setq _proximity1_debug (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _proximity2_debug
     (setq _proximity2_debug (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mrs_msgs::GripperDiagnostics :md5sum-) "5887bc2d50f46b0d8949991277fb8b45")
(setf (get mrs_msgs::GripperDiagnostics :datatype-) "mrs_msgs/GripperDiagnostics")
(setf (get mrs_msgs::GripperDiagnostics :definition-)
      "time stamp

bool gripper_on
bool gripping_object

bool has_hall
int32 hall1_debug
int32 hall2_debug

bool has_ultrasonic
int32 ultrasonic1_debug
int32 ultrasonic2_debug

bool has_proximity
int32 proximity1_debug
int32 proximity2_debug

")



(provide :mrs_msgs/GripperDiagnostics "5887bc2d50f46b0d8949991277fb8b45")


