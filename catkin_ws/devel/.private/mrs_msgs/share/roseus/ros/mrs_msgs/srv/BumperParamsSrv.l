;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BumperParamsSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BumperParamsSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BUMPERPARAMSSRV")
  (make-package "MRS_MSGS::BUMPERPARAMSSRV"))
(unless (find-package "MRS_MSGS::BUMPERPARAMSSRVREQUEST")
  (make-package "MRS_MSGS::BUMPERPARAMSSRVREQUEST"))
(unless (find-package "MRS_MSGS::BUMPERPARAMSSRVRESPONSE")
  (make-package "MRS_MSGS::BUMPERPARAMSSRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::BumperParamsSrvRequest
  :super ros::object
  :slots (_horizontal_limit _vertical_limit _repulsion_horizontal_limit _repulsion_vertical_limit _repulsion_horizontal_offset _repulsion_vertical_offset ))

(defmethod mrs_msgs::BumperParamsSrvRequest
  (:init
   (&key
    ((:horizontal_limit __horizontal_limit) 0.0)
    ((:vertical_limit __vertical_limit) 0.0)
    ((:repulsion_horizontal_limit __repulsion_horizontal_limit) 0.0)
    ((:repulsion_vertical_limit __repulsion_vertical_limit) 0.0)
    ((:repulsion_horizontal_offset __repulsion_horizontal_offset) 0.0)
    ((:repulsion_vertical_offset __repulsion_vertical_offset) 0.0)
    )
   (send-super :init)
   (setq _horizontal_limit (float __horizontal_limit))
   (setq _vertical_limit (float __vertical_limit))
   (setq _repulsion_horizontal_limit (float __repulsion_horizontal_limit))
   (setq _repulsion_vertical_limit (float __repulsion_vertical_limit))
   (setq _repulsion_horizontal_offset (float __repulsion_horizontal_offset))
   (setq _repulsion_vertical_offset (float __repulsion_vertical_offset))
   self)
  (:horizontal_limit
   (&optional __horizontal_limit)
   (if __horizontal_limit (setq _horizontal_limit __horizontal_limit)) _horizontal_limit)
  (:vertical_limit
   (&optional __vertical_limit)
   (if __vertical_limit (setq _vertical_limit __vertical_limit)) _vertical_limit)
  (:repulsion_horizontal_limit
   (&optional __repulsion_horizontal_limit)
   (if __repulsion_horizontal_limit (setq _repulsion_horizontal_limit __repulsion_horizontal_limit)) _repulsion_horizontal_limit)
  (:repulsion_vertical_limit
   (&optional __repulsion_vertical_limit)
   (if __repulsion_vertical_limit (setq _repulsion_vertical_limit __repulsion_vertical_limit)) _repulsion_vertical_limit)
  (:repulsion_horizontal_offset
   (&optional __repulsion_horizontal_offset)
   (if __repulsion_horizontal_offset (setq _repulsion_horizontal_offset __repulsion_horizontal_offset)) _repulsion_horizontal_offset)
  (:repulsion_vertical_offset
   (&optional __repulsion_vertical_offset)
   (if __repulsion_vertical_offset (setq _repulsion_vertical_offset __repulsion_vertical_offset)) _repulsion_vertical_offset)
  (:serialization-length
   ()
   (+
    ;; float64 _horizontal_limit
    8
    ;; float64 _vertical_limit
    8
    ;; float64 _repulsion_horizontal_limit
    8
    ;; float64 _repulsion_vertical_limit
    8
    ;; float64 _repulsion_horizontal_offset
    8
    ;; float64 _repulsion_vertical_offset
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _horizontal_limit
       (sys::poke _horizontal_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_limit
       (sys::poke _vertical_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _repulsion_horizontal_limit
       (sys::poke _repulsion_horizontal_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _repulsion_vertical_limit
       (sys::poke _repulsion_vertical_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _repulsion_horizontal_offset
       (sys::poke _repulsion_horizontal_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _repulsion_vertical_offset
       (sys::poke _repulsion_vertical_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _horizontal_limit
     (setq _horizontal_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_limit
     (setq _vertical_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _repulsion_horizontal_limit
     (setq _repulsion_horizontal_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _repulsion_vertical_limit
     (setq _repulsion_vertical_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _repulsion_horizontal_offset
     (setq _repulsion_horizontal_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _repulsion_vertical_offset
     (setq _repulsion_vertical_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass mrs_msgs::BumperParamsSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::BumperParamsSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::BumperParamsSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::BumperParamsSrv :md5sum-) "2b4f2150f024cdd7b51d145eb3b4559b")
(setf (get mrs_msgs::BumperParamsSrv :datatype-) "mrs_msgs/BumperParamsSrv")
(setf (get mrs_msgs::BumperParamsSrv :request) mrs_msgs::BumperParamsSrvRequest)
(setf (get mrs_msgs::BumperParamsSrv :response) mrs_msgs::BumperParamsSrvResponse)

(defmethod mrs_msgs::BumperParamsSrvRequest
  (:response () (instance mrs_msgs::BumperParamsSrvResponse :init)))

(setf (get mrs_msgs::BumperParamsSrvRequest :md5sum-) "2b4f2150f024cdd7b51d145eb3b4559b")
(setf (get mrs_msgs::BumperParamsSrvRequest :datatype-) "mrs_msgs/BumperParamsSrvRequest")
(setf (get mrs_msgs::BumperParamsSrvRequest :definition-)
      "float64 horizontal_limit
float64 vertical_limit

float64 repulsion_horizontal_limit
float64 repulsion_vertical_limit

float64 repulsion_horizontal_offset
float64 repulsion_vertical_offset

---
bool success
string message

")

(setf (get mrs_msgs::BumperParamsSrvResponse :md5sum-) "2b4f2150f024cdd7b51d145eb3b4559b")
(setf (get mrs_msgs::BumperParamsSrvResponse :datatype-) "mrs_msgs/BumperParamsSrvResponse")
(setf (get mrs_msgs::BumperParamsSrvResponse :definition-)
      "float64 horizontal_limit
float64 vertical_limit

float64 repulsion_horizontal_limit
float64 repulsion_vertical_limit

float64 repulsion_horizontal_offset
float64 repulsion_vertical_offset

---
bool success
string message

")



(provide :mrs_msgs/BumperParamsSrv "2b4f2150f024cdd7b51d145eb3b4559b")


