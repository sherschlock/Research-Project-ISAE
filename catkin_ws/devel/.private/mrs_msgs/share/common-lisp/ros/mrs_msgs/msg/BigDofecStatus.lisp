; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude BigDofecStatus.msg.html

(cl:defclass <BigDofecStatus> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (mes_vbat
    :reader mes_vbat
    :initarg :mes_vbat
    :type cl:float
    :initform 0.0)
   (mes_24v
    :reader mes_24v
    :initarg :mes_24v
    :type cl:float
    :initform 0.0)
   (mes_varm
    :reader mes_varm
    :initarg :mes_varm
    :type cl:float
    :initform 0.0)
   (mes_19v
    :reader mes_19v
    :initarg :mes_19v
    :type cl:float
    :initform 0.0)
   (mes_5v
    :reader mes_5v
    :initarg :mes_5v
    :type cl:float
    :initform 0.0)
   (pwm_enabled
    :reader pwm_enabled
    :initarg :pwm_enabled
    :type cl:boolean
    :initform cl:nil)
   (pwm1_val
    :reader pwm1_val
    :initarg :pwm1_val
    :type cl:fixnum
    :initform 0)
   (pwm2_val
    :reader pwm2_val
    :initarg :pwm2_val
    :type cl:fixnum
    :initform 0)
   (pwm3_val
    :reader pwm3_val
    :initarg :pwm3_val
    :type cl:fixnum
    :initform 0)
   (pwm4_val
    :reader pwm4_val
    :initarg :pwm4_val
    :type cl:fixnum
    :initform 0)
   (pwm5_val
    :reader pwm5_val
    :initarg :pwm5_val
    :type cl:fixnum
    :initform 0)
   (pwm6_val
    :reader pwm6_val
    :initarg :pwm6_val
    :type cl:fixnum
    :initform 0)
   (solenoids_armed
    :reader solenoids_armed
    :initarg :solenoids_armed
    :type cl:boolean
    :initform cl:nil)
   (launched_ch1
    :reader launched_ch1
    :initarg :launched_ch1
    :type cl:boolean
    :initform cl:nil)
   (launched_ch2
    :reader launched_ch2
    :initarg :launched_ch2
    :type cl:boolean
    :initform cl:nil)
   (launched_ch3
    :reader launched_ch3
    :initarg :launched_ch3
    :type cl:boolean
    :initform cl:nil)
   (launched_ch4
    :reader launched_ch4
    :initarg :launched_ch4
    :type cl:boolean
    :initform cl:nil)
   (launched_ch5
    :reader launched_ch5
    :initarg :launched_ch5
    :type cl:boolean
    :initform cl:nil)
   (launched_ch6
    :reader launched_ch6
    :initarg :launched_ch6
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BigDofecStatus (<BigDofecStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BigDofecStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BigDofecStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<BigDofecStatus> is deprecated: use mrs_msgs-msg:BigDofecStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'mes_vbat-val :lambda-list '(m))
(cl:defmethod mes_vbat-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mes_vbat-val is deprecated.  Use mrs_msgs-msg:mes_vbat instead.")
  (mes_vbat m))

(cl:ensure-generic-function 'mes_24v-val :lambda-list '(m))
(cl:defmethod mes_24v-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mes_24v-val is deprecated.  Use mrs_msgs-msg:mes_24v instead.")
  (mes_24v m))

(cl:ensure-generic-function 'mes_varm-val :lambda-list '(m))
(cl:defmethod mes_varm-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mes_varm-val is deprecated.  Use mrs_msgs-msg:mes_varm instead.")
  (mes_varm m))

(cl:ensure-generic-function 'mes_19v-val :lambda-list '(m))
(cl:defmethod mes_19v-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mes_19v-val is deprecated.  Use mrs_msgs-msg:mes_19v instead.")
  (mes_19v m))

(cl:ensure-generic-function 'mes_5v-val :lambda-list '(m))
(cl:defmethod mes_5v-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mes_5v-val is deprecated.  Use mrs_msgs-msg:mes_5v instead.")
  (mes_5v m))

(cl:ensure-generic-function 'pwm_enabled-val :lambda-list '(m))
(cl:defmethod pwm_enabled-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pwm_enabled-val is deprecated.  Use mrs_msgs-msg:pwm_enabled instead.")
  (pwm_enabled m))

(cl:ensure-generic-function 'pwm1_val-val :lambda-list '(m))
(cl:defmethod pwm1_val-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pwm1_val-val is deprecated.  Use mrs_msgs-msg:pwm1_val instead.")
  (pwm1_val m))

(cl:ensure-generic-function 'pwm2_val-val :lambda-list '(m))
(cl:defmethod pwm2_val-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pwm2_val-val is deprecated.  Use mrs_msgs-msg:pwm2_val instead.")
  (pwm2_val m))

(cl:ensure-generic-function 'pwm3_val-val :lambda-list '(m))
(cl:defmethod pwm3_val-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pwm3_val-val is deprecated.  Use mrs_msgs-msg:pwm3_val instead.")
  (pwm3_val m))

(cl:ensure-generic-function 'pwm4_val-val :lambda-list '(m))
(cl:defmethod pwm4_val-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pwm4_val-val is deprecated.  Use mrs_msgs-msg:pwm4_val instead.")
  (pwm4_val m))

(cl:ensure-generic-function 'pwm5_val-val :lambda-list '(m))
(cl:defmethod pwm5_val-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pwm5_val-val is deprecated.  Use mrs_msgs-msg:pwm5_val instead.")
  (pwm5_val m))

(cl:ensure-generic-function 'pwm6_val-val :lambda-list '(m))
(cl:defmethod pwm6_val-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:pwm6_val-val is deprecated.  Use mrs_msgs-msg:pwm6_val instead.")
  (pwm6_val m))

(cl:ensure-generic-function 'solenoids_armed-val :lambda-list '(m))
(cl:defmethod solenoids_armed-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:solenoids_armed-val is deprecated.  Use mrs_msgs-msg:solenoids_armed instead.")
  (solenoids_armed m))

(cl:ensure-generic-function 'launched_ch1-val :lambda-list '(m))
(cl:defmethod launched_ch1-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:launched_ch1-val is deprecated.  Use mrs_msgs-msg:launched_ch1 instead.")
  (launched_ch1 m))

(cl:ensure-generic-function 'launched_ch2-val :lambda-list '(m))
(cl:defmethod launched_ch2-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:launched_ch2-val is deprecated.  Use mrs_msgs-msg:launched_ch2 instead.")
  (launched_ch2 m))

(cl:ensure-generic-function 'launched_ch3-val :lambda-list '(m))
(cl:defmethod launched_ch3-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:launched_ch3-val is deprecated.  Use mrs_msgs-msg:launched_ch3 instead.")
  (launched_ch3 m))

(cl:ensure-generic-function 'launched_ch4-val :lambda-list '(m))
(cl:defmethod launched_ch4-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:launched_ch4-val is deprecated.  Use mrs_msgs-msg:launched_ch4 instead.")
  (launched_ch4 m))

(cl:ensure-generic-function 'launched_ch5-val :lambda-list '(m))
(cl:defmethod launched_ch5-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:launched_ch5-val is deprecated.  Use mrs_msgs-msg:launched_ch5 instead.")
  (launched_ch5 m))

(cl:ensure-generic-function 'launched_ch6-val :lambda-list '(m))
(cl:defmethod launched_ch6-val ((m <BigDofecStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:launched_ch6-val is deprecated.  Use mrs_msgs-msg:launched_ch6 instead.")
  (launched_ch6 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BigDofecStatus>) ostream)
  "Serializes a message object of type '<BigDofecStatus>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mes_vbat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mes_24v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mes_varm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mes_19v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mes_5v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pwm_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm1_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm1_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm2_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm2_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm3_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm3_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm4_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm4_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm5_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm5_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm6_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm6_val)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solenoids_armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'launched_ch1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'launched_ch2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'launched_ch3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'launched_ch4) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'launched_ch5) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'launched_ch6) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BigDofecStatus>) istream)
  "Deserializes a message object of type '<BigDofecStatus>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mes_vbat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mes_24v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mes_varm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mes_19v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mes_5v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'pwm_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm1_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm1_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm2_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm2_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm3_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm3_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm4_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm4_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm5_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm5_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm6_val)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm6_val)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'solenoids_armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'launched_ch1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'launched_ch2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'launched_ch3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'launched_ch4) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'launched_ch5) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'launched_ch6) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BigDofecStatus>)))
  "Returns string type for a message object of type '<BigDofecStatus>"
  "mrs_msgs/BigDofecStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BigDofecStatus)))
  "Returns string type for a message object of type 'BigDofecStatus"
  "mrs_msgs/BigDofecStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BigDofecStatus>)))
  "Returns md5sum for a message object of type '<BigDofecStatus>"
  "2a01dab5c749eae33ffb0f9ef6c3cb54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BigDofecStatus)))
  "Returns md5sum for a message object of type 'BigDofecStatus"
  "2a01dab5c749eae33ffb0f9ef6c3cb54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BigDofecStatus>)))
  "Returns full string definition for message of type '<BigDofecStatus>"
  (cl:format cl:nil "time stamp~%~%float32 mes_vbat~%float32 mes_24v~%float32 mes_varm~%float32 mes_19v~%float32 mes_5v~%~%bool pwm_enabled~%uint16 pwm1_val~%uint16 pwm2_val~%uint16 pwm3_val~%uint16 pwm4_val~%uint16 pwm5_val~%uint16 pwm6_val~%~%bool solenoids_armed~%bool launched_ch1~%bool launched_ch2~%bool launched_ch3~%bool launched_ch4~%bool launched_ch5~%bool launched_ch6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BigDofecStatus)))
  "Returns full string definition for message of type 'BigDofecStatus"
  (cl:format cl:nil "time stamp~%~%float32 mes_vbat~%float32 mes_24v~%float32 mes_varm~%float32 mes_19v~%float32 mes_5v~%~%bool pwm_enabled~%uint16 pwm1_val~%uint16 pwm2_val~%uint16 pwm3_val~%uint16 pwm4_val~%uint16 pwm5_val~%uint16 pwm6_val~%~%bool solenoids_armed~%bool launched_ch1~%bool launched_ch2~%bool launched_ch3~%bool launched_ch4~%bool launched_ch5~%bool launched_ch6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BigDofecStatus>))
  (cl:+ 0
     8
     4
     4
     4
     4
     4
     1
     2
     2
     2
     2
     2
     2
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BigDofecStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BigDofecStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':mes_vbat (mes_vbat msg))
    (cl:cons ':mes_24v (mes_24v msg))
    (cl:cons ':mes_varm (mes_varm msg))
    (cl:cons ':mes_19v (mes_19v msg))
    (cl:cons ':mes_5v (mes_5v msg))
    (cl:cons ':pwm_enabled (pwm_enabled msg))
    (cl:cons ':pwm1_val (pwm1_val msg))
    (cl:cons ':pwm2_val (pwm2_val msg))
    (cl:cons ':pwm3_val (pwm3_val msg))
    (cl:cons ':pwm4_val (pwm4_val msg))
    (cl:cons ':pwm5_val (pwm5_val msg))
    (cl:cons ':pwm6_val (pwm6_val msg))
    (cl:cons ':solenoids_armed (solenoids_armed msg))
    (cl:cons ':launched_ch1 (launched_ch1 msg))
    (cl:cons ':launched_ch2 (launched_ch2 msg))
    (cl:cons ':launched_ch3 (launched_ch3 msg))
    (cl:cons ':launched_ch4 (launched_ch4 msg))
    (cl:cons ':launched_ch5 (launched_ch5 msg))
    (cl:cons ':launched_ch6 (launched_ch6 msg))
))
