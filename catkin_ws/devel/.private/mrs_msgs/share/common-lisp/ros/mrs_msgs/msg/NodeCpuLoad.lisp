; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude NodeCpuLoad.msg.html

(cl:defclass <NodeCpuLoad> (roslisp-msg-protocol:ros-message)
  ((node_names
    :reader node_names
    :initarg :node_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (cpu_loads
    :reader cpu_loads
    :initarg :cpu_loads
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NodeCpuLoad (<NodeCpuLoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeCpuLoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeCpuLoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<NodeCpuLoad> is deprecated: use mrs_msgs-msg:NodeCpuLoad instead.")))

(cl:ensure-generic-function 'node_names-val :lambda-list '(m))
(cl:defmethod node_names-val ((m <NodeCpuLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:node_names-val is deprecated.  Use mrs_msgs-msg:node_names instead.")
  (node_names m))

(cl:ensure-generic-function 'cpu_loads-val :lambda-list '(m))
(cl:defmethod cpu_loads-val ((m <NodeCpuLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cpu_loads-val is deprecated.  Use mrs_msgs-msg:cpu_loads instead.")
  (cpu_loads m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeCpuLoad>) ostream)
  "Serializes a message object of type '<NodeCpuLoad>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_names))))
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
   (cl:slot-value msg 'node_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cpu_loads))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cpu_loads))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeCpuLoad>) istream)
  "Deserializes a message object of type '<NodeCpuLoad>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_names)))
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
  (cl:setf (cl:slot-value msg 'cpu_loads) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cpu_loads)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeCpuLoad>)))
  "Returns string type for a message object of type '<NodeCpuLoad>"
  "mrs_msgs/NodeCpuLoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeCpuLoad)))
  "Returns string type for a message object of type 'NodeCpuLoad"
  "mrs_msgs/NodeCpuLoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeCpuLoad>)))
  "Returns md5sum for a message object of type '<NodeCpuLoad>"
  "fde7b9ae5b72c740d25f009d8731c6a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeCpuLoad)))
  "Returns md5sum for a message object of type 'NodeCpuLoad"
  "fde7b9ae5b72c740d25f009d8731c6a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeCpuLoad>)))
  "Returns full string definition for message of type '<NodeCpuLoad>"
  (cl:format cl:nil "string[] node_names~%float32[] cpu_loads~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeCpuLoad)))
  "Returns full string definition for message of type 'NodeCpuLoad"
  (cl:format cl:nil "string[] node_names~%float32[] cpu_loads~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeCpuLoad>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cpu_loads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeCpuLoad>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeCpuLoad
    (cl:cons ':node_names (node_names msg))
    (cl:cons ':cpu_loads (cpu_loads msg))
))
