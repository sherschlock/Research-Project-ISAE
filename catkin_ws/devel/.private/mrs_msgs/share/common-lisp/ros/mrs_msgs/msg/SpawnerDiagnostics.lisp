; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude SpawnerDiagnostics.msg.html

(cl:defclass <SpawnerDiagnostics> (roslisp-msg-protocol:ros-message)
  ((spawn_called
    :reader spawn_called
    :initarg :spawn_called
    :type cl:boolean
    :initform cl:nil)
   (processing
    :reader processing
    :initarg :processing
    :type cl:boolean
    :initform cl:nil)
   (active_vehicles
    :reader active_vehicles
    :initarg :active_vehicles
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (queued_vehicles
    :reader queued_vehicles
    :initarg :queued_vehicles
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (queued_processes
    :reader queued_processes
    :initarg :queued_processes
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpawnerDiagnostics (<SpawnerDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpawnerDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpawnerDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<SpawnerDiagnostics> is deprecated: use mrs_msgs-msg:SpawnerDiagnostics instead.")))

(cl:ensure-generic-function 'spawn_called-val :lambda-list '(m))
(cl:defmethod spawn_called-val ((m <SpawnerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:spawn_called-val is deprecated.  Use mrs_msgs-msg:spawn_called instead.")
  (spawn_called m))

(cl:ensure-generic-function 'processing-val :lambda-list '(m))
(cl:defmethod processing-val ((m <SpawnerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:processing-val is deprecated.  Use mrs_msgs-msg:processing instead.")
  (processing m))

(cl:ensure-generic-function 'active_vehicles-val :lambda-list '(m))
(cl:defmethod active_vehicles-val ((m <SpawnerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:active_vehicles-val is deprecated.  Use mrs_msgs-msg:active_vehicles instead.")
  (active_vehicles m))

(cl:ensure-generic-function 'queued_vehicles-val :lambda-list '(m))
(cl:defmethod queued_vehicles-val ((m <SpawnerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:queued_vehicles-val is deprecated.  Use mrs_msgs-msg:queued_vehicles instead.")
  (queued_vehicles m))

(cl:ensure-generic-function 'queued_processes-val :lambda-list '(m))
(cl:defmethod queued_processes-val ((m <SpawnerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:queued_processes-val is deprecated.  Use mrs_msgs-msg:queued_processes instead.")
  (queued_processes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpawnerDiagnostics>) ostream)
  "Serializes a message object of type '<SpawnerDiagnostics>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'spawn_called) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'processing) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'active_vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'active_vehicles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'queued_vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'queued_vehicles))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queued_processes)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpawnerDiagnostics>) istream)
  "Deserializes a message object of type '<SpawnerDiagnostics>"
    (cl:setf (cl:slot-value msg 'spawn_called) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'processing) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'active_vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'active_vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'queued_vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'queued_vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queued_processes)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpawnerDiagnostics>)))
  "Returns string type for a message object of type '<SpawnerDiagnostics>"
  "mrs_msgs/SpawnerDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpawnerDiagnostics)))
  "Returns string type for a message object of type 'SpawnerDiagnostics"
  "mrs_msgs/SpawnerDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpawnerDiagnostics>)))
  "Returns md5sum for a message object of type '<SpawnerDiagnostics>"
  "388186ee1e8df969bc4d4587fd373eb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpawnerDiagnostics)))
  "Returns md5sum for a message object of type 'SpawnerDiagnostics"
  "388186ee1e8df969bc4d4587fd373eb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpawnerDiagnostics>)))
  "Returns full string definition for message of type '<SpawnerDiagnostics>"
  (cl:format cl:nil "bool spawn_called~%bool processing~%string[] active_vehicles~%string[] queued_vehicles~%uint8 queued_processes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpawnerDiagnostics)))
  "Returns full string definition for message of type 'SpawnerDiagnostics"
  (cl:format cl:nil "bool spawn_called~%bool processing~%string[] active_vehicles~%string[] queued_vehicles~%uint8 queued_processes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpawnerDiagnostics>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'active_vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'queued_vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpawnerDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'SpawnerDiagnostics
    (cl:cons ':spawn_called (spawn_called msg))
    (cl:cons ':processing (processing msg))
    (cl:cons ':active_vehicles (active_vehicles msg))
    (cl:cons ':queued_vehicles (queued_vehicles msg))
    (cl:cons ':queued_processes (queued_processes msg))
))
