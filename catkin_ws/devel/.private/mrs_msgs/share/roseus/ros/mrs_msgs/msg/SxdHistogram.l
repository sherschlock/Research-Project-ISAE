;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::SxdHistogram)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'SxdHistogram (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SXDHISTOGRAM")
  (make-package "MRS_MSGS::SXDHISTOGRAM"))

(in-package "ROS")
;;//! \htmlinclude SxdHistogram.msg.html


(defclass mrs_msgs::SxdHistogram
  :super ros::object
  :slots (_stamp _num_detections _channels ))

(defmethod mrs_msgs::SxdHistogram
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:num_detections __num_detections) 0)
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _num_detections (round __num_detections))
   (setq _channels __channels)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:num_detections
   (&optional __num_detections)
   (if __num_detections (setq _num_detections __num_detections)) _num_detections)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint64 _num_detections
    8
    ;; uint64[] _channels
    (* 8    (length _channels)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint64 _num_detections
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num_detections (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num_detections) (= (length (_num_detections . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num_detections . bv) 0) 0) s)
              (write-long (ash (elt (_num_detections . bv) 1) -1) s))
             ((and (class _num_detections) (= (length (_num_detections . bv)) 1)) ;; big1
              (write-long (elt (_num_detections . bv) 0) s)
              (write-long (if (>= _num_detections 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num_detections s)(write-long (if (>= _num_detections 0) 0 #xffffffff) s)))
     ;; uint64[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _channels i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _channels i)) (= (length ((elt _channels i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _channels i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _channels i) . bv) 1) -1) s))
             ((and (class (elt _channels i)) (= (length ((elt _channels i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _channels i) . bv) 0) s)
              (write-long (if (>= (elt _channels i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _channels i) s)(write-long (if (>= (elt _channels i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _num_detections
     
#+(or :alpha :irix6 :x86_64)
      (setf _num_detections (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num_detections (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (instantiate integer-vector n))
     (dotimes (i n)
     
#+(or :alpha :irix6 :x86_64)
      (setf (elt _channels i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _channels i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::SxdHistogram :md5sum-) "94b8a4b14e80fd9c3a0635e2400f1a2b")
(setf (get mrs_msgs::SxdHistogram :datatype-) "mrs_msgs/SxdHistogram")
(setf (get mrs_msgs::SxdHistogram :definition-)
      "time stamp
uint64 num_detections
uint64[] channels

")



(provide :mrs_msgs/SxdHistogram "94b8a4b14e80fd9c3a0635e2400f1a2b")


