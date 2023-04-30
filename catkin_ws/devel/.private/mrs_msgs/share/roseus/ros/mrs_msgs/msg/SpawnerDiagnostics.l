;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::SpawnerDiagnostics)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'SpawnerDiagnostics (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SPAWNERDIAGNOSTICS")
  (make-package "MRS_MSGS::SPAWNERDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude SpawnerDiagnostics.msg.html


(defclass mrs_msgs::SpawnerDiagnostics
  :super ros::object
  :slots (_spawn_called _processing _active_vehicles _queued_vehicles _queued_processes ))

(defmethod mrs_msgs::SpawnerDiagnostics
  (:init
   (&key
    ((:spawn_called __spawn_called) nil)
    ((:processing __processing) nil)
    ((:active_vehicles __active_vehicles) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:queued_vehicles __queued_vehicles) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:queued_processes __queued_processes) 0)
    )
   (send-super :init)
   (setq _spawn_called __spawn_called)
   (setq _processing __processing)
   (setq _active_vehicles __active_vehicles)
   (setq _queued_vehicles __queued_vehicles)
   (setq _queued_processes (round __queued_processes))
   self)
  (:spawn_called
   (&optional (__spawn_called :null))
   (if (not (eq __spawn_called :null)) (setq _spawn_called __spawn_called)) _spawn_called)
  (:processing
   (&optional (__processing :null))
   (if (not (eq __processing :null)) (setq _processing __processing)) _processing)
  (:active_vehicles
   (&optional __active_vehicles)
   (if __active_vehicles (setq _active_vehicles __active_vehicles)) _active_vehicles)
  (:queued_vehicles
   (&optional __queued_vehicles)
   (if __queued_vehicles (setq _queued_vehicles __queued_vehicles)) _queued_vehicles)
  (:queued_processes
   (&optional __queued_processes)
   (if __queued_processes (setq _queued_processes __queued_processes)) _queued_processes)
  (:serialization-length
   ()
   (+
    ;; bool _spawn_called
    1
    ;; bool _processing
    1
    ;; string[] _active_vehicles
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _active_vehicles)) 4
    ;; string[] _queued_vehicles
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _queued_vehicles)) 4
    ;; uint8 _queued_processes
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _spawn_called
       (if _spawn_called (write-byte -1 s) (write-byte 0 s))
     ;; bool _processing
       (if _processing (write-byte -1 s) (write-byte 0 s))
     ;; string[] _active_vehicles
     (write-long (length _active_vehicles) s)
     (dolist (elem _active_vehicles)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _queued_vehicles
     (write-long (length _queued_vehicles) s)
     (dolist (elem _queued_vehicles)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint8 _queued_processes
       (write-byte _queued_processes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _spawn_called
     (setq _spawn_called (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _processing
     (setq _processing (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _active_vehicles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active_vehicles (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _active_vehicles i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _queued_vehicles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _queued_vehicles (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _queued_vehicles i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint8 _queued_processes
     (setq _queued_processes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::SpawnerDiagnostics :md5sum-) "388186ee1e8df969bc4d4587fd373eb3")
(setf (get mrs_msgs::SpawnerDiagnostics :datatype-) "mrs_msgs/SpawnerDiagnostics")
(setf (get mrs_msgs::SpawnerDiagnostics :definition-)
      "bool spawn_called
bool processing
string[] active_vehicles
string[] queued_vehicles
uint8 queued_processes

")



(provide :mrs_msgs/SpawnerDiagnostics "388186ee1e8df969bc4d4587fd373eb3")


