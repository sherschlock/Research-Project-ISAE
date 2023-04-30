; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-srv)


;//! \htmlinclude ChangeEstimator-request.msg.html

(cl:defclass <ChangeEstimator-request> (roslisp-msg-protocol:ros-message)
  ((estimator_type
    :reader estimator_type
    :initarg :estimator_type
    :type mrs_msgs-msg:EstimatorType
    :initform (cl:make-instance 'mrs_msgs-msg:EstimatorType)))
)

(cl:defclass ChangeEstimator-request (<ChangeEstimator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeEstimator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeEstimator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeEstimator-request> is deprecated: use mrs_msgs-srv:ChangeEstimator-request instead.")))

(cl:ensure-generic-function 'estimator_type-val :lambda-list '(m))
(cl:defmethod estimator_type-val ((m <ChangeEstimator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:estimator_type-val is deprecated.  Use mrs_msgs-srv:estimator_type instead.")
  (estimator_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeEstimator-request>) ostream)
  "Serializes a message object of type '<ChangeEstimator-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeEstimator-request>) istream)
  "Deserializes a message object of type '<ChangeEstimator-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'estimator_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeEstimator-request>)))
  "Returns string type for a service object of type '<ChangeEstimator-request>"
  "mrs_msgs/ChangeEstimatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeEstimator-request)))
  "Returns string type for a service object of type 'ChangeEstimator-request"
  "mrs_msgs/ChangeEstimatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeEstimator-request>)))
  "Returns md5sum for a message object of type '<ChangeEstimator-request>"
  "6a9b653bad05a218abe443442564de9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeEstimator-request)))
  "Returns md5sum for a message object of type 'ChangeEstimator-request"
  "6a9b653bad05a218abe443442564de9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeEstimator-request>)))
  "Returns full string definition for message of type '<ChangeEstimator-request>"
  (cl:format cl:nil "mrs_msgs/EstimatorType estimator_type~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeEstimator-request)))
  "Returns full string definition for message of type 'ChangeEstimator-request"
  (cl:format cl:nil "mrs_msgs/EstimatorType estimator_type~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeEstimator-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeEstimator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeEstimator-request
    (cl:cons ':estimator_type (estimator_type msg))
))
;//! \htmlinclude ChangeEstimator-response.msg.html

(cl:defclass <ChangeEstimator-response> (roslisp-msg-protocol:ros-message)
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
    :type mrs_msgs-msg:EstimatorType
    :initform (cl:make-instance 'mrs_msgs-msg:EstimatorType)))
)

(cl:defclass ChangeEstimator-response (<ChangeEstimator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeEstimator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeEstimator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-srv:<ChangeEstimator-response> is deprecated: use mrs_msgs-srv:ChangeEstimator-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:success-val is deprecated.  Use mrs_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ChangeEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:message-val is deprecated.  Use mrs_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'estimator_type-val :lambda-list '(m))
(cl:defmethod estimator_type-val ((m <ChangeEstimator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-srv:estimator_type-val is deprecated.  Use mrs_msgs-srv:estimator_type instead.")
  (estimator_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeEstimator-response>) ostream)
  "Serializes a message object of type '<ChangeEstimator-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'estimator_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeEstimator-response>) istream)
  "Deserializes a message object of type '<ChangeEstimator-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeEstimator-response>)))
  "Returns string type for a service object of type '<ChangeEstimator-response>"
  "mrs_msgs/ChangeEstimatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeEstimator-response)))
  "Returns string type for a service object of type 'ChangeEstimator-response"
  "mrs_msgs/ChangeEstimatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeEstimator-response>)))
  "Returns md5sum for a message object of type '<ChangeEstimator-response>"
  "6a9b653bad05a218abe443442564de9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeEstimator-response)))
  "Returns md5sum for a message object of type 'ChangeEstimator-response"
  "6a9b653bad05a218abe443442564de9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeEstimator-response>)))
  "Returns full string definition for message of type '<ChangeEstimator-response>"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/EstimatorType estimator_type~%~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeEstimator-response)))
  "Returns full string definition for message of type 'ChangeEstimator-response"
  (cl:format cl:nil "bool success~%string message~%mrs_msgs/EstimatorType estimator_type~%~%~%================================================================================~%MSG: mrs_msgs/EstimatorType~%uint8 OPTFLOW=0~%uint8 GPS=1~%uint8 OPTFLOWGPS=2~%uint8 RTK=3~%uint8 VIO=4~%uint8 BRICK=5~%uint8 T265=6~%uint8 HECTOR=7~%uint8 BRICKFLOW=8~%uint8 VSLAM=9~%uint8 ICP=10~%uint8 ALOAM=11~%uint8 ALOAMGARM=12~%uint8 ALOAMREP=13~%uint8 LIOSAM=14~%uint8 UWB=15~%~%uint8 TYPE_COUNT=16~%~%string name~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeEstimator-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'estimator_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeEstimator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeEstimator-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':estimator_type (estimator_type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeEstimator)))
  'ChangeEstimator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeEstimator)))
  'ChangeEstimator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeEstimator)))
  "Returns string type for a service object of type '<ChangeEstimator>"
  "mrs_msgs/ChangeEstimator")