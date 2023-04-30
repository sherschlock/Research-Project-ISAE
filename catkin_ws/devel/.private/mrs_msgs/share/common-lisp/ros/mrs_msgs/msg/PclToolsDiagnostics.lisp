; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude PclToolsDiagnostics.msg.html

(cl:defclass <PclToolsDiagnostics> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (sensor_name
    :reader sensor_name
    :initarg :sensor_name
    :type cl:string
    :initform "")
   (sensor_type
    :reader sensor_type
    :initarg :sensor_type
    :type cl:fixnum
    :initform 0)
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (vfov
    :reader vfov
    :initarg :vfov
    :type cl:float
    :initform 0.0)
   (rows_before
    :reader rows_before
    :initarg :rows_before
    :type cl:fixnum
    :initform 0)
   (cols_before
    :reader cols_before
    :initarg :cols_before
    :type cl:fixnum
    :initform 0)
   (rows_after
    :reader rows_after
    :initarg :rows_after
    :type cl:fixnum
    :initform 0)
   (cols_after
    :reader cols_after
    :initarg :cols_after
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PclToolsDiagnostics (<PclToolsDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PclToolsDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PclToolsDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<PclToolsDiagnostics> is deprecated: use mrs_msgs-msg:PclToolsDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'sensor_name-val :lambda-list '(m))
(cl:defmethod sensor_name-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:sensor_name-val is deprecated.  Use mrs_msgs-msg:sensor_name instead.")
  (sensor_name m))

(cl:ensure-generic-function 'sensor_type-val :lambda-list '(m))
(cl:defmethod sensor_type-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:sensor_type-val is deprecated.  Use mrs_msgs-msg:sensor_type instead.")
  (sensor_type m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:frequency-val is deprecated.  Use mrs_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'vfov-val :lambda-list '(m))
(cl:defmethod vfov-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:vfov-val is deprecated.  Use mrs_msgs-msg:vfov instead.")
  (vfov m))

(cl:ensure-generic-function 'rows_before-val :lambda-list '(m))
(cl:defmethod rows_before-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:rows_before-val is deprecated.  Use mrs_msgs-msg:rows_before instead.")
  (rows_before m))

(cl:ensure-generic-function 'cols_before-val :lambda-list '(m))
(cl:defmethod cols_before-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cols_before-val is deprecated.  Use mrs_msgs-msg:cols_before instead.")
  (cols_before m))

(cl:ensure-generic-function 'rows_after-val :lambda-list '(m))
(cl:defmethod rows_after-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:rows_after-val is deprecated.  Use mrs_msgs-msg:rows_after instead.")
  (rows_after m))

(cl:ensure-generic-function 'cols_after-val :lambda-list '(m))
(cl:defmethod cols_after-val ((m <PclToolsDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cols_after-val is deprecated.  Use mrs_msgs-msg:cols_after instead.")
  (cols_after m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PclToolsDiagnostics>)))
    "Constants for message type '<PclToolsDiagnostics>"
  '((:SENSOR_TYPE_NONE . -1)
    (:SENSOR_TYPE_LIDAR_3D . 0)
    (:SENSOR_TYPE_DEPTH_CAMERA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PclToolsDiagnostics)))
    "Constants for message type 'PclToolsDiagnostics"
  '((:SENSOR_TYPE_NONE . -1)
    (:SENSOR_TYPE_LIDAR_3D . 0)
    (:SENSOR_TYPE_DEPTH_CAMERA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PclToolsDiagnostics>) ostream)
  "Serializes a message object of type '<PclToolsDiagnostics>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vfov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rows_before)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rows_before)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cols_before)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cols_before)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rows_after)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rows_after)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cols_after)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cols_after)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PclToolsDiagnostics>) istream)
  "Deserializes a message object of type '<PclToolsDiagnostics>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vfov) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rows_before)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rows_before)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cols_before)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cols_before)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rows_after)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rows_after)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cols_after)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cols_after)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PclToolsDiagnostics>)))
  "Returns string type for a message object of type '<PclToolsDiagnostics>"
  "mrs_msgs/PclToolsDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PclToolsDiagnostics)))
  "Returns string type for a message object of type 'PclToolsDiagnostics"
  "mrs_msgs/PclToolsDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PclToolsDiagnostics>)))
  "Returns md5sum for a message object of type '<PclToolsDiagnostics>"
  "19326053c1e1dd1a3b03d52e3eeb957e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PclToolsDiagnostics)))
  "Returns md5sum for a message object of type 'PclToolsDiagnostics"
  "19326053c1e1dd1a3b03d52e3eeb957e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PclToolsDiagnostics>)))
  "Returns full string definition for message of type '<PclToolsDiagnostics>"
  (cl:format cl:nil "time   stamp~%string sensor_name~%uint8  sensor_type~%~%float32 frequency   # [Hz]~%float32 vfov        # [deg]~%uint16  rows_before # height of input data~%uint16  cols_before # width of input data~%uint16  rows_after  # height of output data~%uint16  cols_after  # width of output data~%~%# Sensor type~%int8 SENSOR_TYPE_NONE=-1~%int8 SENSOR_TYPE_LIDAR_3D=0~%int8 SENSOR_TYPE_DEPTH_CAMERA=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PclToolsDiagnostics)))
  "Returns full string definition for message of type 'PclToolsDiagnostics"
  (cl:format cl:nil "time   stamp~%string sensor_name~%uint8  sensor_type~%~%float32 frequency   # [Hz]~%float32 vfov        # [deg]~%uint16  rows_before # height of input data~%uint16  cols_before # width of input data~%uint16  rows_after  # height of output data~%uint16  cols_after  # width of output data~%~%# Sensor type~%int8 SENSOR_TYPE_NONE=-1~%int8 SENSOR_TYPE_LIDAR_3D=0~%int8 SENSOR_TYPE_DEPTH_CAMERA=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PclToolsDiagnostics>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'sensor_name))
     1
     4
     4
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PclToolsDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'PclToolsDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':sensor_name (sensor_name msg))
    (cl:cons ':sensor_type (sensor_type msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':vfov (vfov msg))
    (cl:cons ':rows_before (rows_before msg))
    (cl:cons ':cols_before (cols_before msg))
    (cl:cons ':rows_after (rows_after msg))
    (cl:cons ':cols_after (cols_after msg))
))
