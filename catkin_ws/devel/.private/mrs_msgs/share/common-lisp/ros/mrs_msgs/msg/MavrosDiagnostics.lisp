; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude MavrosDiagnostics.msg.html

(cl:defclass <MavrosDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type mrs_msgs-msg:MavrosState
    :initform (cl:make-instance 'mrs_msgs-msg:MavrosState))
   (heartbeat
    :reader heartbeat
    :initarg :heartbeat
    :type mrs_msgs-msg:HeartbeatDiagnostics
    :initform (cl:make-instance 'mrs_msgs-msg:HeartbeatDiagnostics))
   (system
    :reader system
    :initarg :system
    :type mrs_msgs-msg:SystemDiagnostics
    :initform (cl:make-instance 'mrs_msgs-msg:SystemDiagnostics))
   (gps
    :reader gps
    :initarg :gps
    :type mrs_msgs-msg:GpsDiagnostics
    :initform (cl:make-instance 'mrs_msgs-msg:GpsDiagnostics))
   (battery
    :reader battery
    :initarg :battery
    :type mrs_msgs-msg:BatteryDiagnostics
    :initform (cl:make-instance 'mrs_msgs-msg:BatteryDiagnostics)))
)

(cl:defclass MavrosDiagnostics (<MavrosDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MavrosDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MavrosDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<MavrosDiagnostics> is deprecated: use mrs_msgs-msg:MavrosDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MavrosDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MavrosDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:state-val is deprecated.  Use mrs_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'heartbeat-val :lambda-list '(m))
(cl:defmethod heartbeat-val ((m <MavrosDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:heartbeat-val is deprecated.  Use mrs_msgs-msg:heartbeat instead.")
  (heartbeat m))

(cl:ensure-generic-function 'system-val :lambda-list '(m))
(cl:defmethod system-val ((m <MavrosDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:system-val is deprecated.  Use mrs_msgs-msg:system instead.")
  (system m))

(cl:ensure-generic-function 'gps-val :lambda-list '(m))
(cl:defmethod gps-val ((m <MavrosDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gps-val is deprecated.  Use mrs_msgs-msg:gps instead.")
  (gps m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <MavrosDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:battery-val is deprecated.  Use mrs_msgs-msg:battery instead.")
  (battery m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MavrosDiagnostics>) ostream)
  "Serializes a message object of type '<MavrosDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'heartbeat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'system) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gps) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MavrosDiagnostics>) istream)
  "Deserializes a message object of type '<MavrosDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'heartbeat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'system) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gps) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MavrosDiagnostics>)))
  "Returns string type for a message object of type '<MavrosDiagnostics>"
  "mrs_msgs/MavrosDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MavrosDiagnostics)))
  "Returns string type for a message object of type 'MavrosDiagnostics"
  "mrs_msgs/MavrosDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MavrosDiagnostics>)))
  "Returns md5sum for a message object of type '<MavrosDiagnostics>"
  "b71f6da90e9d066eadc58c626133b5fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MavrosDiagnostics)))
  "Returns md5sum for a message object of type 'MavrosDiagnostics"
  "b71f6da90e9d066eadc58c626133b5fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MavrosDiagnostics>)))
  "Returns full string definition for message of type '<MavrosDiagnostics>"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/MavrosState state~%mrs_msgs/HeartbeatDiagnostics heartbeat~%mrs_msgs/SystemDiagnostics system~%mrs_msgs/GpsDiagnostics gps~%mrs_msgs/BatteryDiagnostics battery~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/MavrosState~%bool armed~%bool offboard~%~%================================================================================~%MSG: mrs_msgs/HeartbeatDiagnostics~%string mode~%~%================================================================================~%MSG: mrs_msgs/SystemDiagnostics~%float32 cpu_load~%uint32 errors_comm~%~%================================================================================~%MSG: mrs_msgs/GpsDiagnostics~%uint8 satellites_visible~%uint8 fix_type~%float32 eph~%float32 epv~%~%================================================================================~%MSG: mrs_msgs/BatteryDiagnostics~%float32 voltage~%float32 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MavrosDiagnostics)))
  "Returns full string definition for message of type 'MavrosDiagnostics"
  (cl:format cl:nil "std_msgs/Header header~%mrs_msgs/MavrosState state~%mrs_msgs/HeartbeatDiagnostics heartbeat~%mrs_msgs/SystemDiagnostics system~%mrs_msgs/GpsDiagnostics gps~%mrs_msgs/BatteryDiagnostics battery~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/MavrosState~%bool armed~%bool offboard~%~%================================================================================~%MSG: mrs_msgs/HeartbeatDiagnostics~%string mode~%~%================================================================================~%MSG: mrs_msgs/SystemDiagnostics~%float32 cpu_load~%uint32 errors_comm~%~%================================================================================~%MSG: mrs_msgs/GpsDiagnostics~%uint8 satellites_visible~%uint8 fix_type~%float32 eph~%float32 epv~%~%================================================================================~%MSG: mrs_msgs/BatteryDiagnostics~%float32 voltage~%float32 current~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MavrosDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'heartbeat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'system))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gps))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MavrosDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'MavrosDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':heartbeat (heartbeat msg))
    (cl:cons ':system (system msg))
    (cl:cons ':gps (gps msg))
    (cl:cons ':battery (battery msg))
))
