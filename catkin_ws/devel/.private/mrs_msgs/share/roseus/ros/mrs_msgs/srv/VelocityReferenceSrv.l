;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::VelocityReferenceSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'VelocityReferenceSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCESRV")
  (make-package "MRS_MSGS::VELOCITYREFERENCESRV"))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCESRVREQUEST")
  (make-package "MRS_MSGS::VELOCITYREFERENCESRVREQUEST"))
(unless (find-package "MRS_MSGS::VELOCITYREFERENCESRVRESPONSE")
  (make-package "MRS_MSGS::VELOCITYREFERENCESRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::VelocityReferenceSrvRequest
  :super ros::object
  :slots (_reference ))

(defmethod mrs_msgs::VelocityReferenceSrvRequest
  (:init
   (&key
    ((:reference __reference) (instance mrs_msgs::VelocityReference :init))
    )
   (send-super :init)
   (setq _reference __reference)
   self)
  (:reference
   (&rest __reference)
   (if (keywordp (car __reference))
       (send* _reference __reference)
     (progn
       (if __reference (setq _reference (car __reference)))
       _reference)))
  (:serialization-length
   ()
   (+
    ;; mrs_msgs/VelocityReference _reference
    (send _reference :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mrs_msgs/VelocityReference _reference
       (send _reference :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mrs_msgs/VelocityReference _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;;
   self)
  )

(defclass mrs_msgs::VelocityReferenceSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::VelocityReferenceSrvResponse
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

(defclass mrs_msgs::VelocityReferenceSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::VelocityReferenceSrv :md5sum-) "0cfa385329ffcd17cfb0ba49845e356c")
(setf (get mrs_msgs::VelocityReferenceSrv :datatype-) "mrs_msgs/VelocityReferenceSrv")
(setf (get mrs_msgs::VelocityReferenceSrv :request) mrs_msgs::VelocityReferenceSrvRequest)
(setf (get mrs_msgs::VelocityReferenceSrv :response) mrs_msgs::VelocityReferenceSrvResponse)

(defmethod mrs_msgs::VelocityReferenceSrvRequest
  (:response () (instance mrs_msgs::VelocityReferenceSrvResponse :init)))

(setf (get mrs_msgs::VelocityReferenceSrvRequest :md5sum-) "0cfa385329ffcd17cfb0ba49845e356c")
(setf (get mrs_msgs::VelocityReferenceSrvRequest :datatype-) "mrs_msgs/VelocityReferenceSrvRequest")
(setf (get mrs_msgs::VelocityReferenceSrvRequest :definition-)
      "mrs_msgs/VelocityReference reference

================================================================================
MSG: mrs_msgs/VelocityReference
# desired velocity [m/s]
geometry_msgs/Vector3 velocity

# altitude
float64 altitude

# desired heading and its rate, optional
# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"
float64 heading
float64 heading_rate

# overrides vertical velocity
bool use_altitude

bool use_heading

# overrides heading
bool use_heading_rate

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string message

")

(setf (get mrs_msgs::VelocityReferenceSrvResponse :md5sum-) "0cfa385329ffcd17cfb0ba49845e356c")
(setf (get mrs_msgs::VelocityReferenceSrvResponse :datatype-) "mrs_msgs/VelocityReferenceSrvResponse")
(setf (get mrs_msgs::VelocityReferenceSrvResponse :definition-)
      "mrs_msgs/VelocityReference reference

================================================================================
MSG: mrs_msgs/VelocityReference
# desired velocity [m/s]
geometry_msgs/Vector3 velocity

# altitude
float64 altitude

# desired heading and its rate, optional
# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"
float64 heading
float64 heading_rate

# overrides vertical velocity
bool use_altitude

bool use_heading

# overrides heading
bool use_heading_rate

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
bool success
string message

")



(provide :mrs_msgs/VelocityReferenceSrv "0cfa385329ffcd17cfb0ba49845e356c")


