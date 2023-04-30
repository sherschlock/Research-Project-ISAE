;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::PclToolsDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'PclToolsDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS")
  (make-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude PclToolsDiagnostics.msg.html


(intern "*SENSOR_TYPE_NONE*" (find-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS"))
(shadow '*SENSOR_TYPE_NONE* (find-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS"))
(defconstant mrs_msgs::PclToolsDiagnostics::*SENSOR_TYPE_NONE* -1)
(intern "*SENSOR_TYPE_LIDAR_3D*" (find-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS"))
(shadow '*SENSOR_TYPE_LIDAR_3D* (find-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS"))
(defconstant mrs_msgs::PclToolsDiagnostics::*SENSOR_TYPE_LIDAR_3D* 0)
(intern "*SENSOR_TYPE_DEPTH_CAMERA*" (find-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS"))
(shadow '*SENSOR_TYPE_DEPTH_CAMERA* (find-package "MRS_MSGS::PCLTOOLSDIAGNOSTICS"))
(defconstant mrs_msgs::PclToolsDiagnostics::*SENSOR_TYPE_DEPTH_CAMERA* 1)

(defun mrs_msgs::PclToolsDiagnostics-to-symbol (const)
  (cond
        ((= const -1) 'mrs_msgs::PclToolsDiagnostics::*SENSOR_TYPE_NONE*)
        ((= const 0) 'mrs_msgs::PclToolsDiagnostics::*SENSOR_TYPE_LIDAR_3D*)
        ((= const 1) 'mrs_msgs::PclToolsDiagnostics::*SENSOR_TYPE_DEPTH_CAMERA*)
        (t nil)))

(defclass mrs_msgs::PclToolsDiagnostics
  :super ros::object
  :slots (_stamp _sensor_name _sensor_type _frequency _vfov _rows_before _cols_before _rows_after _cols_after ))

(defmethod mrs_msgs::PclToolsDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:sensor_name __sensor_name) "")
    ((:sensor_type __sensor_type) 0)
    ((:frequency __frequency) 0.0)
    ((:vfov __vfov) 0.0)
    ((:rows_before __rows_before) 0)
    ((:cols_before __cols_before) 0)
    ((:rows_after __rows_after) 0)
    ((:cols_after __cols_after) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _sensor_name (string __sensor_name))
   (setq _sensor_type (round __sensor_type))
   (setq _frequency (float __frequency))
   (setq _vfov (float __vfov))
   (setq _rows_before (round __rows_before))
   (setq _cols_before (round __cols_before))
   (setq _rows_after (round __rows_after))
   (setq _cols_after (round __cols_after))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:sensor_name
   (&optional __sensor_name)
   (if __sensor_name (setq _sensor_name __sensor_name)) _sensor_name)
  (:sensor_type
   (&optional __sensor_type)
   (if __sensor_type (setq _sensor_type __sensor_type)) _sensor_type)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:vfov
   (&optional __vfov)
   (if __vfov (setq _vfov __vfov)) _vfov)
  (:rows_before
   (&optional __rows_before)
   (if __rows_before (setq _rows_before __rows_before)) _rows_before)
  (:cols_before
   (&optional __cols_before)
   (if __cols_before (setq _cols_before __cols_before)) _cols_before)
  (:rows_after
   (&optional __rows_after)
   (if __rows_after (setq _rows_after __rows_after)) _rows_after)
  (:cols_after
   (&optional __cols_after)
   (if __cols_after (setq _cols_after __cols_after)) _cols_after)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _sensor_name
    4 (length _sensor_name)
    ;; uint8 _sensor_type
    1
    ;; float32 _frequency
    4
    ;; float32 _vfov
    4
    ;; uint16 _rows_before
    2
    ;; uint16 _cols_before
    2
    ;; uint16 _rows_after
    2
    ;; uint16 _cols_after
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _sensor_name
       (write-long (length _sensor_name) s) (princ _sensor_name s)
     ;; uint8 _sensor_type
       (write-byte _sensor_type s)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vfov
       (sys::poke _vfov (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _rows_before
       (write-word _rows_before s)
     ;; uint16 _cols_before
       (write-word _cols_before s)
     ;; uint16 _rows_after
       (write-word _rows_after s)
     ;; uint16 _cols_after
       (write-word _cols_after s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _sensor_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _sensor_type
     (setq _sensor_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vfov
     (setq _vfov (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _rows_before
     (setq _rows_before (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cols_before
     (setq _cols_before (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rows_after
     (setq _rows_after (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cols_after
     (setq _cols_after (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mrs_msgs::PclToolsDiagnostics :md5sum-) "19326053c1e1dd1a3b03d52e3eeb957e")
(setf (get mrs_msgs::PclToolsDiagnostics :datatype-) "mrs_msgs/PclToolsDiagnostics")
(setf (get mrs_msgs::PclToolsDiagnostics :definition-)
      "time   stamp
string sensor_name
uint8  sensor_type

float32 frequency   # [Hz]
float32 vfov        # [deg]
uint16  rows_before # height of input data
uint16  cols_before # width of input data
uint16  rows_after  # height of output data
uint16  cols_after  # width of output data

# Sensor type
int8 SENSOR_TYPE_NONE=-1
int8 SENSOR_TYPE_LIDAR_3D=0
int8 SENSOR_TYPE_DEPTH_CAMERA=1

")



(provide :mrs_msgs/PclToolsDiagnostics "19326053c1e1dd1a3b03d52e3eeb957e")


