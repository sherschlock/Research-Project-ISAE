;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::ProfilerUpdate)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'ProfilerUpdate (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::PROFILERUPDATE")
  (make-package "MRS_MSGS::PROFILERUPDATE"))

(in-package "ROS")
;;//! \htmlinclude ProfilerUpdate.msg.html


(intern "*START*" (find-package "MRS_MSGS::PROFILERUPDATE"))
(shadow '*START* (find-package "MRS_MSGS::PROFILERUPDATE"))
(defconstant mrs_msgs::ProfilerUpdate::*START* "start")
(intern "*END*" (find-package "MRS_MSGS::PROFILERUPDATE"))
(shadow '*END* (find-package "MRS_MSGS::PROFILERUPDATE"))
(defconstant mrs_msgs::ProfilerUpdate::*END* "end")

(defun mrs_msgs::ProfilerUpdate-to-symbol (const)
  (cond
        (t nil)))

(defclass mrs_msgs::ProfilerUpdate
  :super ros::object
  :slots (_stamp _node_name _routine_name _iteration _is_periodic _expected_rate _expected_start _real_start _duration _event ))

(defmethod mrs_msgs::ProfilerUpdate
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:node_name __node_name) "")
    ((:routine_name __routine_name) "")
    ((:iteration __iteration) 0)
    ((:is_periodic __is_periodic) nil)
    ((:expected_rate __expected_rate) 0.0)
    ((:expected_start __expected_start) 0.0)
    ((:real_start __real_start) 0.0)
    ((:duration __duration) 0.0)
    ((:event __event) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _node_name (string __node_name))
   (setq _routine_name (string __routine_name))
   (setq _iteration (round __iteration))
   (setq _is_periodic __is_periodic)
   (setq _expected_rate (float __expected_rate))
   (setq _expected_start (float __expected_start))
   (setq _real_start (float __real_start))
   (setq _duration (float __duration))
   (setq _event (string __event))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:routine_name
   (&optional __routine_name)
   (if __routine_name (setq _routine_name __routine_name)) _routine_name)
  (:iteration
   (&optional __iteration)
   (if __iteration (setq _iteration __iteration)) _iteration)
  (:is_periodic
   (&optional (__is_periodic :null))
   (if (not (eq __is_periodic :null)) (setq _is_periodic __is_periodic)) _is_periodic)
  (:expected_rate
   (&optional __expected_rate)
   (if __expected_rate (setq _expected_rate __expected_rate)) _expected_rate)
  (:expected_start
   (&optional __expected_start)
   (if __expected_start (setq _expected_start __expected_start)) _expected_start)
  (:real_start
   (&optional __real_start)
   (if __real_start (setq _real_start __real_start)) _real_start)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string _node_name
    4 (length _node_name)
    ;; string _routine_name
    4 (length _routine_name)
    ;; int64 _iteration
    8
    ;; bool _is_periodic
    1
    ;; float64 _expected_rate
    8
    ;; float64 _expected_start
    8
    ;; float64 _real_start
    8
    ;; float64 _duration
    8
    ;; string _event
    4 (length _event)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; string _routine_name
       (write-long (length _routine_name) s) (princ _routine_name s)
     ;; int64 _iteration
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _iteration (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _iteration) (= (length (_iteration . bv)) 2)) ;; bignum
              (write-long (ash (elt (_iteration . bv) 0) 0) s)
              (write-long (ash (elt (_iteration . bv) 1) -1) s))
             ((and (class _iteration) (= (length (_iteration . bv)) 1)) ;; big1
              (write-long (elt (_iteration . bv) 0) s)
              (write-long (if (>= _iteration 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _iteration s)(write-long (if (>= _iteration 0) 0 #xffffffff) s)))
     ;; bool _is_periodic
       (if _is_periodic (write-byte -1 s) (write-byte 0 s))
     ;; float64 _expected_rate
       (sys::poke _expected_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _expected_start
       (sys::poke _expected_start (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _real_start
       (sys::poke _real_start (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _event
       (write-long (length _event) s) (princ _event s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _routine_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _routine_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _iteration
#+(or :alpha :irix6 :x86_64)
      (setf _iteration (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _iteration (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _is_periodic
     (setq _is_periodic (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _expected_rate
     (setq _expected_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _expected_start
     (setq _expected_start (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _real_start
     (setq _real_start (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _event
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mrs_msgs::ProfilerUpdate :md5sum-) "eea4d095c0f839a7ab6eec8d18760e77")
(setf (get mrs_msgs::ProfilerUpdate :datatype-) "mrs_msgs/ProfilerUpdate")
(setf (get mrs_msgs::ProfilerUpdate :definition-)
      "string START=start
string END=end
time stamp
string node_name
string routine_name
int64 iteration
bool is_periodic
float64 expected_rate
float64 expected_start
float64 real_start
float64 duration
string event

")



(provide :mrs_msgs/ProfilerUpdate "eea4d095c0f839a7ab6eec8d18760e77")


