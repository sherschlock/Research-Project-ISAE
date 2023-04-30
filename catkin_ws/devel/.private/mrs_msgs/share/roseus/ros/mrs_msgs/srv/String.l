;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::String)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'String (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::STRING")
  (make-package "MRS_MSGS::STRING"))
(unless (find-package "MRS_MSGS::STRINGREQUEST")
  (make-package "MRS_MSGS::STRINGREQUEST"))
(unless (find-package "MRS_MSGS::STRINGRESPONSE")
  (make-package "MRS_MSGS::STRINGRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::StringRequest
  :super ros::object
  :slots (_value ))

(defmethod mrs_msgs::StringRequest
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mrs_msgs::StringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::StringResponse
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

(defclass mrs_msgs::String
  :super ros::object
  :slots ())

(setf (get mrs_msgs::String :md5sum-) "43ad6a9b380ac342e4b20e501a2fd46c")
(setf (get mrs_msgs::String :datatype-) "mrs_msgs/String")
(setf (get mrs_msgs::String :request) mrs_msgs::StringRequest)
(setf (get mrs_msgs::String :response) mrs_msgs::StringResponse)

(defmethod mrs_msgs::StringRequest
  (:response () (instance mrs_msgs::StringResponse :init)))

(setf (get mrs_msgs::StringRequest :md5sum-) "43ad6a9b380ac342e4b20e501a2fd46c")
(setf (get mrs_msgs::StringRequest :datatype-) "mrs_msgs/StringRequest")
(setf (get mrs_msgs::StringRequest :definition-)
      "string value
---
bool success
string message

")

(setf (get mrs_msgs::StringResponse :md5sum-) "43ad6a9b380ac342e4b20e501a2fd46c")
(setf (get mrs_msgs::StringResponse :datatype-) "mrs_msgs/StringResponse")
(setf (get mrs_msgs::StringResponse :definition-)
      "string value
---
bool success
string message

")



(provide :mrs_msgs/String "43ad6a9b380ac342e4b20e501a2fd46c")


