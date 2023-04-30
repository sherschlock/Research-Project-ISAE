;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::SerialRaw)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'SerialRaw (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::SERIALRAW")
  (make-package "MRS_MSGS::SERIALRAW"))

(in-package "ROS")
;;//! \htmlinclude SerialRaw.msg.html


(defclass mrs_msgs::SerialRaw
  :super ros::object
  :slots (_stamp _payload ))

(defmethod mrs_msgs::SerialRaw
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:payload __payload) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _payload __payload)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8[] _payload
    (* 1    (length _payload)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8[] _payload
     (write-long (length _payload) s)
     (princ _payload s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _payload
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _payload (make-array n :element-type :char))
     (replace _payload buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get mrs_msgs::SerialRaw :md5sum-) "3938f1b0ddc73626f4fe7a46763094ae")
(setf (get mrs_msgs::SerialRaw :datatype-) "mrs_msgs/SerialRaw")
(setf (get mrs_msgs::SerialRaw :definition-)
      "time stamp
uint8[] payload

")



(provide :mrs_msgs/SerialRaw "3938f1b0ddc73626f4fe7a46763094ae")


