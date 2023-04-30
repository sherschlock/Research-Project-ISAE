;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::SetInt)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'SetInt (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SETINT")
  (make-package "MRS_MSGS::SETINT"))
(unless (find-package "MRS_MSGS::SETINTREQUEST")
  (make-package "MRS_MSGS::SETINTREQUEST"))
(unless (find-package "MRS_MSGS::SETINTRESPONSE")
  (make-package "MRS_MSGS::SETINTRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::SetIntRequest
  :super ros::object
  :slots (_value ))

(defmethod mrs_msgs::SetIntRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _value
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value) (= (length (_value . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value . bv) 0) 0) s)
              (write-long (ash (elt (_value . bv) 1) -1) s))
             ((and (class _value) (= (length (_value . bv)) 1)) ;; big1
              (write-long (elt (_value . bv) 0) s)
              (write-long (if (>= _value 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value s)(write-long (if (>= _value 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _value
#+(or :alpha :irix6 :x86_64)
      (setf _value (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass mrs_msgs::SetIntResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::SetIntResponse
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

(defclass mrs_msgs::SetInt
  :super ros::object
  :slots ())

(setf (get mrs_msgs::SetInt :md5sum-) "7515237945efdc8e998a5710a2ed1181")
(setf (get mrs_msgs::SetInt :datatype-) "mrs_msgs/SetInt")
(setf (get mrs_msgs::SetInt :request) mrs_msgs::SetIntRequest)
(setf (get mrs_msgs::SetInt :response) mrs_msgs::SetIntResponse)

(defmethod mrs_msgs::SetIntRequest
  (:response () (instance mrs_msgs::SetIntResponse :init)))

(setf (get mrs_msgs::SetIntRequest :md5sum-) "7515237945efdc8e998a5710a2ed1181")
(setf (get mrs_msgs::SetIntRequest :datatype-) "mrs_msgs/SetIntRequest")
(setf (get mrs_msgs::SetIntRequest :definition-)
      "int64 value
---
bool success
string message

")

(setf (get mrs_msgs::SetIntResponse :md5sum-) "7515237945efdc8e998a5710a2ed1181")
(setf (get mrs_msgs::SetIntResponse :datatype-) "mrs_msgs/SetIntResponse")
(setf (get mrs_msgs::SetIntResponse :definition-)
      "int64 value
---
bool success
string message

")



(provide :mrs_msgs/SetInt "7515237945efdc8e998a5710a2ed1181")


