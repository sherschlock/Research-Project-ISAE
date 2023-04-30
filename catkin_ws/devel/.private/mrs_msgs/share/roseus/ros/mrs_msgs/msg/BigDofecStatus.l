;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BigDofecStatus)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BigDofecStatus (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BIGDOFECSTATUS")
  (make-package "MRS_MSGS::BIGDOFECSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BigDofecStatus.msg.html


(defclass mrs_msgs::BigDofecStatus
  :super ros::object
  :slots (_stamp _mes_vbat _mes_24v _mes_varm _mes_19v _mes_5v _pwm_enabled _pwm1_val _pwm2_val _pwm3_val _pwm4_val _pwm5_val _pwm6_val _solenoids_armed _launched_ch1 _launched_ch2 _launched_ch3 _launched_ch4 _launched_ch5 _launched_ch6 ))

(defmethod mrs_msgs::BigDofecStatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:mes_vbat __mes_vbat) 0.0)
    ((:mes_24v __mes_24v) 0.0)
    ((:mes_varm __mes_varm) 0.0)
    ((:mes_19v __mes_19v) 0.0)
    ((:mes_5v __mes_5v) 0.0)
    ((:pwm_enabled __pwm_enabled) nil)
    ((:pwm1_val __pwm1_val) 0)
    ((:pwm2_val __pwm2_val) 0)
    ((:pwm3_val __pwm3_val) 0)
    ((:pwm4_val __pwm4_val) 0)
    ((:pwm5_val __pwm5_val) 0)
    ((:pwm6_val __pwm6_val) 0)
    ((:solenoids_armed __solenoids_armed) nil)
    ((:launched_ch1 __launched_ch1) nil)
    ((:launched_ch2 __launched_ch2) nil)
    ((:launched_ch3 __launched_ch3) nil)
    ((:launched_ch4 __launched_ch4) nil)
    ((:launched_ch5 __launched_ch5) nil)
    ((:launched_ch6 __launched_ch6) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _mes_vbat (float __mes_vbat))
   (setq _mes_24v (float __mes_24v))
   (setq _mes_varm (float __mes_varm))
   (setq _mes_19v (float __mes_19v))
   (setq _mes_5v (float __mes_5v))
   (setq _pwm_enabled __pwm_enabled)
   (setq _pwm1_val (round __pwm1_val))
   (setq _pwm2_val (round __pwm2_val))
   (setq _pwm3_val (round __pwm3_val))
   (setq _pwm4_val (round __pwm4_val))
   (setq _pwm5_val (round __pwm5_val))
   (setq _pwm6_val (round __pwm6_val))
   (setq _solenoids_armed __solenoids_armed)
   (setq _launched_ch1 __launched_ch1)
   (setq _launched_ch2 __launched_ch2)
   (setq _launched_ch3 __launched_ch3)
   (setq _launched_ch4 __launched_ch4)
   (setq _launched_ch5 __launched_ch5)
   (setq _launched_ch6 __launched_ch6)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:mes_vbat
   (&optional __mes_vbat)
   (if __mes_vbat (setq _mes_vbat __mes_vbat)) _mes_vbat)
  (:mes_24v
   (&optional __mes_24v)
   (if __mes_24v (setq _mes_24v __mes_24v)) _mes_24v)
  (:mes_varm
   (&optional __mes_varm)
   (if __mes_varm (setq _mes_varm __mes_varm)) _mes_varm)
  (:mes_19v
   (&optional __mes_19v)
   (if __mes_19v (setq _mes_19v __mes_19v)) _mes_19v)
  (:mes_5v
   (&optional __mes_5v)
   (if __mes_5v (setq _mes_5v __mes_5v)) _mes_5v)
  (:pwm_enabled
   (&optional (__pwm_enabled :null))
   (if (not (eq __pwm_enabled :null)) (setq _pwm_enabled __pwm_enabled)) _pwm_enabled)
  (:pwm1_val
   (&optional __pwm1_val)
   (if __pwm1_val (setq _pwm1_val __pwm1_val)) _pwm1_val)
  (:pwm2_val
   (&optional __pwm2_val)
   (if __pwm2_val (setq _pwm2_val __pwm2_val)) _pwm2_val)
  (:pwm3_val
   (&optional __pwm3_val)
   (if __pwm3_val (setq _pwm3_val __pwm3_val)) _pwm3_val)
  (:pwm4_val
   (&optional __pwm4_val)
   (if __pwm4_val (setq _pwm4_val __pwm4_val)) _pwm4_val)
  (:pwm5_val
   (&optional __pwm5_val)
   (if __pwm5_val (setq _pwm5_val __pwm5_val)) _pwm5_val)
  (:pwm6_val
   (&optional __pwm6_val)
   (if __pwm6_val (setq _pwm6_val __pwm6_val)) _pwm6_val)
  (:solenoids_armed
   (&optional (__solenoids_armed :null))
   (if (not (eq __solenoids_armed :null)) (setq _solenoids_armed __solenoids_armed)) _solenoids_armed)
  (:launched_ch1
   (&optional (__launched_ch1 :null))
   (if (not (eq __launched_ch1 :null)) (setq _launched_ch1 __launched_ch1)) _launched_ch1)
  (:launched_ch2
   (&optional (__launched_ch2 :null))
   (if (not (eq __launched_ch2 :null)) (setq _launched_ch2 __launched_ch2)) _launched_ch2)
  (:launched_ch3
   (&optional (__launched_ch3 :null))
   (if (not (eq __launched_ch3 :null)) (setq _launched_ch3 __launched_ch3)) _launched_ch3)
  (:launched_ch4
   (&optional (__launched_ch4 :null))
   (if (not (eq __launched_ch4 :null)) (setq _launched_ch4 __launched_ch4)) _launched_ch4)
  (:launched_ch5
   (&optional (__launched_ch5 :null))
   (if (not (eq __launched_ch5 :null)) (setq _launched_ch5 __launched_ch5)) _launched_ch5)
  (:launched_ch6
   (&optional (__launched_ch6 :null))
   (if (not (eq __launched_ch6 :null)) (setq _launched_ch6 __launched_ch6)) _launched_ch6)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _mes_vbat
    4
    ;; float32 _mes_24v
    4
    ;; float32 _mes_varm
    4
    ;; float32 _mes_19v
    4
    ;; float32 _mes_5v
    4
    ;; bool _pwm_enabled
    1
    ;; uint16 _pwm1_val
    2
    ;; uint16 _pwm2_val
    2
    ;; uint16 _pwm3_val
    2
    ;; uint16 _pwm4_val
    2
    ;; uint16 _pwm5_val
    2
    ;; uint16 _pwm6_val
    2
    ;; bool _solenoids_armed
    1
    ;; bool _launched_ch1
    1
    ;; bool _launched_ch2
    1
    ;; bool _launched_ch3
    1
    ;; bool _launched_ch4
    1
    ;; bool _launched_ch5
    1
    ;; bool _launched_ch6
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _mes_vbat
       (sys::poke _mes_vbat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mes_24v
       (sys::poke _mes_24v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mes_varm
       (sys::poke _mes_varm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mes_19v
       (sys::poke _mes_19v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mes_5v
       (sys::poke _mes_5v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _pwm_enabled
       (if _pwm_enabled (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _pwm1_val
       (write-word _pwm1_val s)
     ;; uint16 _pwm2_val
       (write-word _pwm2_val s)
     ;; uint16 _pwm3_val
       (write-word _pwm3_val s)
     ;; uint16 _pwm4_val
       (write-word _pwm4_val s)
     ;; uint16 _pwm5_val
       (write-word _pwm5_val s)
     ;; uint16 _pwm6_val
       (write-word _pwm6_val s)
     ;; bool _solenoids_armed
       (if _solenoids_armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _launched_ch1
       (if _launched_ch1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _launched_ch2
       (if _launched_ch2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _launched_ch3
       (if _launched_ch3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _launched_ch4
       (if _launched_ch4 (write-byte -1 s) (write-byte 0 s))
     ;; bool _launched_ch5
       (if _launched_ch5 (write-byte -1 s) (write-byte 0 s))
     ;; bool _launched_ch6
       (if _launched_ch6 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _mes_vbat
     (setq _mes_vbat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mes_24v
     (setq _mes_24v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mes_varm
     (setq _mes_varm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mes_19v
     (setq _mes_19v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mes_5v
     (setq _mes_5v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _pwm_enabled
     (setq _pwm_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _pwm1_val
     (setq _pwm1_val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm2_val
     (setq _pwm2_val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm3_val
     (setq _pwm3_val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm4_val
     (setq _pwm4_val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm5_val
     (setq _pwm5_val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pwm6_val
     (setq _pwm6_val (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _solenoids_armed
     (setq _solenoids_armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _launched_ch1
     (setq _launched_ch1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _launched_ch2
     (setq _launched_ch2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _launched_ch3
     (setq _launched_ch3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _launched_ch4
     (setq _launched_ch4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _launched_ch5
     (setq _launched_ch5 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _launched_ch6
     (setq _launched_ch6 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::BigDofecStatus :md5sum-) "2a01dab5c749eae33ffb0f9ef6c3cb54")
(setf (get mrs_msgs::BigDofecStatus :datatype-) "mrs_msgs/BigDofecStatus")
(setf (get mrs_msgs::BigDofecStatus :definition-)
      "time stamp

float32 mes_vbat
float32 mes_24v
float32 mes_varm
float32 mes_19v
float32 mes_5v

bool pwm_enabled
uint16 pwm1_val
uint16 pwm2_val
uint16 pwm3_val
uint16 pwm4_val
uint16 pwm5_val
uint16 pwm6_val

bool solenoids_armed
bool launched_ch1
bool launched_ch2
bool launched_ch3
bool launched_ch4
bool launched_ch5
bool launched_ch6

")



(provide :mrs_msgs/BigDofecStatus "2a01dab5c749eae33ffb0f9ef6c3cb54")


