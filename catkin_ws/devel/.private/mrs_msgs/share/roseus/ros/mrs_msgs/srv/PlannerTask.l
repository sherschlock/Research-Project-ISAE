;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::PlannerTask)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'PlannerTask (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PLANNERTASK")
  (make-package "MRS_MSGS::PLANNERTASK"))
(unless (find-package "MRS_MSGS::PLANNERTASKREQUEST")
  (make-package "MRS_MSGS::PLANNERTASKREQUEST"))
(unless (find-package "MRS_MSGS::PLANNERTASKRESPONSE")
  (make-package "MRS_MSGS::PLANNERTASKRESPONSE"))

(in-package "ROS")





(defclass mrs_msgs::PlannerTaskRequest
  :super ros::object
  :slots (_start _finish ))

(defmethod mrs_msgs::PlannerTaskRequest
  (:init
   (&key
    ((:start __start) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:finish __finish) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _start __start)
   (setq _finish __finish)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:finish
   (&optional __finish)
   (if __finish (setq _finish __finish)) _finish)
  (:serialization-length
   ()
   (+
    ;; float64[4] _start
    (* 8    4)
    ;; float64[4] _finish
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[4] _start
     (dotimes (i 4)
       (sys::poke (elt _start i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _finish
     (dotimes (i 4)
       (sys::poke (elt _finish i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[4] _start
   (dotimes (i (length _start))
     (setf (elt _start i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _finish
   (dotimes (i (length _finish))
     (setf (elt _finish i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass mrs_msgs::PlannerTaskResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mrs_msgs::PlannerTaskResponse
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

(defclass mrs_msgs::PlannerTask
  :super ros::object
  :slots ())

(setf (get mrs_msgs::PlannerTask :md5sum-) "6dc53075a8451e1b38f8acc478452c9d")
(setf (get mrs_msgs::PlannerTask :datatype-) "mrs_msgs/PlannerTask")
(setf (get mrs_msgs::PlannerTask :request) mrs_msgs::PlannerTaskRequest)
(setf (get mrs_msgs::PlannerTask :response) mrs_msgs::PlannerTaskResponse)

(defmethod mrs_msgs::PlannerTaskRequest
  (:response () (instance mrs_msgs::PlannerTaskResponse :init)))

(setf (get mrs_msgs::PlannerTaskRequest :md5sum-) "6dc53075a8451e1b38f8acc478452c9d")
(setf (get mrs_msgs::PlannerTaskRequest :datatype-) "mrs_msgs/PlannerTaskRequest")
(setf (get mrs_msgs::PlannerTaskRequest :definition-)
      "float64[4] start
float64[4] finish
---
bool success
string message

")

(setf (get mrs_msgs::PlannerTaskResponse :md5sum-) "6dc53075a8451e1b38f8acc478452c9d")
(setf (get mrs_msgs::PlannerTaskResponse :datatype-) "mrs_msgs/PlannerTaskResponse")
(setf (get mrs_msgs::PlannerTaskResponse :definition-)
      "float64[4] start
float64[4] finish
---
bool success
string message

")



(provide :mrs_msgs/PlannerTask "6dc53075a8451e1b38f8acc478452c9d")


