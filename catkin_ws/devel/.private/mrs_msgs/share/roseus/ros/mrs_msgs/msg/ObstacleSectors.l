;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ObstacleSectors)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ObstacleSectors (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::OBSTACLESECTORS")
  (make-package "MRS_MSGS::OBSTACLESECTORS"))

(in-package "ROS")
;;//! \htmlinclude ObstacleSectors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OBSTACLE_NOT_DETECTED*" (find-package "MRS_MSGS::OBSTACLESECTORS"))
(shadow '*OBSTACLE_NOT_DETECTED* (find-package "MRS_MSGS::OBSTACLESECTORS"))
(defconstant mrs_msgs::ObstacleSectors::*OBSTACLE_NOT_DETECTED* -1.0)
(intern "*OBSTACLE_NO_DATA*" (find-package "MRS_MSGS::OBSTACLESECTORS"))
(shadow '*OBSTACLE_NO_DATA* (find-package "MRS_MSGS::OBSTACLESECTORS"))
(defconstant mrs_msgs::ObstacleSectors::*OBSTACLE_NO_DATA* -2.0)
(intern "*SENSOR_NONE*" (find-package "MRS_MSGS::OBSTACLESECTORS"))
(shadow '*SENSOR_NONE* (find-package "MRS_MSGS::OBSTACLESECTORS"))
(defconstant mrs_msgs::ObstacleSectors::*SENSOR_NONE* -1)
(intern "*SENSOR_DEPTH*" (find-package "MRS_MSGS::OBSTACLESECTORS"))
(shadow '*SENSOR_DEPTH* (find-package "MRS_MSGS::OBSTACLESECTORS"))
(defconstant mrs_msgs::ObstacleSectors::*SENSOR_DEPTH* 0)
(intern "*SENSOR_LIDAR1D*" (find-package "MRS_MSGS::OBSTACLESECTORS"))
(shadow '*SENSOR_LIDAR1D* (find-package "MRS_MSGS::OBSTACLESECTORS"))
(defconstant mrs_msgs::ObstacleSectors::*SENSOR_LIDAR1D* 1)
(intern "*SENSOR_LIDAR2D*" (find-package "MRS_MSGS::OBSTACLESECTORS"))
(shadow '*SENSOR_LIDAR2D* (find-package "MRS_MSGS::OBSTACLESECTORS"))
(defconstant mrs_msgs::ObstacleSectors::*SENSOR_LIDAR2D* 2)
(intern "*SENSOR_LIDAR3D*" (find-package "MRS_MSGS::OBSTACLESECTORS"))
(shadow '*SENSOR_LIDAR3D* (find-package "MRS_MSGS::OBSTACLESECTORS"))
(defconstant mrs_msgs::ObstacleSectors::*SENSOR_LIDAR3D* 3)

(defun mrs_msgs::ObstacleSectors-to-symbol (const)
  (cond
        ((= const -1) 'mrs_msgs::ObstacleSectors::*SENSOR_NONE*)
        ((= const 0) 'mrs_msgs::ObstacleSectors::*SENSOR_DEPTH*)
        ((= const 1) 'mrs_msgs::ObstacleSectors::*SENSOR_LIDAR1D*)
        ((= const 2) 'mrs_msgs::ObstacleSectors::*SENSOR_LIDAR2D*)
        ((= const 3) 'mrs_msgs::ObstacleSectors::*SENSOR_LIDAR3D*)
        (t nil)))

(defclass mrs_msgs::ObstacleSectors
  :super ros::object
  :slots (_header _n_horizontal_sectors _sectors_vertical_fov _sectors _sector_sensors ))

(defmethod mrs_msgs::ObstacleSectors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:n_horizontal_sectors __n_horizontal_sectors) 0)
    ((:sectors_vertical_fov __sectors_vertical_fov) 0.0)
    ((:sectors __sectors) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sector_sensors __sector_sensors) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _n_horizontal_sectors (round __n_horizontal_sectors))
   (setq _sectors_vertical_fov (float __sectors_vertical_fov))
   (setq _sectors __sectors)
   (setq _sector_sensors __sector_sensors)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:n_horizontal_sectors
   (&optional __n_horizontal_sectors)
   (if __n_horizontal_sectors (setq _n_horizontal_sectors __n_horizontal_sectors)) _n_horizontal_sectors)
  (:sectors_vertical_fov
   (&optional __sectors_vertical_fov)
   (if __sectors_vertical_fov (setq _sectors_vertical_fov __sectors_vertical_fov)) _sectors_vertical_fov)
  (:sectors
   (&optional __sectors)
   (if __sectors (setq _sectors __sectors)) _sectors)
  (:sector_sensors
   (&optional __sector_sensors)
   (if __sector_sensors (setq _sector_sensors __sector_sensors)) _sector_sensors)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _n_horizontal_sectors
    4
    ;; float64 _sectors_vertical_fov
    8
    ;; float64[] _sectors
    (* 8    (length _sectors)) 4
    ;; int8[] _sector_sensors
    (* 1    (length _sector_sensors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _n_horizontal_sectors
       (write-long _n_horizontal_sectors s)
     ;; float64 _sectors_vertical_fov
       (sys::poke _sectors_vertical_fov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _sectors
     (write-long (length _sectors) s)
     (dotimes (i (length _sectors))
       (sys::poke (elt _sectors i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int8[] _sector_sensors
     (write-long (length _sector_sensors) s)
     (dotimes (i (length _sector_sensors))
       (write-byte (elt _sector_sensors i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _n_horizontal_sectors
     (setq _n_horizontal_sectors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _sectors_vertical_fov
     (setq _sectors_vertical_fov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _sectors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sectors (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _sectors i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int8[] _sector_sensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sector_sensors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sector_sensors i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _sector_sensors i) 127) (setf (elt _sector_sensors i) (- (elt _sector_sensors i) 256)))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::ObstacleSectors :md5sum-) "b30315b35f44636daa49d3ef18ea3c4a")
(setf (get mrs_msgs::ObstacleSectors :datatype-) "mrs_msgs/ObstacleSectors")
(setf (get mrs_msgs::ObstacleSectors :definition-)
      "# This message represents the output from the mrs_bumper package.
#
# The *sectors* variable contains information about obstacles in the horizontal,
# bottom and up sectors. Horizontal sectors take up the first part of the array.
# Bottom and up sectors are the second and first elements from the end of the array:
# sectors[0, 1, ..., n_horizontal_sectors-1] -> horizontal sectors
# sectors[n_horizontal_sectors]              -> bottom sector
# sectors[n_horizontal_sectors+1]            -> top sector
#
# The horizontal sectors are indexed counterclockwise, starting from the front facing
# sector, relative to the MAV orientation (see picture below). The last two
# elements of the *sectors* variable are the above and below sectors, respectively.
#
#         TOP VIEW
#         --------
#
#        \\         /
#         \\   0   /   (forward)
#          \\     /        x 
#                         ^
#            O O          |
#        1    X    3   <--* z
#            O O       y
#                
#          /     \\
#         /   2   \\
#        /         \\

# Time at which the data in this message was generated, coordinate frame ID.
std_msgs/Header header

# Number of horizontal bumper sectors (total number of sectors -2).
uint32    n_horizontal_sectors

# Vertical FOV of the individual horizontal sectors.
float64   sectors_vertical_fov

# Distance to closest detected obstacle in each sector.
float64[] sectors

# Sensor ID of the sensor, which was used for obstacle detection in each sector.
int8[]    sector_sensors

## Obstacle distance special values.
float64 OBSTACLE_NOT_DETECTED=-1
float64 OBSTACLE_NO_DATA=-2

## Sensor types enum.
int8 SENSOR_NONE=-1
int8 SENSOR_DEPTH=0
int8 SENSOR_LIDAR1D=1
int8 SENSOR_LIDAR2D=2
int8 SENSOR_LIDAR3D=3

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mrs_msgs/ObstacleSectors "b30315b35f44636daa49d3ef18ea3c4a")


