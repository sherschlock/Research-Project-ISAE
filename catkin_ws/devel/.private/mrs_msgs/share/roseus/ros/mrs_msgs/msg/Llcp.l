;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::Llcp)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'Llcp (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::LLCP")
  (make-package "MRS_MSGS::LLCP"))

(in-package "ROS")
;;//! \htmlinclude Llcp.msg.html


(defclass mrs_msgs::Llcp
  :super ros::object
  :slots (_stamp _checksum_matched _id _payload ))

(defmethod mrs_msgs::Llcp
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:checksum_matched __checksum_matched) nil)
    ((:id __id) 0)
    ((:payload __payload) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _checksum_matched __checksum_matched)
   (setq _id (round __id))
   (setq _payload __payload)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:checksum_matched
   (&optional (__checksum_matched :null))
   (if (not (eq __checksum_matched :null)) (setq _checksum_matched __checksum_matched)) _checksum_matched)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _checksum_matched
    1
    ;; uint8 _id
    1
    ;; uint8[] _payload
    (* 1    (length _payload)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _checksum_matched
       (if _checksum_matched (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8[] _payload
     (write-long (length _payload) s)
     (princ _payload s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _checksum_matched
     (setq _checksum_matched (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _payload
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _payload (make-array n :element-type :char))
     (replace _payload buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get mrs_msgs::Llcp :md5sum-) "fc6c55fdf6549653e8a72bc4c8e3efc0")
(setf (get mrs_msgs::Llcp :datatype-) "mrs_msgs/Llcp")
(setf (get mrs_msgs::Llcp :definition-)
      "time stamp
bool checksum_matched
uint8 id
uint8[] payload

")



(provide :mrs_msgs/Llcp "fc6c55fdf6549653e8a72bc4c8e3efc0")


