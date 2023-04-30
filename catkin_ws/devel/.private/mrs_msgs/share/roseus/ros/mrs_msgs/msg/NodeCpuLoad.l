;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::NodeCpuLoad)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'NodeCpuLoad (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::NODECPULOAD")
  (make-package "MRS_MSGS::NODECPULOAD"))

(in-package "ROS")
;;//! \htmlinclude NodeCpuLoad.msg.html


(defclass mrs_msgs::NodeCpuLoad
  :super ros::object
  :slots (_node_names _cpu_loads ))

(defmethod mrs_msgs::NodeCpuLoad
  (:init
   (&key
    ((:node_names __node_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:cpu_loads __cpu_loads) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _node_names __node_names)
   (setq _cpu_loads __cpu_loads)
   self)
  (:node_names
   (&optional __node_names)
   (if __node_names (setq _node_names __node_names)) _node_names)
  (:cpu_loads
   (&optional __cpu_loads)
   (if __cpu_loads (setq _cpu_loads __cpu_loads)) _cpu_loads)
  (:serialization-length
   ()
   (+
    ;; string[] _node_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _node_names)) 4
    ;; float32[] _cpu_loads
    (* 4    (length _cpu_loads)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _node_names
     (write-long (length _node_names) s)
     (dolist (elem _node_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _cpu_loads
     (write-long (length _cpu_loads) s)
     (dotimes (i (length _cpu_loads))
       (sys::poke (elt _cpu_loads i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _node_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _node_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _cpu_loads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cpu_loads (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cpu_loads i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get mrs_msgs::NodeCpuLoad :md5sum-) "fde7b9ae5b72c740d25f009d8731c6a2")
(setf (get mrs_msgs::NodeCpuLoad :datatype-) "mrs_msgs/NodeCpuLoad")
(setf (get mrs_msgs::NodeCpuLoad :definition-)
      "string[] node_names
float32[] cpu_loads

")



(provide :mrs_msgs/NodeCpuLoad "fde7b9ae5b72c740d25f009d8731c6a2")


