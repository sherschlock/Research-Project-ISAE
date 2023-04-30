; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude ControlManagerDiagnostics.msg.html

(cl:defclass <ControlManagerDiagnostics> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (uav_name
    :reader uav_name
    :initarg :uav_name
    :type cl:string
    :initform "")
   (motors
    :reader motors
    :initarg :motors
    :type cl:boolean
    :initform cl:nil)
   (flying_normally
    :reader flying_normally
    :initarg :flying_normally
    :type cl:boolean
    :initform cl:nil)
   (rc_mode
    :reader rc_mode
    :initarg :rc_mode
    :type cl:boolean
    :initform cl:nil)
   (active_tracker
    :reader active_tracker
    :initarg :active_tracker
    :type cl:string
    :initform "")
   (tracker_status
    :reader tracker_status
    :initarg :tracker_status
    :type mrs_msgs-msg:TrackerStatus
    :initform (cl:make-instance 'mrs_msgs-msg:TrackerStatus))
   (active_controller
    :reader active_controller
    :initarg :active_controller
    :type cl:string
    :initform "")
   (controller_status
    :reader controller_status
    :initarg :controller_status
    :type mrs_msgs-msg:ControllerStatus
    :initform (cl:make-instance 'mrs_msgs-msg:ControllerStatus))
   (available_controllers
    :reader available_controllers
    :initarg :available_controllers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (available_trackers
    :reader available_trackers
    :initarg :available_trackers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (human_switchable_controllers
    :reader human_switchable_controllers
    :initarg :human_switchable_controllers
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (human_switchable_trackers
    :reader human_switchable_trackers
    :initarg :human_switchable_trackers
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass ControlManagerDiagnostics (<ControlManagerDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlManagerDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlManagerDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<ControlManagerDiagnostics> is deprecated: use mrs_msgs-msg:ControlManagerDiagnostics instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:stamp-val is deprecated.  Use mrs_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'uav_name-val :lambda-list '(m))
(cl:defmethod uav_name-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:uav_name-val is deprecated.  Use mrs_msgs-msg:uav_name instead.")
  (uav_name m))

(cl:ensure-generic-function 'motors-val :lambda-list '(m))
(cl:defmethod motors-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:motors-val is deprecated.  Use mrs_msgs-msg:motors instead.")
  (motors m))

(cl:ensure-generic-function 'flying_normally-val :lambda-list '(m))
(cl:defmethod flying_normally-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:flying_normally-val is deprecated.  Use mrs_msgs-msg:flying_normally instead.")
  (flying_normally m))

(cl:ensure-generic-function 'rc_mode-val :lambda-list '(m))
(cl:defmethod rc_mode-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:rc_mode-val is deprecated.  Use mrs_msgs-msg:rc_mode instead.")
  (rc_mode m))

(cl:ensure-generic-function 'active_tracker-val :lambda-list '(m))
(cl:defmethod active_tracker-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:active_tracker-val is deprecated.  Use mrs_msgs-msg:active_tracker instead.")
  (active_tracker m))

(cl:ensure-generic-function 'tracker_status-val :lambda-list '(m))
(cl:defmethod tracker_status-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:tracker_status-val is deprecated.  Use mrs_msgs-msg:tracker_status instead.")
  (tracker_status m))

(cl:ensure-generic-function 'active_controller-val :lambda-list '(m))
(cl:defmethod active_controller-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:active_controller-val is deprecated.  Use mrs_msgs-msg:active_controller instead.")
  (active_controller m))

(cl:ensure-generic-function 'controller_status-val :lambda-list '(m))
(cl:defmethod controller_status-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:controller_status-val is deprecated.  Use mrs_msgs-msg:controller_status instead.")
  (controller_status m))

(cl:ensure-generic-function 'available_controllers-val :lambda-list '(m))
(cl:defmethod available_controllers-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:available_controllers-val is deprecated.  Use mrs_msgs-msg:available_controllers instead.")
  (available_controllers m))

(cl:ensure-generic-function 'available_trackers-val :lambda-list '(m))
(cl:defmethod available_trackers-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:available_trackers-val is deprecated.  Use mrs_msgs-msg:available_trackers instead.")
  (available_trackers m))

(cl:ensure-generic-function 'human_switchable_controllers-val :lambda-list '(m))
(cl:defmethod human_switchable_controllers-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:human_switchable_controllers-val is deprecated.  Use mrs_msgs-msg:human_switchable_controllers instead.")
  (human_switchable_controllers m))

(cl:ensure-generic-function 'human_switchable_trackers-val :lambda-list '(m))
(cl:defmethod human_switchable_trackers-val ((m <ControlManagerDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:human_switchable_trackers-val is deprecated.  Use mrs_msgs-msg:human_switchable_trackers instead.")
  (human_switchable_trackers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlManagerDiagnostics>) ostream)
  "Serializes a message object of type '<ControlManagerDiagnostics>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motors) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flying_normally) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rc_mode) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_tracker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_tracker))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracker_status) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'active_controller))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'active_controller))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controller_status) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_controllers))))
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
   (cl:slot-value msg 'available_controllers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'available_trackers))))
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
   (cl:slot-value msg 'available_trackers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'human_switchable_controllers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'human_switchable_controllers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'human_switchable_trackers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'human_switchable_trackers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlManagerDiagnostics>) istream)
  "Deserializes a message object of type '<ControlManagerDiagnostics>"
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
      (cl:setf (cl:slot-value msg 'uav_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'motors) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'flying_normally) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rc_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_tracker) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_tracker) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracker_status) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'active_controller) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'active_controller) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controller_status) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'available_controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_controllers)))
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
  (cl:setf (cl:slot-value msg 'available_trackers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'available_trackers)))
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
  (cl:setf (cl:slot-value msg 'human_switchable_controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'human_switchable_controllers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'human_switchable_trackers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'human_switchable_trackers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlManagerDiagnostics>)))
  "Returns string type for a message object of type '<ControlManagerDiagnostics>"
  "mrs_msgs/ControlManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlManagerDiagnostics)))
  "Returns string type for a message object of type 'ControlManagerDiagnostics"
  "mrs_msgs/ControlManagerDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlManagerDiagnostics>)))
  "Returns md5sum for a message object of type '<ControlManagerDiagnostics>"
  "739e0d9e7c44e1a1b9b450d58889c80b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlManagerDiagnostics)))
  "Returns md5sum for a message object of type 'ControlManagerDiagnostics"
  "739e0d9e7c44e1a1b9b450d58889c80b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlManagerDiagnostics>)))
  "Returns full string definition for message of type '<ControlManagerDiagnostics>"
  (cl:format cl:nil "# This reports on the state of the ControlManager and the currently active tracker and controller.~%~%time stamp~%string uav_name~%~%# If the motors are enabled, in other words, if the output of the ControlManager can pass out.~%bool motors~%~%# True if the UAV is flying and no special case occurred (emergency land, failsafe, etc.).~%bool flying_normally~%~%# True if under the \"RC Joystick\" mode~%bool rc_mode~%~%# The name of the currently active tracker, as defined in the trackers.yaml in the \"mrs_uav_manager\" package.~%string active_tracker~%~%# The status of the currently active tracker.~%mrs_msgs/TrackerStatus tracker_status~%~%# The name of the currently active controller, as defined in the controllers.yaml in the \"mrs_uav_manager\" package.~%string active_controller~%~%# The status of the currently active controller.~%mrs_msgs/ControllerStatus controller_status~%~%# list of controllers and trackers that are loaded and can be switched to~%string[] available_controllers~%string[] available_trackers~%~%# flags reporting on whether the trackers and controller should be \"human switchable\", meaning,~%# whether people should be \"just\" able to switch to them, e.g., using a GUI or TUI interface~%bool[] human_switchable_controllers~%bool[] human_switchable_trackers~%~%================================================================================~%MSG: mrs_msgs/TrackerStatus~%bool active~%bool callbacks_enabled~%~%# is true whenever the tracker is doing something~%# in other words, not idling~%bool have_goal~%~%# is true only then a trajectory is being tracked~%bool tracking_trajectory~%~%int32 trajectory_length~%int32 trajectory_idx~%~%# only when following trajectory~%# the current reference in the trajectory UNINTERPOLATED~%mrs_msgs/ReferenceStamped trajectory_reference~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mrs_msgs/ControllerStatus~%bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlManagerDiagnostics)))
  "Returns full string definition for message of type 'ControlManagerDiagnostics"
  (cl:format cl:nil "# This reports on the state of the ControlManager and the currently active tracker and controller.~%~%time stamp~%string uav_name~%~%# If the motors are enabled, in other words, if the output of the ControlManager can pass out.~%bool motors~%~%# True if the UAV is flying and no special case occurred (emergency land, failsafe, etc.).~%bool flying_normally~%~%# True if under the \"RC Joystick\" mode~%bool rc_mode~%~%# The name of the currently active tracker, as defined in the trackers.yaml in the \"mrs_uav_manager\" package.~%string active_tracker~%~%# The status of the currently active tracker.~%mrs_msgs/TrackerStatus tracker_status~%~%# The name of the currently active controller, as defined in the controllers.yaml in the \"mrs_uav_manager\" package.~%string active_controller~%~%# The status of the currently active controller.~%mrs_msgs/ControllerStatus controller_status~%~%# list of controllers and trackers that are loaded and can be switched to~%string[] available_controllers~%string[] available_trackers~%~%# flags reporting on whether the trackers and controller should be \"human switchable\", meaning,~%# whether people should be \"just\" able to switch to them, e.g., using a GUI or TUI interface~%bool[] human_switchable_controllers~%bool[] human_switchable_trackers~%~%================================================================================~%MSG: mrs_msgs/TrackerStatus~%bool active~%bool callbacks_enabled~%~%# is true whenever the tracker is doing something~%# in other words, not idling~%bool have_goal~%~%# is true only then a trajectory is being tracked~%bool tracking_trajectory~%~%int32 trajectory_length~%int32 trajectory_idx~%~%# only when following trajectory~%# the current reference in the trajectory UNINTERPOLATED~%mrs_msgs/ReferenceStamped trajectory_reference~%~%================================================================================~%MSG: mrs_msgs/ReferenceStamped~%# A Positon+Heading reference with a header.~%~%std_msgs/Header header~%mrs_msgs/Reference reference~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/Reference~%# This message defines a control reference with a Position+Heading.~%~%geometry_msgs/Point position~%~%# Heading is atan2() of XY-world projection of the UAV's body X-axis.~%float64 heading~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mrs_msgs/ControllerStatus~%bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlManagerDiagnostics>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'uav_name))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'active_tracker))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracker_status))
     4 (cl:length (cl:slot-value msg 'active_controller))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controller_status))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'available_trackers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'human_switchable_controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'human_switchable_trackers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlManagerDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlManagerDiagnostics
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':uav_name (uav_name msg))
    (cl:cons ':motors (motors msg))
    (cl:cons ':flying_normally (flying_normally msg))
    (cl:cons ':rc_mode (rc_mode msg))
    (cl:cons ':active_tracker (active_tracker msg))
    (cl:cons ':tracker_status (tracker_status msg))
    (cl:cons ':active_controller (active_controller msg))
    (cl:cons ':controller_status (controller_status msg))
    (cl:cons ':available_controllers (available_controllers msg))
    (cl:cons ':available_trackers (available_trackers msg))
    (cl:cons ':human_switchable_controllers (human_switchable_controllers msg))
    (cl:cons ':human_switchable_trackers (human_switchable_trackers msg))
))
