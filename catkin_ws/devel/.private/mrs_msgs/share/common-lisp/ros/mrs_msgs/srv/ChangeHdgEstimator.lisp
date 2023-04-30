; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ChangeHdgEstimator-request.msg.html

(cl:defclass <ChangeHdgEstimator-request> (roslisp-msg-protocol:ros-message)
  ((estimator_type
    :reader estimator_type
    :initarg :estimator_type
    :type mrs_msgs-msg:HeadingType
    :initform (cl:make-instance 'mrs_msgs-msg:HeadingType)))
)

(cl:defclass ChangeHdgEstimator-request (<ChangeHdgEstimator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeHdgEstimator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeHdgEstimator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeHdgEstimator-request> is deprecated: use mrs_msgs-srv:ChangeHdgEstimator-request instead.")))

(cl:ensure-generic-function 'estimator_type-val :lambda-list '(m))
(cl:defmethod estimator_type-val ((m <ChangeHdgEstimator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:estimator_type-val is deprecated.  Use mrs_msgs-srv:estimator_type instead.")
  (estimator_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeHdgEstimator-request>) ostream)
  "Serializes a message object of type '<ChangeHdgEstimator-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeHdgEstimator-request>) istream)
  "Deserializes a message object of type '<ChangeHdgEstimator-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeHdgEstimator-request>)))
  "Returns string type for a service object of type '<ChangeHdgEstimator-request>"
  "mrs_msgs/ChangeHdgEstimatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeHdgEstimator-request)))
  "Returns string type for a service object of type 'ChangeHdgEstimator-request"
  "mrs_msgs/ChangeHdgEstimatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeHdgEstimator-request>)))
  "Returns md5sum for a message object of type '<ChangeHdgEstimator-request>"
  "96e3923e6e8cb71c18fdec0035178d67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeHdgEstimator-request)))
  "Returns md5sum for a message object of type 'ChangeHdgEstimator-request"
  "96e3923e6e8cb71c18fdec0035178d67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeHdgEstimator-request>)))
  "Returns full string definition for message of type '<ChangeHdgEstimator-request>"
  (cl:format cl:nil "mrs_msgs/HeadingType estimator_type~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeHdgEstimator-request)))
  "Returns full string definition for message of type 'ChangeHdgEstimator-request"
  (cl:format cl:nil "mrs_msgs/HeadingType estimator_type~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeHdgEstimator-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeHdgEstimator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeHdgEstimator-request
    (cl:cons ':estimator_type (estimator_type msg))
))
;//! \htmlinclude ChangeHdgEstimator-response.msg.html

(cl:defclass <ChangeHdgEstimator-response> (roslisp-msg-protocol:ros-message)
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
    :type mrs_msgs-msg:HeadingType
    :initform (cl:make-instance 'mrs_msgs-msg:HeadingType)))
)

(cl:defclass ChangeHdgEstimator-response (<ChangeHdgEstimator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeHdgEstimator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeHdgEstimator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeHdgEstimator-response> is deprecated: use mrs_msgs-srv:ChangeHdgEstimator-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeHdgEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeHdgEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'estimator_type-val :lambda-list '(m))
(cl:defmethod estimator_type-val ((m <ChangeHdgEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:estimator_type-val is deprecated.  Use mrs_msgs-srv:estimator_type instead.")
  (estimator_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeHdgEstimator-response>) ostream)
  "Serializes a message object of type '<ChangeHdgEstimator-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeHdgEstimator-response>) istream)
  "Deserializes a message object of type '<ChangeHdgEstimator-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeHdgEstimator-response>)))
  "Returns string type for a service object of type '<ChangeHdgEstimator-response>"
  "mrs_msgs/ChangeHdgEstimatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeHdgEstimator-response)))
  "Returns string type for a service object of type 'ChangeHdgEstimator-response"
  "mrs_msgs/ChangeHdgEstimatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeHdgEstimator-response>)))
  "Returns md5sum for a message object of type '<ChangeHdgEstimator-response>"
  "96e3923e6e8cb71c18fdec0035178d67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeHdgEstimator-response)))
  "Returns md5sum for a message object of type 'ChangeHdgEstimator-response"
  "96e3923e6e8cb71c18fdec0035178d67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeHdgEstimator-response>)))
  "Returns full string definition for message of type '<ChangeHdgEstimator-response>"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/HeadingType estimator_type~%~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeHdgEstimator-response)))
  "Returns full string definition for message of type 'ChangeHdgEstimator-response"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/HeadingType estimator_type~%~%~%================================================================================~%MSG: mrs_msgs/HeadingType~%uint8 PIXHAWK=0~%uint8 GYRO=1~%uint8 COMPASS=2~%uint8 OPTFLOW=3~%uint8 HECTOR=4~%uint8 BRICK=5~%uint8 VIO=6~%uint8 VSLAM=7~%uint8 ICP=8~%uint8 BRICKFLOW=9~%uint8 ALOAM=10~%uint8 ALOAMREP=11~%uint8 LIOSAM=12~%~%uint8 TYPE_COUNT=13~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeHdgEstimator-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeHdgEstimator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeHdgEstimator-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':estimator_type (estimator_type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeHdgEstimator)))
  'ChangeHdgEstimator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeHdgEstimator)))
  'ChangeHdgEstimator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeHdgEstimator)))
  "Returns string type for a service object of type '<ChangeHdgEstimator>"
  "mrs_msgs/ChangeHdgEstimator")