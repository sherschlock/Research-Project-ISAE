;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::BacaProtocol)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'BacaProtocol (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::BACAPROTOCOL")
  (make-package "MRS_MSGS::BACAPROTOCOL"))

(in-package "ROS")
;;//! \htmlinclude BacaProtocol.msg.html


(defclass mrs_msgs::BacaProtocol
  :super ros::object
  :slots (_stamp _payload _checksum_calculated _checksum_received _checksum_correct ))

(defmethod mrs_msgs::BacaProtocol
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:payload __payload) (make-array 0 :initial-element 0 :element-type :char))
    ((:checksum_calculated __checksum_calculated) 0)
    ((:checksum_received __checksum_received) 0)
    ((:checksum_correct __checksum_correct) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _payload __payload)
   (setq _checksum_calculated (round __checksum_calculated))
   (setq _checksum_received (round __checksum_received))
   (setq _checksum_correct __checksum_correct)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:checksum_calculated
   (&optional __checksum_calculated)
   (if __checksum_calculated (setq _checksum_calculated __checksum_calculated)) _checksum_calculated)
  (:checksum_received
   (&optional __checksum_received)
   (if __checksum_received (setq _checksum_received __checksum_received)) _checksum_received)
  (:checksum_correct
   (&optional (__checksum_correct :null))
   (if (not (eq __checksum_correct :null)) (setq _checksum_correct __checksum_correct)) _checksum_correct)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8[] _payload
    (* 1    (length _payload)) 4
    ;; uint8 _checksum_calculated
    1
    ;; uint8 _checksum_received
    1
    ;; bool _checksum_correct
    1
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
     ;; uint8 _checksum_calculated
       (write-byte _checksum_calculated s)
     ;; uint8 _checksum_received
       (write-byte _checksum_received s)
     ;; bool _checksum_correct
       (if _checksum_correct (write-byte -1 s) (write-byte 0 s))
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
   ;; uint8 _checksum_calculated
     (setq _checksum_calculated (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _checksum_received
     (setq _checksum_received (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _checksum_correct
     (setq _checksum_correct (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mrs_msgs::BacaProtocol :md5sum-) "ab27864d6a028e49646c9087913dde4e")
(setf (get mrs_msgs::BacaProtocol :datatype-) "mrs_msgs/BacaProtocol")
(setf (get mrs_msgs::BacaProtocol :definition-)
      "time stamp
uint8[] payload
uint8 checksum_calculated #useful for debugging
uint8 checksum_received   #useful for debugging
bool checksum_correct

")



(provide :mrs_msgs/BacaProtocol "ab27864d6a028e49646c9087913dde4e")


