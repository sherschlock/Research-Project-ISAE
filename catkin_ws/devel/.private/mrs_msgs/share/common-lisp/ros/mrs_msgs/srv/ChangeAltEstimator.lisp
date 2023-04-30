; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ChangeAltEstimator-request.msg.html

(cl:defclass <ChangeAltEstimator-request> (roslisp-msg-protocol:ros-message)
  ((estimator_type
    :reader estimator_type
    :initarg :estimator_type
    :type mrs_msgs-msg:AltitudeType
    :initform (cl:make-instance 'mrs_msgs-msg:AltitudeType)))
)

(cl:defclass ChangeAltEstimator-request (<ChangeAltEstimator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeAltEstimator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeAltEstimator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeAltEstimator-request> is deprecated: use mrs_msgs-srv:ChangeAltEstimator-request instead.")))

(cl:ensure-generic-function 'estimator_type-val :lambda-list '(m))
(cl:defmethod estimator_type-val ((m <ChangeAltEstimator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:estimator_type-val is deprecated.  Use mrs_msgs-srv:estimator_type instead.")
  (estimator_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeAltEstimator-request>) ostream)
  "Serializes a message object of type '<ChangeAltEstimator-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeAltEstimator-request>) istream)
  "Deserializes a message object of type '<ChangeAltEstimator-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeAltEstimator-request>)))
  "Returns string type for a service object of type '<ChangeAltEstimator-request>"
  "mrs_msgs/ChangeAltEstimatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAltEstimator-request)))
  "Returns string type for a service object of type 'ChangeAltEstimator-request"
  "mrs_msgs/ChangeAltEstimatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeAltEstimator-request>)))
  "Returns md5sum for a message object of type '<ChangeAltEstimator-request>"
  "d44d7ecd4f387249481ad597e7864694")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeAltEstimator-request)))
  "Returns md5sum for a message object of type 'ChangeAltEstimator-request"
  "d44d7ecd4f387249481ad597e7864694")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeAltEstimator-request>)))
  "Returns full string definition for message of type '<ChangeAltEstimator-request>"
  (cl:format cl:nil "mrs_msgs/AltitudeType estimator_type~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeAltEstimator-request)))
  "Returns full string definition for message of type 'ChangeAltEstimator-request"
  (cl:format cl:nil "mrs_msgs/AltitudeType estimator_type~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeAltEstimator-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeAltEstimator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeAltEstimator-request
    (cl:cons ':estimator_type (estimator_type msg))
))
;//! \htmlinclude ChangeAltEstimator-response.msg.html

(cl:defclass <ChangeAltEstimator-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (estimator_type
    :reader estimator_type
    :initarg :estimator_type
    :type mrs_msgs-msg:AltitudeType
    :initform (cl:make-instance 'mrs_msgs-msg:AltitudeType)))
)

(cl:defclass ChangeAltEstimator-response (<ChangeAltEstimator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeAltEstimator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeAltEstimator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeAltEstimator-response> is deprecated: use mrs_msgs-srv:ChangeAltEstimator-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeAltEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeAltEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'estimator_type-val :lambda-list '(m))
(cl:defmethod estimator_type-val ((m <ChangeAltEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:estimator_type-val is deprecated.  Use mrs_msgs-srv:estimator_type instead.")
  (estimator_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeAltEstimator-response>) ostream)
  "Serializes a message object of type '<ChangeAltEstimator-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeAltEstimator-response>) istream)
  "Deserializes a message object of type '<ChangeAltEstimator-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeAltEstimator-response>)))
  "Returns string type for a service object of type '<ChangeAltEstimator-response>"
  "mrs_msgs/ChangeAltEstimatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAltEstimator-response)))
  "Returns string type for a service object of type 'ChangeAltEstimator-response"
  "mrs_msgs/ChangeAltEstimatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeAltEstimator-response>)))
  "Returns md5sum for a message object of type '<ChangeAltEstimator-response>"
  "d44d7ecd4f387249481ad597e7864694")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeAltEstimator-response)))
  "Returns md5sum for a message object of type 'ChangeAltEstimator-response"
  "d44d7ecd4f387249481ad597e7864694")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeAltEstimator-response>)))
  "Returns full string definition for message of type '<ChangeAltEstimator-response>"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/AltitudeType estimator_type~%~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeAltEstimator-response)))
  "Returns full string definition for message of type 'ChangeAltEstimator-response"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/AltitudeType estimator_type~%~%~%================================================================================~%MSG: mrs_msgs/AltitudeType~%uint8 HEIGHT=0~%uint8 PLANE=1~%uint8 BRICK=2~%uint8 VIO=3~%uint8 ALOAM=4~%uint8 ALOAMGARM=5~%uint8 ALOAMREP=6~%uint8 BARO=7~%uint8 RTK=8~%uint8 LIOSAM=9~%~%uint8 TYPE_COUNT=10~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeAltEstimator-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeAltEstimator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeAltEstimator-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':estimator_type (estimator_type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeAltEstimator)))
  'ChangeAltEstimator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeAltEstimator)))
  'ChangeAltEstimator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAltEstimator)))
  "Returns string type for a service object of type '<ChangeAltEstimator>"
  "mrs_msgs/ChangeAltEstimator")