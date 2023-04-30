; Auto-generated. Do not edit!


(cl:in-package mrs_msgs-msg)


;//! \htmlinclude UavStatus.msg.html

(cl:defclass <UavStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uav_name
    :reader uav_name
    :initarg :uav_name
    :type cl:string
    :initform "")
   (nato_name
    :reader nato_name
    :initarg :nato_name
    :type cl:string
    :initform "")
   (uav_type
    :reader uav_type
    :initarg :uav_type
    :type cl:string
    :initform "")
   (uav_mass
    :reader uav_mass
    :initarg :uav_mass
    :type cl:string
    :initform "")
   (control_manager_diag_hz
    :reader control_manager_diag_hz
    :initarg :control_manager_diag_hz
    :type cl:float
    :initform 0.0)
   (control_manager_diag_color
    :reader control_manager_diag_color
    :initarg :control_manager_diag_color
    :type cl:fixnum
    :initform 0)
   (controllers
    :reader controllers
    :initarg :controllers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (gains
    :reader gains
    :initarg :gains
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (trackers
    :reader trackers
    :initarg :trackers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (constraints
    :reader constraints
    :initarg :constraints
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (fly_state
    :reader fly_state
    :initarg :fly_state
    :type cl:string
    :initform "")
   (null_tracker
    :reader null_tracker
    :initarg :null_tracker
    :type cl:boolean
    :initform cl:nil)
   (secs_flown
    :reader secs_flown
    :initarg :secs_flown
    :type cl:integer
    :initform 0)
   (odom_hz
    :reader odom_hz
    :initarg :odom_hz
    :type cl:float
    :initform 0.0)
   (odom_color
    :reader odom_color
    :initarg :odom_color
    :type cl:fixnum
    :initform 0)
   (odom_x
    :reader odom_x
    :initarg :odom_x
    :type cl:float
    :initform 0.0)
   (odom_y
    :reader odom_y
    :initarg :odom_y
    :type cl:float
    :initform 0.0)
   (odom_z
    :reader odom_z
    :initarg :odom_z
    :type cl:float
    :initform 0.0)
   (odom_hdg
    :reader odom_hdg
    :initarg :odom_hdg
    :type cl:float
    :initform 0.0)
   (odom_frame
    :reader odom_frame
    :initarg :odom_frame
    :type cl:string
    :initform "")
   (odom_estimators_hori
    :reader odom_estimators_hori
    :initarg :odom_estimators_hori
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (odom_estimators_vert
    :reader odom_estimators_vert
    :initarg :odom_estimators_vert
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (odom_estimators_hdg
    :reader odom_estimators_hdg
    :initarg :odom_estimators_hdg
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (cmd_x
    :reader cmd_x
    :initarg :cmd_x
    :type cl:float
    :initform 0.0)
   (cmd_y
    :reader cmd_y
    :initarg :cmd_y
    :type cl:float
    :initform 0.0)
   (cmd_z
    :reader cmd_z
    :initarg :cmd_z
    :type cl:float
    :initform 0.0)
   (cmd_hdg
    :reader cmd_hdg
    :initarg :cmd_hdg
    :type cl:float
    :initform 0.0)
   (cpu_load
    :reader cpu_load
    :initarg :cpu_load
    :type cl:float
    :initform 0.0)
   (cpu_load_total
    :reader cpu_load_total
    :initarg :cpu_load_total
    :type cl:float
    :initform 0.0)
   (cpu_ghz
    :reader cpu_ghz
    :initarg :cpu_ghz
    :type cl:float
    :initform 0.0)
   (cpu_temperature
    :reader cpu_temperature
    :initarg :cpu_temperature
    :type cl:float
    :initform 0.0)
   (free_ram
    :reader free_ram
    :initarg :free_ram
    :type cl:float
    :initform 0.0)
   (total_ram
    :reader total_ram
    :initarg :total_ram
    :type cl:float
    :initform 0.0)
   (free_hdd
    :reader free_hdd
    :initarg :free_hdd
    :type cl:integer
    :initform 0)
   (mavros_hz
    :reader mavros_hz
    :initarg :mavros_hz
    :type cl:float
    :initform 0.0)
   (mavros_color
    :reader mavros_color
    :initarg :mavros_color
    :type cl:fixnum
    :initform 0)
   (mavros_battery_hz
    :reader mavros_battery_hz
    :initarg :mavros_battery_hz
    :type cl:float
    :initform 0.0)
   (mavros_state_hz
    :reader mavros_state_hz
    :initarg :mavros_state_hz
    :type cl:float
    :initform 0.0)
   (mavros_cmd_hz
    :reader mavros_cmd_hz
    :initarg :mavros_cmd_hz
    :type cl:float
    :initform 0.0)
   (mavros_mode
    :reader mavros_mode
    :initarg :mavros_mode
    :type cl:string
    :initform "")
   (mavros_armed
    :reader mavros_armed
    :initarg :mavros_armed
    :type cl:boolean
    :initform cl:nil)
   (mavros_gps_ok
    :reader mavros_gps_ok
    :initarg :mavros_gps_ok
    :type cl:boolean
    :initform cl:nil)
   (mavros_gps_qual
    :reader mavros_gps_qual
    :initarg :mavros_gps_qual
    :type cl:float
    :initform 0.0)
   (battery_volt
    :reader battery_volt
    :initarg :battery_volt
    :type cl:float
    :initform 0.0)
   (battery_curr
    :reader battery_curr
    :initarg :battery_curr
    :type cl:float
    :initform 0.0)
   (battery_wh_drained
    :reader battery_wh_drained
    :initarg :battery_wh_drained
    :type cl:float
    :initform 0.0)
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0)
   (mass_estimate
    :reader mass_estimate
    :initarg :mass_estimate
    :type cl:float
    :initform 0.0)
   (mass_set
    :reader mass_set
    :initarg :mass_set
    :type cl:float
    :initform 0.0)
   (custom_topics
    :reader custom_topics
    :initarg :custom_topics
    :type (cl:vector mrs_msgs-msg:CustomTopic)
   :initform (cl:make-array 0 :element-type 'mrs_msgs-msg:CustomTopic :initial-element (cl:make-instance 'mrs_msgs-msg:CustomTopic)))
   (custom_string_outputs
    :reader custom_string_outputs
    :initarg :custom_string_outputs
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (custom_services
    :reader custom_services
    :initarg :custom_services
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (node_cpu_loads
    :reader node_cpu_loads
    :initarg :node_cpu_loads
    :type mrs_msgs-msg:NodeCpuLoad
    :initform (cl:make-instance 'mrs_msgs-msg:NodeCpuLoad))
   (flying_normally
    :reader flying_normally
    :initarg :flying_normally
    :type cl:boolean
    :initform cl:nil)
   (have_goal
    :reader have_goal
    :initarg :have_goal
    :type cl:boolean
    :initform cl:nil)
   (callbacks_enabled
    :reader callbacks_enabled
    :initarg :callbacks_enabled
    :type cl:boolean
    :initform cl:nil)
   (collision_avoidance_enabled
    :reader collision_avoidance_enabled
    :initarg :collision_avoidance_enabled
    :type cl:boolean
    :initform cl:nil)
   (avoiding_collision
    :reader avoiding_collision
    :initarg :avoiding_collision
    :type cl:boolean
    :initform cl:nil)
   (automatic_start_can_takeoff
    :reader automatic_start_can_takeoff
    :initarg :automatic_start_can_takeoff
    :type cl:boolean
    :initform cl:nil)
   (num_other_uavs
    :reader num_other_uavs
    :initarg :num_other_uavs
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UavStatus (<UavStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mrs_msgs-msg:<UavStatus> is deprecated: use mrs_msgs-msg:UavStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:header-val is deprecated.  Use mrs_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uav_name-val :lambda-list '(m))
(cl:defmethod uav_name-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:uav_name-val is deprecated.  Use mrs_msgs-msg:uav_name instead.")
  (uav_name m))

(cl:ensure-generic-function 'nato_name-val :lambda-list '(m))
(cl:defmethod nato_name-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:nato_name-val is deprecated.  Use mrs_msgs-msg:nato_name instead.")
  (nato_name m))

(cl:ensure-generic-function 'uav_type-val :lambda-list '(m))
(cl:defmethod uav_type-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:uav_type-val is deprecated.  Use mrs_msgs-msg:uav_type instead.")
  (uav_type m))

(cl:ensure-generic-function 'uav_mass-val :lambda-list '(m))
(cl:defmethod uav_mass-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:uav_mass-val is deprecated.  Use mrs_msgs-msg:uav_mass instead.")
  (uav_mass m))

(cl:ensure-generic-function 'control_manager_diag_hz-val :lambda-list '(m))
(cl:defmethod control_manager_diag_hz-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:control_manager_diag_hz-val is deprecated.  Use mrs_msgs-msg:control_manager_diag_hz instead.")
  (control_manager_diag_hz m))

(cl:ensure-generic-function 'control_manager_diag_color-val :lambda-list '(m))
(cl:defmethod control_manager_diag_color-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:control_manager_diag_color-val is deprecated.  Use mrs_msgs-msg:control_manager_diag_color instead.")
  (control_manager_diag_color m))

(cl:ensure-generic-function 'controllers-val :lambda-list '(m))
(cl:defmethod controllers-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:controllers-val is deprecated.  Use mrs_msgs-msg:controllers instead.")
  (controllers m))

(cl:ensure-generic-function 'gains-val :lambda-list '(m))
(cl:defmethod gains-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:gains-val is deprecated.  Use mrs_msgs-msg:gains instead.")
  (gains m))

(cl:ensure-generic-function 'trackers-val :lambda-list '(m))
(cl:defmethod trackers-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:trackers-val is deprecated.  Use mrs_msgs-msg:trackers instead.")
  (trackers m))

(cl:ensure-generic-function 'constraints-val :lambda-list '(m))
(cl:defmethod constraints-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:constraints-val is deprecated.  Use mrs_msgs-msg:constraints instead.")
  (constraints m))

(cl:ensure-generic-function 'fly_state-val :lambda-list '(m))
(cl:defmethod fly_state-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:fly_state-val is deprecated.  Use mrs_msgs-msg:fly_state instead.")
  (fly_state m))

(cl:ensure-generic-function 'null_tracker-val :lambda-list '(m))
(cl:defmethod null_tracker-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:null_tracker-val is deprecated.  Use mrs_msgs-msg:null_tracker instead.")
  (null_tracker m))

(cl:ensure-generic-function 'secs_flown-val :lambda-list '(m))
(cl:defmethod secs_flown-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:secs_flown-val is deprecated.  Use mrs_msgs-msg:secs_flown instead.")
  (secs_flown m))

(cl:ensure-generic-function 'odom_hz-val :lambda-list '(m))
(cl:defmethod odom_hz-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_hz-val is deprecated.  Use mrs_msgs-msg:odom_hz instead.")
  (odom_hz m))

(cl:ensure-generic-function 'odom_color-val :lambda-list '(m))
(cl:defmethod odom_color-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_color-val is deprecated.  Use mrs_msgs-msg:odom_color instead.")
  (odom_color m))

(cl:ensure-generic-function 'odom_x-val :lambda-list '(m))
(cl:defmethod odom_x-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_x-val is deprecated.  Use mrs_msgs-msg:odom_x instead.")
  (odom_x m))

(cl:ensure-generic-function 'odom_y-val :lambda-list '(m))
(cl:defmethod odom_y-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_y-val is deprecated.  Use mrs_msgs-msg:odom_y instead.")
  (odom_y m))

(cl:ensure-generic-function 'odom_z-val :lambda-list '(m))
(cl:defmethod odom_z-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_z-val is deprecated.  Use mrs_msgs-msg:odom_z instead.")
  (odom_z m))

(cl:ensure-generic-function 'odom_hdg-val :lambda-list '(m))
(cl:defmethod odom_hdg-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_hdg-val is deprecated.  Use mrs_msgs-msg:odom_hdg instead.")
  (odom_hdg m))

(cl:ensure-generic-function 'odom_frame-val :lambda-list '(m))
(cl:defmethod odom_frame-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_frame-val is deprecated.  Use mrs_msgs-msg:odom_frame instead.")
  (odom_frame m))

(cl:ensure-generic-function 'odom_estimators_hori-val :lambda-list '(m))
(cl:defmethod odom_estimators_hori-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_estimators_hori-val is deprecated.  Use mrs_msgs-msg:odom_estimators_hori instead.")
  (odom_estimators_hori m))

(cl:ensure-generic-function 'odom_estimators_vert-val :lambda-list '(m))
(cl:defmethod odom_estimators_vert-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_estimators_vert-val is deprecated.  Use mrs_msgs-msg:odom_estimators_vert instead.")
  (odom_estimators_vert m))

(cl:ensure-generic-function 'odom_estimators_hdg-val :lambda-list '(m))
(cl:defmethod odom_estimators_hdg-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:odom_estimators_hdg-val is deprecated.  Use mrs_msgs-msg:odom_estimators_hdg instead.")
  (odom_estimators_hdg m))

(cl:ensure-generic-function 'cmd_x-val :lambda-list '(m))
(cl:defmethod cmd_x-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_x-val is deprecated.  Use mrs_msgs-msg:cmd_x instead.")
  (cmd_x m))

(cl:ensure-generic-function 'cmd_y-val :lambda-list '(m))
(cl:defmethod cmd_y-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_y-val is deprecated.  Use mrs_msgs-msg:cmd_y instead.")
  (cmd_y m))

(cl:ensure-generic-function 'cmd_z-val :lambda-list '(m))
(cl:defmethod cmd_z-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_z-val is deprecated.  Use mrs_msgs-msg:cmd_z instead.")
  (cmd_z m))

(cl:ensure-generic-function 'cmd_hdg-val :lambda-list '(m))
(cl:defmethod cmd_hdg-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cmd_hdg-val is deprecated.  Use mrs_msgs-msg:cmd_hdg instead.")
  (cmd_hdg m))

(cl:ensure-generic-function 'cpu_load-val :lambda-list '(m))
(cl:defmethod cpu_load-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cpu_load-val is deprecated.  Use mrs_msgs-msg:cpu_load instead.")
  (cpu_load m))

(cl:ensure-generic-function 'cpu_load_total-val :lambda-list '(m))
(cl:defmethod cpu_load_total-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cpu_load_total-val is deprecated.  Use mrs_msgs-msg:cpu_load_total instead.")
  (cpu_load_total m))

(cl:ensure-generic-function 'cpu_ghz-val :lambda-list '(m))
(cl:defmethod cpu_ghz-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cpu_ghz-val is deprecated.  Use mrs_msgs-msg:cpu_ghz instead.")
  (cpu_ghz m))

(cl:ensure-generic-function 'cpu_temperature-val :lambda-list '(m))
(cl:defmethod cpu_temperature-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:cpu_temperature-val is deprecated.  Use mrs_msgs-msg:cpu_temperature instead.")
  (cpu_temperature m))

(cl:ensure-generic-function 'free_ram-val :lambda-list '(m))
(cl:defmethod free_ram-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:free_ram-val is deprecated.  Use mrs_msgs-msg:free_ram instead.")
  (free_ram m))

(cl:ensure-generic-function 'total_ram-val :lambda-list '(m))
(cl:defmethod total_ram-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:total_ram-val is deprecated.  Use mrs_msgs-msg:total_ram instead.")
  (total_ram m))

(cl:ensure-generic-function 'free_hdd-val :lambda-list '(m))
(cl:defmethod free_hdd-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:free_hdd-val is deprecated.  Use mrs_msgs-msg:free_hdd instead.")
  (free_hdd m))

(cl:ensure-generic-function 'mavros_hz-val :lambda-list '(m))
(cl:defmethod mavros_hz-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_hz-val is deprecated.  Use mrs_msgs-msg:mavros_hz instead.")
  (mavros_hz m))

(cl:ensure-generic-function 'mavros_color-val :lambda-list '(m))
(cl:defmethod mavros_color-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_color-val is deprecated.  Use mrs_msgs-msg:mavros_color instead.")
  (mavros_color m))

(cl:ensure-generic-function 'mavros_battery_hz-val :lambda-list '(m))
(cl:defmethod mavros_battery_hz-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_battery_hz-val is deprecated.  Use mrs_msgs-msg:mavros_battery_hz instead.")
  (mavros_battery_hz m))

(cl:ensure-generic-function 'mavros_state_hz-val :lambda-list '(m))
(cl:defmethod mavros_state_hz-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_state_hz-val is deprecated.  Use mrs_msgs-msg:mavros_state_hz instead.")
  (mavros_state_hz m))

(cl:ensure-generic-function 'mavros_cmd_hz-val :lambda-list '(m))
(cl:defmethod mavros_cmd_hz-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_cmd_hz-val is deprecated.  Use mrs_msgs-msg:mavros_cmd_hz instead.")
  (mavros_cmd_hz m))

(cl:ensure-generic-function 'mavros_mode-val :lambda-list '(m))
(cl:defmethod mavros_mode-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_mode-val is deprecated.  Use mrs_msgs-msg:mavros_mode instead.")
  (mavros_mode m))

(cl:ensure-generic-function 'mavros_armed-val :lambda-list '(m))
(cl:defmethod mavros_armed-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_armed-val is deprecated.  Use mrs_msgs-msg:mavros_armed instead.")
  (mavros_armed m))

(cl:ensure-generic-function 'mavros_gps_ok-val :lambda-list '(m))
(cl:defmethod mavros_gps_ok-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_gps_ok-val is deprecated.  Use mrs_msgs-msg:mavros_gps_ok instead.")
  (mavros_gps_ok m))

(cl:ensure-generic-function 'mavros_gps_qual-val :lambda-list '(m))
(cl:defmethod mavros_gps_qual-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mavros_gps_qual-val is deprecated.  Use mrs_msgs-msg:mavros_gps_qual instead.")
  (mavros_gps_qual m))

(cl:ensure-generic-function 'battery_volt-val :lambda-list '(m))
(cl:defmethod battery_volt-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:battery_volt-val is deprecated.  Use mrs_msgs-msg:battery_volt instead.")
  (battery_volt m))

(cl:ensure-generic-function 'battery_curr-val :lambda-list '(m))
(cl:defmethod battery_curr-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:battery_curr-val is deprecated.  Use mrs_msgs-msg:battery_curr instead.")
  (battery_curr m))

(cl:ensure-generic-function 'battery_wh_drained-val :lambda-list '(m))
(cl:defmethod battery_wh_drained-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:battery_wh_drained-val is deprecated.  Use mrs_msgs-msg:battery_wh_drained instead.")
  (battery_wh_drained m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:thrust-val is deprecated.  Use mrs_msgs-msg:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'mass_estimate-val :lambda-list '(m))
(cl:defmethod mass_estimate-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mass_estimate-val is deprecated.  Use mrs_msgs-msg:mass_estimate instead.")
  (mass_estimate m))

(cl:ensure-generic-function 'mass_set-val :lambda-list '(m))
(cl:defmethod mass_set-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:mass_set-val is deprecated.  Use mrs_msgs-msg:mass_set instead.")
  (mass_set m))

(cl:ensure-generic-function 'custom_topics-val :lambda-list '(m))
(cl:defmethod custom_topics-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:custom_topics-val is deprecated.  Use mrs_msgs-msg:custom_topics instead.")
  (custom_topics m))

(cl:ensure-generic-function 'custom_string_outputs-val :lambda-list '(m))
(cl:defmethod custom_string_outputs-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:custom_string_outputs-val is deprecated.  Use mrs_msgs-msg:custom_string_outputs instead.")
  (custom_string_outputs m))

(cl:ensure-generic-function 'custom_services-val :lambda-list '(m))
(cl:defmethod custom_services-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:custom_services-val is deprecated.  Use mrs_msgs-msg:custom_services instead.")
  (custom_services m))

(cl:ensure-generic-function 'node_cpu_loads-val :lambda-list '(m))
(cl:defmethod node_cpu_loads-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:node_cpu_loads-val is deprecated.  Use mrs_msgs-msg:node_cpu_loads instead.")
  (node_cpu_loads m))

(cl:ensure-generic-function 'flying_normally-val :lambda-list '(m))
(cl:defmethod flying_normally-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:flying_normally-val is deprecated.  Use mrs_msgs-msg:flying_normally instead.")
  (flying_normally m))

(cl:ensure-generic-function 'have_goal-val :lambda-list '(m))
(cl:defmethod have_goal-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:have_goal-val is deprecated.  Use mrs_msgs-msg:have_goal instead.")
  (have_goal m))

(cl:ensure-generic-function 'callbacks_enabled-val :lambda-list '(m))
(cl:defmethod callbacks_enabled-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:callbacks_enabled-val is deprecated.  Use mrs_msgs-msg:callbacks_enabled instead.")
  (callbacks_enabled m))

(cl:ensure-generic-function 'collision_avoidance_enabled-val :lambda-list '(m))
(cl:defmethod collision_avoidance_enabled-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:collision_avoidance_enabled-val is deprecated.  Use mrs_msgs-msg:collision_avoidance_enabled instead.")
  (collision_avoidance_enabled m))

(cl:ensure-generic-function 'avoiding_collision-val :lambda-list '(m))
(cl:defmethod avoiding_collision-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:avoiding_collision-val is deprecated.  Use mrs_msgs-msg:avoiding_collision instead.")
  (avoiding_collision m))

(cl:ensure-generic-function 'automatic_start_can_takeoff-val :lambda-list '(m))
(cl:defmethod automatic_start_can_takeoff-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:automatic_start_can_takeoff-val is deprecated.  Use mrs_msgs-msg:automatic_start_can_takeoff instead.")
  (automatic_start_can_takeoff m))

(cl:ensure-generic-function 'num_other_uavs-val :lambda-list '(m))
(cl:defmethod num_other_uavs-val ((m <UavStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mrs_msgs-msg:num_other_uavs-val is deprecated.  Use mrs_msgs-msg:num_other_uavs instead.")
  (num_other_uavs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavStatus>) ostream)
  "Serializes a message object of type '<UavStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nato_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nato_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uav_mass))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uav_mass))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'control_manager_diag_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'control_manager_diag_color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'controllers))))
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
   (cl:slot-value msg 'controllers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gains))))
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
   (cl:slot-value msg 'gains))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trackers))))
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
   (cl:slot-value msg 'trackers))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'constraints))))
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
   (cl:slot-value msg 'constraints))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fly_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fly_state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'null_tracker) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secs_flown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'secs_flown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'secs_flown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'secs_flown)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'odom_color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'odom_hdg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'odom_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'odom_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'odom_estimators_hori))))
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
   (cl:slot-value msg 'odom_estimators_hori))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'odom_estimators_vert))))
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
   (cl:slot-value msg 'odom_estimators_vert))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'odom_estimators_hdg))))
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
   (cl:slot-value msg 'odom_estimators_hdg))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cmd_hdg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_load_total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_ghz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'free_ram))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_ram))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'free_hdd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mavros_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'mavros_color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mavros_battery_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mavros_state_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mavros_cmd_hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mavros_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mavros_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mavros_armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mavros_gps_ok) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mavros_gps_qual))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_volt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_curr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_wh_drained))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mass_estimate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mass_set))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'custom_topics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'custom_topics))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'custom_string_outputs))))
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
   (cl:slot-value msg 'custom_string_outputs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'custom_services))))
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
   (cl:slot-value msg 'custom_services))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_cpu_loads) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flying_normally) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'have_goal) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'callbacks_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision_avoidance_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'avoiding_collision) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'automatic_start_can_takeoff) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_other_uavs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_other_uavs)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavStatus>) istream)
  "Deserializes a message object of type '<UavStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uav_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nato_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nato_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uav_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uav_mass) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uav_mass) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'control_manager_diag_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_manager_diag_color) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'controllers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'controllers)))
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
  (cl:setf (cl:slot-value msg 'gains) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gains)))
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
  (cl:setf (cl:slot-value msg 'trackers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trackers)))
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
  (cl:setf (cl:slot-value msg 'constraints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'constraints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fly_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fly_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'null_tracker) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'secs_flown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'secs_flown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'secs_flown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'secs_flown)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_color) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odom_hdg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'odom_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'odom_estimators_hori) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'odom_estimators_hori)))
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
  (cl:setf (cl:slot-value msg 'odom_estimators_vert) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'odom_estimators_vert)))
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
  (cl:setf (cl:slot-value msg 'odom_estimators_hdg) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'odom_estimators_hdg)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_hdg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_load) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_load_total) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_ghz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'free_ram) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_ram) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'free_hdd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mavros_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mavros_color) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mavros_battery_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mavros_state_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mavros_cmd_hz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mavros_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mavros_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'mavros_armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mavros_gps_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mavros_gps_qual) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_volt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_curr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_wh_drained) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mass_estimate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mass_set) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'custom_topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'custom_topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mrs_msgs-msg:CustomTopic))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'custom_string_outputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'custom_string_outputs)))
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
  (cl:setf (cl:slot-value msg 'custom_services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'custom_services)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_cpu_loads) istream)
    (cl:setf (cl:slot-value msg 'flying_normally) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'have_goal) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'callbacks_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'collision_avoidance_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'avoiding_collision) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'automatic_start_can_takeoff) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_other_uavs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_other_uavs)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavStatus>)))
  "Returns string type for a message object of type '<UavStatus>"
  "mrs_msgs/UavStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavStatus)))
  "Returns string type for a message object of type 'UavStatus"
  "mrs_msgs/UavStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavStatus>)))
  "Returns md5sum for a message object of type '<UavStatus>"
  "96b2a311d1a3f116c9cce438b1893925")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavStatus)))
  "Returns md5sum for a message object of type 'UavStatus"
  "96b2a311d1a3f116c9cce438b1893925")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavStatus>)))
  "Returns full string definition for message of type '<UavStatus>"
  (cl:format cl:nil "Header header~%~%string uav_name~%string nato_name~%string uav_type~%string uav_mass~%~%float32 control_manager_diag_hz~%int16 control_manager_diag_color~%string[] controllers~%string[] gains~%string[] trackers~%string[] constraints~%string fly_state~%bool null_tracker~%uint32 secs_flown~%~%float32 odom_hz~%int16 odom_color~%float32 odom_x~%float32 odom_y~%float32 odom_z~%float32 odom_hdg~%string odom_frame~%string[] odom_estimators_hori~%string[] odom_estimators_vert~%string[] odom_estimators_hdg~%~%float32 cmd_x~%float32 cmd_y~%float32 cmd_z~%float32 cmd_hdg~%~%float32 cpu_load~%float32 cpu_load_total~%float32 cpu_ghz~%float32 cpu_temperature~%float32 free_ram~%float32 total_ram~%int32 free_hdd~%~%float32 mavros_hz~%int16 mavros_color~%float32 mavros_battery_hz~%float32 mavros_state_hz~%float32 mavros_cmd_hz~%string mavros_mode~%bool mavros_armed~%bool mavros_gps_ok~%float32 mavros_gps_qual~%float32 battery_volt~%float32 battery_curr~%float32 battery_wh_drained~%float32 thrust~%float32 mass_estimate~%float32 mass_set~%~%CustomTopic[] custom_topics~%string[] custom_string_outputs~%string[] custom_services~%~%NodeCpuLoad node_cpu_loads~%~%bool flying_normally~%bool have_goal~%bool callbacks_enabled~%bool collision_avoidance_enabled~%bool avoiding_collision~%bool automatic_start_can_takeoff~%~%uint16 num_other_uavs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/CustomTopic~%string topic_name~%float32 topic_hz~%int16 topic_color~%~%================================================================================~%MSG: mrs_msgs/NodeCpuLoad~%string[] node_names~%float32[] cpu_loads~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavStatus)))
  "Returns full string definition for message of type 'UavStatus"
  (cl:format cl:nil "Header header~%~%string uav_name~%string nato_name~%string uav_type~%string uav_mass~%~%float32 control_manager_diag_hz~%int16 control_manager_diag_color~%string[] controllers~%string[] gains~%string[] trackers~%string[] constraints~%string fly_state~%bool null_tracker~%uint32 secs_flown~%~%float32 odom_hz~%int16 odom_color~%float32 odom_x~%float32 odom_y~%float32 odom_z~%float32 odom_hdg~%string odom_frame~%string[] odom_estimators_hori~%string[] odom_estimators_vert~%string[] odom_estimators_hdg~%~%float32 cmd_x~%float32 cmd_y~%float32 cmd_z~%float32 cmd_hdg~%~%float32 cpu_load~%float32 cpu_load_total~%float32 cpu_ghz~%float32 cpu_temperature~%float32 free_ram~%float32 total_ram~%int32 free_hdd~%~%float32 mavros_hz~%int16 mavros_color~%float32 mavros_battery_hz~%float32 mavros_state_hz~%float32 mavros_cmd_hz~%string mavros_mode~%bool mavros_armed~%bool mavros_gps_ok~%float32 mavros_gps_qual~%float32 battery_volt~%float32 battery_curr~%float32 battery_wh_drained~%float32 thrust~%float32 mass_estimate~%float32 mass_set~%~%CustomTopic[] custom_topics~%string[] custom_string_outputs~%string[] custom_services~%~%NodeCpuLoad node_cpu_loads~%~%bool flying_normally~%bool have_goal~%bool callbacks_enabled~%bool collision_avoidance_enabled~%bool avoiding_collision~%bool automatic_start_can_takeoff~%~%uint16 num_other_uavs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mrs_msgs/CustomTopic~%string topic_name~%float32 topic_hz~%int16 topic_color~%~%================================================================================~%MSG: mrs_msgs/NodeCpuLoad~%string[] node_names~%float32[] cpu_loads~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'uav_name))
     4 (cl:length (cl:slot-value msg 'nato_name))
     4 (cl:length (cl:slot-value msg 'uav_type))
     4 (cl:length (cl:slot-value msg 'uav_mass))
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'controllers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gains) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trackers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'constraints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'fly_state))
     1
     4
     4
     2
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'odom_frame))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'odom_estimators_hori) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'odom_estimators_vert) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'odom_estimators_hdg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     2
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'mavros_mode))
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'custom_topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'custom_string_outputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'custom_services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_cpu_loads))
     1
     1
     1
     1
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'UavStatus
    (cl:cons ':header (header msg))
    (cl:cons ':uav_name (uav_name msg))
    (cl:cons ':nato_name (nato_name msg))
    (cl:cons ':uav_type (uav_type msg))
    (cl:cons ':uav_mass (uav_mass msg))
    (cl:cons ':control_manager_diag_hz (control_manager_diag_hz msg))
    (cl:cons ':control_manager_diag_color (control_manager_diag_color msg))
    (cl:cons ':controllers (controllers msg))
    (cl:cons ':gains (gains msg))
    (cl:cons ':trackers (trackers msg))
    (cl:cons ':constraints (constraints msg))
    (cl:cons ':fly_state (fly_state msg))
    (cl:cons ':null_tracker (null_tracker msg))
    (cl:cons ':secs_flown (secs_flown msg))
    (cl:cons ':odom_hz (odom_hz msg))
    (cl:cons ':odom_color (odom_color msg))
    (cl:cons ':odom_x (odom_x msg))
    (cl:cons ':odom_y (odom_y msg))
    (cl:cons ':odom_z (odom_z msg))
    (cl:cons ':odom_hdg (odom_hdg msg))
    (cl:cons ':odom_frame (odom_frame msg))
    (cl:cons ':odom_estimators_hori (odom_estimators_hori msg))
    (cl:cons ':odom_estimators_vert (odom_estimators_vert msg))
    (cl:cons ':odom_estimators_hdg (odom_estimators_hdg msg))
    (cl:cons ':cmd_x (cmd_x msg))
    (cl:cons ':cmd_y (cmd_y msg))
    (cl:cons ':cmd_z (cmd_z msg))
    (cl:cons ':cmd_hdg (cmd_hdg msg))
    (cl:cons ':cpu_load (cpu_load msg))
    (cl:cons ':cpu_load_total (cpu_load_total msg))
    (cl:cons ':cpu_ghz (cpu_ghz msg))
    (cl:cons ':cpu_temperature (cpu_temperature msg))
    (cl:cons ':free_ram (free_ram msg))
    (cl:cons ':total_ram (total_ram msg))
    (cl:cons ':free_hdd (free_hdd msg))
    (cl:cons ':mavros_hz (mavros_hz msg))
    (cl:cons ':mavros_color (mavros_color msg))
    (cl:cons ':mavros_battery_hz (mavros_battery_hz msg))
    (cl:cons ':mavros_state_hz (mavros_state_hz msg))
    (cl:cons ':mavros_cmd_hz (mavros_cmd_hz msg))
    (cl:cons ':mavros_mode (mavros_mode msg))
    (cl:cons ':mavros_armed (mavros_armed msg))
    (cl:cons ':mavros_gps_ok (mavros_gps_ok msg))
    (cl:cons ':mavros_gps_qual (mavros_gps_qual msg))
    (cl:cons ':battery_volt (battery_volt msg))
    (cl:cons ':battery_curr (battery_curr msg))
    (cl:cons ':battery_wh_drained (battery_wh_drained msg))
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':mass_estimate (mass_estimate msg))
    (cl:cons ':mass_set (mass_set msg))
    (cl:cons ':custom_topics (custom_topics msg))
    (cl:cons ':custom_string_outputs (custom_string_outputs msg))
    (cl:cons ':custom_services (custom_services msg))
    (cl:cons ':node_cpu_loads (node_cpu_loads msg))
    (cl:cons ':flying_normally (flying_normally msg))
    (cl:cons ':have_goal (have_goal msg))
    (cl:cons ':callbacks_enabled (callbacks_enabled msg))
    (cl:cons ':collision_avoidance_enabled (collision_avoidance_enabled msg))
    (cl:cons ':avoiding_collision (avoiding_collision msg))
    (cl:cons ':automatic_start_can_takeoff (automatic_start_can_takeoff msg))
    (cl:cons ':num_other_uavs (num_other_uavs msg))
))
