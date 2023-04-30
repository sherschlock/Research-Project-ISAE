;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::OusterInfo)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'OusterInfo (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::OUSTERINFO")
  (make-package "MRS_MSGS::OUSTERINFO"))

(in-package "ROS")
;;//! \htmlinclude OusterInfo.msg.html


(defclass mrs_msgs::OusterInfo
  :super ros::object
  :slots (_name _sn _fw_rev _mode _prod_line _beam_azimuth_angles _beam_altitude_angles _lidar_origin_to_beam_origin_mm _imu_to_sensor_transform _lidar_to_sensor_transform _extrinsic _pixels_per_column _columns_per_frame _pixel_shift_by_row ))

(defmethod mrs_msgs::OusterInfo
  (:init
   (&key
    ((:name __name) "")
    ((:sn __sn) "")
    ((:fw_rev __fw_rev) "")
    ((:mode __mode) "")
    ((:prod_line __prod_line) "")
    ((:beam_azimuth_angles __beam_azimuth_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:beam_altitude_angles __beam_altitude_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lidar_origin_to_beam_origin_mm __lidar_origin_to_beam_origin_mm) 0.0)
    ((:imu_to_sensor_transform __imu_to_sensor_transform) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lidar_to_sensor_transform __lidar_to_sensor_transform) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:extrinsic __extrinsic) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pixels_per_column __pixels_per_column) 0)
    ((:columns_per_frame __columns_per_frame) 0)
    ((:pixel_shift_by_row __pixel_shift_by_row) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _sn (string __sn))
   (setq _fw_rev (string __fw_rev))
   (setq _mode (string __mode))
   (setq _prod_line (string __prod_line))
   (setq _beam_azimuth_angles __beam_azimuth_angles)
   (setq _beam_altitude_angles __beam_altitude_angles)
   (setq _lidar_origin_to_beam_origin_mm (float __lidar_origin_to_beam_origin_mm))
   (setq _imu_to_sensor_transform __imu_to_sensor_transform)
   (setq _lidar_to_sensor_transform __lidar_to_sensor_transform)
   (setq _extrinsic __extrinsic)
   (setq _pixels_per_column (round __pixels_per_column))
   (setq _columns_per_frame (round __columns_per_frame))
   (setq _pixel_shift_by_row __pixel_shift_by_row)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:fw_rev
   (&optional __fw_rev)
   (if __fw_rev (setq _fw_rev __fw_rev)) _fw_rev)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:prod_line
   (&optional __prod_line)
   (if __prod_line (setq _prod_line __prod_line)) _prod_line)
  (:beam_azimuth_angles
   (&optional __beam_azimuth_angles)
   (if __beam_azimuth_angles (setq _beam_azimuth_angles __beam_azimuth_angles)) _beam_azimuth_angles)
  (:beam_altitude_angles
   (&optional __beam_altitude_angles)
   (if __beam_altitude_angles (setq _beam_altitude_angles __beam_altitude_angles)) _beam_altitude_angles)
  (:lidar_origin_to_beam_origin_mm
   (&optional __lidar_origin_to_beam_origin_mm)
   (if __lidar_origin_to_beam_origin_mm (setq _lidar_origin_to_beam_origin_mm __lidar_origin_to_beam_origin_mm)) _lidar_origin_to_beam_origin_mm)
  (:imu_to_sensor_transform
   (&optional __imu_to_sensor_transform)
   (if __imu_to_sensor_transform (setq _imu_to_sensor_transform __imu_to_sensor_transform)) _imu_to_sensor_transform)
  (:lidar_to_sensor_transform
   (&optional __lidar_to_sensor_transform)
   (if __lidar_to_sensor_transform (setq _lidar_to_sensor_transform __lidar_to_sensor_transform)) _lidar_to_sensor_transform)
  (:extrinsic
   (&optional __extrinsic)
   (if __extrinsic (setq _extrinsic __extrinsic)) _extrinsic)
  (:pixels_per_column
   (&optional __pixels_per_column)
   (if __pixels_per_column (setq _pixels_per_column __pixels_per_column)) _pixels_per_column)
  (:columns_per_frame
   (&optional __columns_per_frame)
   (if __columns_per_frame (setq _columns_per_frame __columns_per_frame)) _columns_per_frame)
  (:pixel_shift_by_row
   (&optional __pixel_shift_by_row)
   (if __pixel_shift_by_row (setq _pixel_shift_by_row __pixel_shift_by_row)) _pixel_shift_by_row)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _sn
    4 (length _sn)
    ;; string _fw_rev
    4 (length _fw_rev)
    ;; string _mode
    4 (length _mode)
    ;; string _prod_line
    4 (length _prod_line)
    ;; float64[] _beam_azimuth_angles
    (* 8    (length _beam_azimuth_angles)) 4
    ;; float64[] _beam_altitude_angles
    (* 8    (length _beam_altitude_angles)) 4
    ;; float64 _lidar_origin_to_beam_origin_mm
    8
    ;; float64[] _imu_to_sensor_transform
    (* 8    (length _imu_to_sensor_transform)) 4
    ;; float64[] _lidar_to_sensor_transform
    (* 8    (length _lidar_to_sensor_transform)) 4
    ;; float64[] _extrinsic
    (* 8    (length _extrinsic)) 4
    ;; uint32 _pixels_per_column
    4
    ;; uint32 _columns_per_frame
    4
    ;; int32[] _pixel_shift_by_row
    (* 4    (length _pixel_shift_by_row)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _sn
       (write-long (length _sn) s) (princ _sn s)
     ;; string _fw_rev
       (write-long (length _fw_rev) s) (princ _fw_rev s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _prod_line
       (write-long (length _prod_line) s) (princ _prod_line s)
     ;; float64[] _beam_azimuth_angles
     (write-long (length _beam_azimuth_angles) s)
     (dotimes (i (length _beam_azimuth_angles))
       (sys::poke (elt _beam_azimuth_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _beam_altitude_angles
     (write-long (length _beam_altitude_angles) s)
     (dotimes (i (length _beam_altitude_angles))
       (sys::poke (elt _beam_altitude_angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _lidar_origin_to_beam_origin_mm
       (sys::poke _lidar_origin_to_beam_origin_mm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _imu_to_sensor_transform
     (write-long (length _imu_to_sensor_transform) s)
     (dotimes (i (length _imu_to_sensor_transform))
       (sys::poke (elt _imu_to_sensor_transform i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _lidar_to_sensor_transform
     (write-long (length _lidar_to_sensor_transform) s)
     (dotimes (i (length _lidar_to_sensor_transform))
       (sys::poke (elt _lidar_to_sensor_transform i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _extrinsic
     (write-long (length _extrinsic) s)
     (dotimes (i (length _extrinsic))
       (sys::poke (elt _extrinsic i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32 _pixels_per_column
       (write-long _pixels_per_column s)
     ;; uint32 _columns_per_frame
       (write-long _columns_per_frame s)
     ;; int32[] _pixel_shift_by_row
     (write-long (length _pixel_shift_by_row) s)
     (dotimes (i (length _pixel_shift_by_row))
       (write-long (elt _pixel_shift_by_row i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _fw_rev
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fw_rev (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _prod_line
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prod_line (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _beam_azimuth_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beam_azimuth_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _beam_azimuth_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _beam_altitude_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _beam_altitude_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _beam_altitude_angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _lidar_origin_to_beam_origin_mm
     (setq _lidar_origin_to_beam_origin_mm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _imu_to_sensor_transform
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _imu_to_sensor_transform (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _imu_to_sensor_transform i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _lidar_to_sensor_transform
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lidar_to_sensor_transform (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _lidar_to_sensor_transform i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _extrinsic
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _extrinsic (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _extrinsic i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint32 _pixels_per_column
     (setq _pixels_per_column (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _columns_per_frame
     (setq _columns_per_frame (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _pixel_shift_by_row
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pixel_shift_by_row (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pixel_shift_by_row i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::OusterInfo :md5sum-) "452bbd97f95e92c61390ef448c12ce29")
(setf (get mrs_msgs::OusterInfo :datatype-) "mrs_msgs/OusterInfo")
(setf (get mrs_msgs::OusterInfo :definition-)
      "string name
string sn
string fw_rev
string mode
string prod_line
float64[] beam_azimuth_angles
float64[] beam_altitude_angles
float64 lidar_origin_to_beam_origin_mm
float64[] imu_to_sensor_transform
float64[] lidar_to_sensor_transform
float64[] extrinsic
uint32 pixels_per_column
uint32 columns_per_frame
int32[] pixel_shift_by_row

")



(provide :mrs_msgs/OusterInfo "452bbd97f95e92c61390ef448c12ce29")


