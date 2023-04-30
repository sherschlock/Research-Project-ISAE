;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::UavManagerDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'UavManagerDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::UAVMANAGERDIAGNOSTICS")
  (make-package "MRS_MSGS::UAVMANAGERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude UavManagerDiagnostics.msg.html


(defclass mrs_msgs::UavManagerDiagnostics
  :super ros::object
  :slots (_stamp _uav_name _home_latitude _home_longitude _cur_latitude _cur_longitude _flight_time ))

(defmethod mrs_msgs::UavManagerDiagnostics
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:uav_name __uav_name) "")
    ((:home_latitude __home_latitude) 0.0)
    ((:home_longitude __home_longitude) 0.0)
    ((:cur_latitude __cur_latitude) 0.0)
    ((:cur_longitude __cur_longitude) 0.0)
    ((:flight_time __flight_time) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _uav_name (string __uav_name))
   (setq _home_latitude (float __home_latitude))
   (setq _home_longitude (float __home_longitude))
   (setq _cur_latitude (float __cur_latitude))
   (setq _cur_longitude (float __cur_longitude))
   (setq _flight_time (float __flight_time))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:uav_name
   (&optional __uav_name)
   (if __uav_name (setq _uav_name __uav_name)) _uav_name)
  (:home_latitude
   (&optional __home_latitude)
   (if __home_latitude (setq _home_latitude __home_latitude)) _home_latitude)
  (:home_longitude
   (&optional __home_longitude)
   (if __home_longitude (setq _home_longitude __home_longitude)) _home_longitude)
  (:cur_latitude
   (&optional __cur_latitude)
   (if __cur_latitude (setq _cur_latitude __cur_latitude)) _cur_latitude)
  (:cur_longitude
   (&optional __cur_longitude)
   (if __cur_longitude (setq _cur_longitude __cur_longitude)) _cur_longitude)
  (:flight_time
   (&optional __flight_time)
   (if __flight_time (setq _flight_time __flight_time)) _flight_time)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _uav_name
    4 (length _uav_name)
    ;; float64 _home_latitude
    8
    ;; float64 _home_longitude
    8
    ;; float64 _cur_latitude
    8
    ;; float64 _cur_longitude
    8
    ;; float64 _flight_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _uav_name
       (write-long (length _uav_name) s) (princ _uav_name s)
     ;; float64 _home_latitude
       (sys::poke _home_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _home_longitude
       (sys::poke _home_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_latitude
       (sys::poke _cur_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_longitude
       (sys::poke _cur_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _flight_time
       (sys::poke _flight_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _uav_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _home_latitude
     (setq _home_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _home_longitude
     (setq _home_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_latitude
     (setq _cur_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_longitude
     (setq _cur_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _flight_time
     (setq _flight_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mrs_msgs::UavManagerDiagnostics :md5sum-) "36596a45f051bddf37b9b0dd00de0c80")
(setf (get mrs_msgs::UavManagerDiagnostics :datatype-) "mrs_msgs/UavManagerDiagnostics")
(setf (get mrs_msgs::UavManagerDiagnostics :definition-)
      "# This reports on the state of the UavManager

time stamp

string uav_name

# home position latitude and longitude, if available
float64 home_latitude
float64 home_longitude

# current latitude and longitude, if available
float64 cur_latitude
float64 cur_longitude

float64 flight_time # [s]

")



(provide :mrs_msgs/UavManagerDiagnostics "36596a45f051bddf37b9b0dd00de0c80")


