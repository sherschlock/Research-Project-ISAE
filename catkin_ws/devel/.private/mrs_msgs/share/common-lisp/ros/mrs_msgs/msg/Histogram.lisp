; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude Histogram.msg.html

(cl:defclass <Histogram> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform "")
   (bin_size
    :reader bin_size
    :initarg :bin_size
    :type cl:float
    :initform 0.0)
   (bin_min
    :reader bin_min
    :initarg :bin_min
    :type cl:float
    :initform 0.0)
   (bin_max
    :reader bin_max
    :initarg :bin_max
    :type cl:float
    :initform 0.0)
   (bin_mark
    :reader bin_mark
    :initarg :bin_mark
    :type cl:integer
    :initform 0)
   (bins
    :reader bins
    :initarg :bins
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Histogram (<Histogram>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Histogram>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Histogram)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<Histogram> is deprecated: use mrs_msgs-msg:Histogram instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:unit-val is deprecated.  Use mrs_msgs-msg:unit instead.")
  (unit m))

(cl:ensure-generic-function 'bin_size-val :lambda-list '(m))
(cl:defmethod bin_size-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:bin_size-val is deprecated.  Use mrs_msgs-msg:bin_size instead.")
  (bin_size m))

(cl:ensure-generic-function 'bin_min-val :lambda-list '(m))
(cl:defmethod bin_min-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:bin_min-val is deprecated.  Use mrs_msgs-msg:bin_min instead.")
  (bin_min m))

(cl:ensure-generic-function 'bin_max-val :lambda-list '(m))
(cl:defmethod bin_max-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:bin_max-val is deprecated.  Use mrs_msgs-msg:bin_max instead.")
  (bin_max m))

(cl:ensure-generic-function 'bin_mark-val :lambda-list '(m))
(cl:defmethod bin_mark-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:bin_mark-val is deprecated.  Use mrs_msgs-msg:bin_mark instead.")
  (bin_mark m))

(cl:ensure-generic-function 'bins-val :lambda-list '(m))
(cl:defmethod bins-val ((m <Histogram>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:bins-val is deprecated.  Use mrs_msgs-msg:bins instead.")
  (bins m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Histogram>) ostream)
  "Serializes a message object of type '<Histogram>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bin_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bin_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bin_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bin_mark)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bin_mark)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bin_mark)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bin_mark)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bins))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'bins))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Histogram>) istream)
  "Deserializes a message object of type '<Histogram>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bin_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bin_min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bin_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bin_mark)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bin_mark)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bin_mark)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bin_mark)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bins) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bins)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Histogram>)))
  "Returns string type for a message object of type '<Histogram>"
  "mrs_msgs/Histogram")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Histogram)))
  "Returns string type for a message object of type 'Histogram"
  "mrs_msgs/Histogram")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Histogram>)))
  "Returns md5sum for a message object of type '<Histogram>"
  "d299fa208b702809f19d8557835b7559")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Histogram)))
  "Returns md5sum for a message object of type 'Histogram"
  "d299fa208b702809f19d8557835b7559")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Histogram>)))
  "Returns full string definition for message of type '<Histogram>"
  (cl:format cl:nil "# This is a debug message for the mrs_bumper package.~%# It contains a histogram of depth values from a depthmap~%# image, if the depth sensor is used for obstacle detection.~%~%# Time at which the data in this message was generated, coordinate frame ID.~%std_msgs/Header header~%~%# Unit of distance measurement in the histogram (e.g. \"mm\" for millimeters\").~%string    unit~%~%# Structure of the histogram.~%float64   bin_size~%float64   bin_min~%float64   bin_max~%~%# The mark at which an obstacle was detected (if equal to the number of bins,~%# no obstacle was detected).~%uint32    bin_mark~%~%# Bin values of the histogram.~%float32[] bins~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Histogram)))
  "Returns full string definition for message of type 'Histogram"
  (cl:format cl:nil "# This is a debug message for the mrs_bumper package.~%# It contains a histogram of depth values from a depthmap~%# image, if the depth sensor is used for obstacle detection.~%~%# Time at which the data in this message was generated, coordinate frame ID.~%std_msgs/Header header~%~%# Unit of distance measurement in the histogram (e.g. \"mm\" for millimeters\").~%string    unit~%~%# Structure of the histogram.~%float64   bin_size~%float64   bin_min~%float64   bin_max~%~%# The mark at which an obstacle was detected (if equal to the number of bins,~%# no obstacle was detected).~%uint32    bin_mark~%~%# Bin values of the histogram.~%float32[] bins~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Histogram>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'unit))
     8
     8
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bins) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Histogram>))
  "Converts a ROS message object to a list"
  (cl:list 'Histogram
    (cl:cons ':header (header msg))
    (cl:cons ':unit (unit msg))
    (cl:cons ':bin_size (bin_size msg))
    (cl:cons ':bin_min (bin_min msg))
    (cl:cons ':bin_max (bin_max msg))
    (cl:cons ':bin_mark (bin_mark msg))
    (cl:cons ':bins (bins msg))
))
