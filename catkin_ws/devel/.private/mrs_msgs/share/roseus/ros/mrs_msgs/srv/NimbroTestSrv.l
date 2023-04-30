;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::NimbroTestSrv)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'NimbroTestSrv (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::NIMBROTESTSRV")
  (make-package "MRS_MSGS::NIMBROTESTSRV"))
(unless (find-package "MRS_MSGS::NIMBROTESTSRVREQUEST")
  (make-package "MRS_MSGS::NIMBROTESTSRVREQUEST"))
(unless (find-package "MRS_MSGS::NIMBROTESTSRVRESPONSE")
  (make-package "MRS_MSGS::NIMBROTESTSRVRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::NimbroTestSrvRequest
  :super ros::object
  :slots (_uav_name _payload ))

(defmethod mrs_msgs::NimbroTestSrvRequest
  (:init
   (&key
    ((:uav_name __uav_name) "")
    ((:payload __payload) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _uav_name (string __uav_name))
   (setq _payload __payload)
   self)
  (:uav_name
   (&optional __uav_name)
   (if __uav_name (setq _uav_name __uav_name)) _uav_name)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; string _uav_name
    4 (length _uav_name)
    ;; float64[] _payload
    (* 8    (length _payload)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uav_name
       (write-long (length _uav_name) s) (princ _uav_name s)
     ;; float64[] _payload
     (write-long (length _payload) s)
     (dotimes (i (length _payload))
       (sys::poke (elt _payload i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uav_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _payload
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _payload (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _payload i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass mrs_msgs::NimbroTestSrvResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::NimbroTestSrvResponse
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

(defclass mrs_msgs::NimbroTestSrv
  :super ros::object
  :slots ())

(setf (get mrs_msgs::NimbroTestSrv :md5sum-) "d75faa959a02195d82deada15533aecd")
(setf (get mrs_msgs::NimbroTestSrv :datatype-) "mrs_msgs/NimbroTestSrv")
(setf (get mrs_msgs::NimbroTestSrv :request) mrs_msgs::NimbroTestSrvRequest)
(setf (get mrs_msgs::NimbroTestSrv :response) mrs_msgs::NimbroTestSrvResponse)

(defmethod mrs_msgs::NimbroTestSrvRequest
  (:response () (instance mrs_msgs::NimbroTestSrvResponse :init)))

(setf (get mrs_msgs::NimbroTestSrvRequest :md5sum-) "d75faa959a02195d82deada15533aecd")
(setf (get mrs_msgs::NimbroTestSrvRequest :datatype-) "mrs_msgs/NimbroTestSrvRequest")
(setf (get mrs_msgs::NimbroTestSrvRequest :definition-)
      "string uav_name
float64[] payload

---
bool success
string message

")

(setf (get mrs_msgs::NimbroTestSrvResponse :md5sum-) "d75faa959a02195d82deada15533aecd")
(setf (get mrs_msgs::NimbroTestSrvResponse :datatype-) "mrs_msgs/NimbroTestSrvResponse")
(setf (get mrs_msgs::NimbroTestSrvResponse :definition-)
      "string uav_name
float64[] payload

---
bool success
string message

")



(provide :mrs_msgs/NimbroTestSrv "d75faa959a02195d82deada15533aecd")


