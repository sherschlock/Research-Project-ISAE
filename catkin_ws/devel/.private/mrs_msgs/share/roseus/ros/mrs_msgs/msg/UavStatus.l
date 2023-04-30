;; Auto-generated. Do not edit!


(when (boundp 'mrs_msgs::UavStatus)
  (if (not (find-package "MRS_MSGS"))
    (make-package "MRS_MSGS"))
  (shadow 'UavStatus (find-package "MRS_MSGS")))
(unless (find-package "MRS_MSGS::UAVSTATUS")
  (make-package "MRS_MSGS::UAVSTATUS"))

(in-package "ROS")
;;//! \htmlinclude UavStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mrs_msgs::UavStatus
  :super ros::object
  :slots (_header _uav_name _nato_name _uav_type _uav_mass _control_manager_diag_hz _control_manager_diag_color _controllers _gains _trackers _constraints _fly_state _null_tracker _secs_flown _odom_hz _odom_color _odom_x _odom_y _odom_z _odom_hdg _odom_frame _odom_estimators_hori _odom_estimators_vert _odom_estimators_hdg _cmd_x _cmd_y _cmd_z _cmd_hdg _cpu_load _cpu_load_total _cpu_ghz _cpu_temperature _free_ram _total_ram _free_hdd _mavros_hz _mavros_color _mavros_battery_hz _mavros_state_hz _mavros_cmd_hz _mavros_mode _mavros_armed _mavros_gps_ok _mavros_gps_qual _battery_volt _battery_curr _battery_wh_drained _thrust _mass_estimate _mass_set _custom_topics _custom_string_outputs _custom_services _node_cpu_loads _flying_normally _have_goal _callbacks_enabled _collision_avoidance_enabled _avoiding_collision _automatic_start_can_takeoff _num_other_uavs ))

(defmethod mrs_msgs::UavStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uav_name __uav_name) "")
    ((:nato_name __nato_name) "")
    ((:uav_type __uav_type) "")
    ((:uav_mass __uav_mass) "")
    ((:control_manager_diag_hz __control_manager_diag_hz) 0.0)
    ((:control_manager_diag_color __control_manager_diag_color) 0)
    ((:controllers __controllers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:gains __gains) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:trackers __trackers) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:constraints __constraints) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:fly_state __fly_state) "")
    ((:null_tracker __null_tracker) nil)
    ((:secs_flown __secs_flown) 0)
    ((:odom_hz __odom_hz) 0.0)
    ((:odom_color __odom_color) 0)
    ((:odom_x __odom_x) 0.0)
    ((:odom_y __odom_y) 0.0)
    ((:odom_z __odom_z) 0.0)
    ((:odom_hdg __odom_hdg) 0.0)
    ((:odom_frame __odom_frame) "")
    ((:odom_estimators_hori __odom_estimators_hori) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:odom_estimators_vert __odom_estimators_vert) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:odom_estimators_hdg __odom_estimators_hdg) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:cmd_x __cmd_x) 0.0)
    ((:cmd_y __cmd_y) 0.0)
    ((:cmd_z __cmd_z) 0.0)
    ((:cmd_hdg __cmd_hdg) 0.0)
    ((:cpu_load __cpu_load) 0.0)
    ((:cpu_load_total __cpu_load_total) 0.0)
    ((:cpu_ghz __cpu_ghz) 0.0)
    ((:cpu_temperature __cpu_temperature) 0.0)
    ((:free_ram __free_ram) 0.0)
    ((:total_ram __total_ram) 0.0)
    ((:free_hdd __free_hdd) 0)
    ((:mavros_hz __mavros_hz) 0.0)
    ((:mavros_color __mavros_color) 0)
    ((:mavros_battery_hz __mavros_battery_hz) 0.0)
    ((:mavros_state_hz __mavros_state_hz) 0.0)
    ((:mavros_cmd_hz __mavros_cmd_hz) 0.0)
    ((:mavros_mode __mavros_mode) "")
    ((:mavros_armed __mavros_armed) nil)
    ((:mavros_gps_ok __mavros_gps_ok) nil)
    ((:mavros_gps_qual __mavros_gps_qual) 0.0)
    ((:battery_volt __battery_volt) 0.0)
    ((:battery_curr __battery_curr) 0.0)
    ((:battery_wh_drained __battery_wh_drained) 0.0)
    ((:thrust __thrust) 0.0)
    ((:mass_estimate __mass_estimate) 0.0)
    ((:mass_set __mass_set) 0.0)
    ((:custom_topics __custom_topics) ())
    ((:custom_string_outputs __custom_string_outputs) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:custom_services __custom_services) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:node_cpu_loads __node_cpu_loads) (instance mrs_msgs::NodeCpuLoad :init))
    ((:flying_normally __flying_normally) nil)
    ((:have_goal __have_goal) nil)
    ((:callbacks_enabled __callbacks_enabled) nil)
    ((:collision_avoidance_enabled __collision_avoidance_enabled) nil)
    ((:avoiding_collision __avoiding_collision) nil)
    ((:automatic_start_can_takeoff __automatic_start_can_takeoff) nil)
    ((:num_other_uavs __num_other_uavs) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _uav_name (string __uav_name))
   (setq _nato_name (string __nato_name))
   (setq _uav_type (string __uav_type))
   (setq _uav_mass (string __uav_mass))
   (setq _control_manager_diag_hz (float __control_manager_diag_hz))
   (setq _control_manager_diag_color (round __control_manager_diag_color))
   (setq _controllers __controllers)
   (setq _gains __gains)
   (setq _trackers __trackers)
   (setq _constraints __constraints)
   (setq _fly_state (string __fly_state))
   (setq _null_tracker __null_tracker)
   (setq _secs_flown (round __secs_flown))
   (setq _odom_hz (float __odom_hz))
   (setq _odom_color (round __odom_color))
   (setq _odom_x (float __odom_x))
   (setq _odom_y (float __odom_y))
   (setq _odom_z (float __odom_z))
   (setq _odom_hdg (float __odom_hdg))
   (setq _odom_frame (string __odom_frame))
   (setq _odom_estimators_hori __odom_estimators_hori)
   (setq _odom_estimators_vert __odom_estimators_vert)
   (setq _odom_estimators_hdg __odom_estimators_hdg)
   (setq _cmd_x (float __cmd_x))
   (setq _cmd_y (float __cmd_y))
   (setq _cmd_z (float __cmd_z))
   (setq _cmd_hdg (float __cmd_hdg))
   (setq _cpu_load (float __cpu_load))
   (setq _cpu_load_total (float __cpu_load_total))
   (setq _cpu_ghz (float __cpu_ghz))
   (setq _cpu_temperature (float __cpu_temperature))
   (setq _free_ram (float __free_ram))
   (setq _total_ram (float __total_ram))
   (setq _free_hdd (round __free_hdd))
   (setq _mavros_hz (float __mavros_hz))
   (setq _mavros_color (round __mavros_color))
   (setq _mavros_battery_hz (float __mavros_battery_hz))
   (setq _mavros_state_hz (float __mavros_state_hz))
   (setq _mavros_cmd_hz (float __mavros_cmd_hz))
   (setq _mavros_mode (string __mavros_mode))
   (setq _mavros_armed __mavros_armed)
   (setq _mavros_gps_ok __mavros_gps_ok)
   (setq _mavros_gps_qual (float __mavros_gps_qual))
   (setq _battery_volt (float __battery_volt))
   (setq _battery_curr (float __battery_curr))
   (setq _battery_wh_drained (float __battery_wh_drained))
   (setq _thrust (float __thrust))
   (setq _mass_estimate (float __mass_estimate))
   (setq _mass_set (float __mass_set))
   (setq _custom_topics __custom_topics)
   (setq _custom_string_outputs __custom_string_outputs)
   (setq _custom_services __custom_services)
   (setq _node_cpu_loads __node_cpu_loads)
   (setq _flying_normally __flying_normally)
   (setq _have_goal __have_goal)
   (setq _callbacks_enabled __callbacks_enabled)
   (setq _collision_avoidance_enabled __collision_avoidance_enabled)
   (setq _avoiding_collision __avoiding_collision)
   (setq _automatic_start_can_takeoff __automatic_start_can_takeoff)
   (setq _num_other_uavs (round __num_other_uavs))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:uav_name
   (&optional __uav_name)
   (if __uav_name (setq _uav_name __uav_name)) _uav_name)
  (:nato_name
   (&optional __nato_name)
   (if __nato_name (setq _nato_name __nato_name)) _nato_name)
  (:uav_type
   (&optional __uav_type)
   (if __uav_type (setq _uav_type __uav_type)) _uav_type)
  (:uav_mass
   (&optional __uav_mass)
   (if __uav_mass (setq _uav_mass __uav_mass)) _uav_mass)
  (:control_manager_diag_hz
   (&optional __control_manager_diag_hz)
   (if __control_manager_diag_hz (setq _control_manager_diag_hz __control_manager_diag_hz)) _control_manager_diag_hz)
  (:control_manager_diag_color
   (&optional __control_manager_diag_color)
   (if __control_manager_diag_color (setq _control_manager_diag_color __control_manager_diag_color)) _control_manager_diag_color)
  (:controllers
   (&optional __controllers)
   (if __controllers (setq _controllers __controllers)) _controllers)
  (:gains
   (&optional __gains)
   (if __gains (setq _gains __gains)) _gains)
  (:trackers
   (&optional __trackers)
   (if __trackers (setq _trackers __trackers)) _trackers)
  (:constraints
   (&optional __constraints)
   (if __constraints (setq _constraints __constraints)) _constraints)
  (:fly_state
   (&optional __fly_state)
   (if __fly_state (setq _fly_state __fly_state)) _fly_state)
  (:null_tracker
   (&optional (__null_tracker :null))
   (if (not (eq __null_tracker :null)) (setq _null_tracker __null_tracker)) _null_tracker)
  (:secs_flown
   (&optional __secs_flown)
   (if __secs_flown (setq _secs_flown __secs_flown)) _secs_flown)
  (:odom_hz
   (&optional __odom_hz)
   (if __odom_hz (setq _odom_hz __odom_hz)) _odom_hz)
  (:odom_color
   (&optional __odom_color)
   (if __odom_color (setq _odom_color __odom_color)) _odom_color)
  (:odom_x
   (&optional __odom_x)
   (if __odom_x (setq _odom_x __odom_x)) _odom_x)
  (:odom_y
   (&optional __odom_y)
   (if __odom_y (setq _odom_y __odom_y)) _odom_y)
  (:odom_z
   (&optional __odom_z)
   (if __odom_z (setq _odom_z __odom_z)) _odom_z)
  (:odom_hdg
   (&optional __odom_hdg)
   (if __odom_hdg (setq _odom_hdg __odom_hdg)) _odom_hdg)
  (:odom_frame
   (&optional __odom_frame)
   (if __odom_frame (setq _odom_frame __odom_frame)) _odom_frame)
  (:odom_estimators_hori
   (&optional __odom_estimators_hori)
   (if __odom_estimators_hori (setq _odom_estimators_hori __odom_estimators_hori)) _odom_estimators_hori)
  (:odom_estimators_vert
   (&optional __odom_estimators_vert)
   (if __odom_estimators_vert (setq _odom_estimators_vert __odom_estimators_vert)) _odom_estimators_vert)
  (:odom_estimators_hdg
   (&optional __odom_estimators_hdg)
   (if __odom_estimators_hdg (setq _odom_estimators_hdg __odom_estimators_hdg)) _odom_estimators_hdg)
  (:cmd_x
   (&optional __cmd_x)
   (if __cmd_x (setq _cmd_x __cmd_x)) _cmd_x)
  (:cmd_y
   (&optional __cmd_y)
   (if __cmd_y (setq _cmd_y __cmd_y)) _cmd_y)
  (:cmd_z
   (&optional __cmd_z)
   (if __cmd_z (setq _cmd_z __cmd_z)) _cmd_z)
  (:cmd_hdg
   (&optional __cmd_hdg)
   (if __cmd_hdg (setq _cmd_hdg __cmd_hdg)) _cmd_hdg)
  (:cpu_load
   (&optional __cpu_load)
   (if __cpu_load (setq _cpu_load __cpu_load)) _cpu_load)
  (:cpu_load_total
   (&optional __cpu_load_total)
   (if __cpu_load_total (setq _cpu_load_total __cpu_load_total)) _cpu_load_total)
  (:cpu_ghz
   (&optional __cpu_ghz)
   (if __cpu_ghz (setq _cpu_ghz __cpu_ghz)) _cpu_ghz)
  (:cpu_temperature
   (&optional __cpu_temperature)
   (if __cpu_temperature (setq _cpu_temperature __cpu_temperature)) _cpu_temperature)
  (:free_ram
   (&optional __free_ram)
   (if __free_ram (setq _free_ram __free_ram)) _free_ram)
  (:total_ram
   (&optional __total_ram)
   (if __total_ram (setq _total_ram __total_ram)) _total_ram)
  (:free_hdd
   (&optional __free_hdd)
   (if __free_hdd (setq _free_hdd __free_hdd)) _free_hdd)
  (:mavros_hz
   (&optional __mavros_hz)
   (if __mavros_hz (setq _mavros_hz __mavros_hz)) _mavros_hz)
  (:mavros_color
   (&optional __mavros_color)
   (if __mavros_color (setq _mavros_color __mavros_color)) _mavros_color)
  (:mavros_battery_hz
   (&optional __mavros_battery_hz)
   (if __mavros_battery_hz (setq _mavros_battery_hz __mavros_battery_hz)) _mavros_battery_hz)
  (:mavros_state_hz
   (&optional __mavros_state_hz)
   (if __mavros_state_hz (setq _mavros_state_hz __mavros_state_hz)) _mavros_state_hz)
  (:mavros_cmd_hz
   (&optional __mavros_cmd_hz)
   (if __mavros_cmd_hz (setq _mavros_cmd_hz __mavros_cmd_hz)) _mavros_cmd_hz)
  (:mavros_mode
   (&optional __mavros_mode)
   (if __mavros_mode (setq _mavros_mode __mavros_mode)) _mavros_mode)
  (:mavros_armed
   (&optional (__mavros_armed :null))
   (if (not (eq __mavros_armed :null)) (setq _mavros_armed __mavros_armed)) _mavros_armed)
  (:mavros_gps_ok
   (&optional (__mavros_gps_ok :null))
   (if (not (eq __mavros_gps_ok :null)) (setq _mavros_gps_ok __mavros_gps_ok)) _mavros_gps_ok)
  (:mavros_gps_qual
   (&optional __mavros_gps_qual)
   (if __mavros_gps_qual (setq _mavros_gps_qual __mavros_gps_qual)) _mavros_gps_qual)
  (:battery_volt
   (&optional __battery_volt)
   (if __battery_volt (setq _battery_volt __battery_volt)) _battery_volt)
  (:battery_curr
   (&optional __battery_curr)
   (if __battery_curr (setq _battery_curr __battery_curr)) _battery_curr)
  (:battery_wh_drained
   (&optional __battery_wh_drained)
   (if __battery_wh_drained (setq _battery_wh_drained __battery_wh_drained)) _battery_wh_drained)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:mass_estimate
   (&optional __mass_estimate)
   (if __mass_estimate (setq _mass_estimate __mass_estimate)) _mass_estimate)
  (:mass_set
   (&optional __mass_set)
   (if __mass_set (setq _mass_set __mass_set)) _mass_set)
  (:custom_topics
   (&rest __custom_topics)
   (if (keywordp (car __custom_topics))
       (send* _custom_topics __custom_topics)
     (progn
       (if __custom_topics (setq _custom_topics (car __custom_topics)))
       _custom_topics)))
  (:custom_string_outputs
   (&optional __custom_string_outputs)
   (if __custom_string_outputs (setq _custom_string_outputs __custom_string_outputs)) _custom_string_outputs)
  (:custom_services
   (&optional __custom_services)
   (if __custom_services (setq _custom_services __custom_services)) _custom_services)
  (:node_cpu_loads
   (&rest __node_cpu_loads)
   (if (keywordp (car __node_cpu_loads))
       (send* _node_cpu_loads __node_cpu_loads)
     (progn
       (if __node_cpu_loads (setq _node_cpu_loads (car __node_cpu_loads)))
       _node_cpu_loads)))
  (:flying_normally
   (&optional (__flying_normally :null))
   (if (not (eq __flying_normally :null)) (setq _flying_normally __flying_normally)) _flying_normally)
  (:have_goal
   (&optional (__have_goal :null))
   (if (not (eq __have_goal :null)) (setq _have_goal __have_goal)) _have_goal)
  (:callbacks_enabled
   (&optional (__callbacks_enabled :null))
   (if (not (eq __callbacks_enabled :null)) (setq _callbacks_enabled __callbacks_enabled)) _callbacks_enabled)
  (:collision_avoidance_enabled
   (&optional (__collision_avoidance_enabled :null))
   (if (not (eq __collision_avoidance_enabled :null)) (setq _collision_avoidance_enabled __collision_avoidance_enabled)) _collision_avoidance_enabled)
  (:avoiding_collision
   (&optional (__avoiding_collision :null))
   (if (not (eq __avoiding_collision :null)) (setq _avoiding_collision __avoiding_collision)) _avoiding_collision)
  (:automatic_start_can_takeoff
   (&optional (__automatic_start_can_takeoff :null))
   (if (not (eq __automatic_start_can_takeoff :null)) (setq _automatic_start_can_takeoff __automatic_start_can_takeoff)) _automatic_start_can_takeoff)
  (:num_other_uavs
   (&optional __num_other_uavs)
   (if __num_other_uavs (setq _num_other_uavs __num_other_uavs)) _num_other_uavs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _uav_name
    4 (length _uav_name)
    ;; string _nato_name
    4 (length _nato_name)
    ;; string _uav_type
    4 (length _uav_type)
    ;; string _uav_mass
    4 (length _uav_mass)
    ;; float32 _control_manager_diag_hz
    4
    ;; int16 _control_manager_diag_color
    2
    ;; string[] _controllers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _controllers)) 4
    ;; string[] _gains
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _gains)) 4
    ;; string[] _trackers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _trackers)) 4
    ;; string[] _constraints
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _constraints)) 4
    ;; string _fly_state
    4 (length _fly_state)
    ;; bool _null_tracker
    1
    ;; uint32 _secs_flown
    4
    ;; float32 _odom_hz
    4
    ;; int16 _odom_color
    2
    ;; float32 _odom_x
    4
    ;; float32 _odom_y
    4
    ;; float32 _odom_z
    4
    ;; float32 _odom_hdg
    4
    ;; string _odom_frame
    4 (length _odom_frame)
    ;; string[] _odom_estimators_hori
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _odom_estimators_hori)) 4
    ;; string[] _odom_estimators_vert
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _odom_estimators_vert)) 4
    ;; string[] _odom_estimators_hdg
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _odom_estimators_hdg)) 4
    ;; float32 _cmd_x
    4
    ;; float32 _cmd_y
    4
    ;; float32 _cmd_z
    4
    ;; float32 _cmd_hdg
    4
    ;; float32 _cpu_load
    4
    ;; float32 _cpu_load_total
    4
    ;; float32 _cpu_ghz
    4
    ;; float32 _cpu_temperature
    4
    ;; float32 _free_ram
    4
    ;; float32 _total_ram
    4
    ;; int32 _free_hdd
    4
    ;; float32 _mavros_hz
    4
    ;; int16 _mavros_color
    2
    ;; float32 _mavros_battery_hz
    4
    ;; float32 _mavros_state_hz
    4
    ;; float32 _mavros_cmd_hz
    4
    ;; string _mavros_mode
    4 (length _mavros_mode)
    ;; bool _mavros_armed
    1
    ;; bool _mavros_gps_ok
    1
    ;; float32 _mavros_gps_qual
    4
    ;; float32 _battery_volt
    4
    ;; float32 _battery_curr
    4
    ;; float32 _battery_wh_drained
    4
    ;; float32 _thrust
    4
    ;; float32 _mass_estimate
    4
    ;; float32 _mass_set
    4
    ;; mrs_msgs/CustomTopic[] _custom_topics
    (apply #'+ (send-all _custom_topics :serialization-length)) 4
    ;; string[] _custom_string_outputs
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _custom_string_outputs)) 4
    ;; string[] _custom_services
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _custom_services)) 4
    ;; mrs_msgs/NodeCpuLoad _node_cpu_loads
    (send _node_cpu_loads :serialization-length)
    ;; bool _flying_normally
    1
    ;; bool _have_goal
    1
    ;; bool _callbacks_enabled
    1
    ;; bool _collision_avoidance_enabled
    1
    ;; bool _avoiding_collision
    1
    ;; bool _automatic_start_can_takeoff
    1
    ;; uint16 _num_other_uavs
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _uav_name
       (write-long (length _uav_name) s) (princ _uav_name s)
     ;; string _nato_name
       (write-long (length _nato_name) s) (princ _nato_name s)
     ;; string _uav_type
       (write-long (length _uav_type) s) (princ _uav_type s)
     ;; string _uav_mass
       (write-long (length _uav_mass) s) (princ _uav_mass s)
     ;; float32 _control_manager_diag_hz
       (sys::poke _control_manager_diag_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _control_manager_diag_color
       (write-word _control_manager_diag_color s)
     ;; string[] _controllers
     (write-long (length _controllers) s)
     (dolist (elem _controllers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _gains
     (write-long (length _gains) s)
     (dolist (elem _gains)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _trackers
     (write-long (length _trackers) s)
     (dolist (elem _trackers)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _constraints
     (write-long (length _constraints) s)
     (dolist (elem _constraints)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _fly_state
       (write-long (length _fly_state) s) (princ _fly_state s)
     ;; bool _null_tracker
       (if _null_tracker (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _secs_flown
       (write-long _secs_flown s)
     ;; float32 _odom_hz
       (sys::poke _odom_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _odom_color
       (write-word _odom_color s)
     ;; float32 _odom_x
       (sys::poke _odom_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_y
       (sys::poke _odom_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_z
       (sys::poke _odom_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _odom_hdg
       (sys::poke _odom_hdg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _odom_frame
       (write-long (length _odom_frame) s) (princ _odom_frame s)
     ;; string[] _odom_estimators_hori
     (write-long (length _odom_estimators_hori) s)
     (dolist (elem _odom_estimators_hori)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _odom_estimators_vert
     (write-long (length _odom_estimators_vert) s)
     (dolist (elem _odom_estimators_vert)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _odom_estimators_hdg
     (write-long (length _odom_estimators_hdg) s)
     (dolist (elem _odom_estimators_hdg)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32 _cmd_x
       (sys::poke _cmd_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_y
       (sys::poke _cmd_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_z
       (sys::poke _cmd_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cmd_hdg
       (sys::poke _cmd_hdg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_load
       (sys::poke _cpu_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_load_total
       (sys::poke _cpu_load_total (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_ghz
       (sys::poke _cpu_ghz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_temperature
       (sys::poke _cpu_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _free_ram
       (sys::poke _free_ram (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _total_ram
       (sys::poke _total_ram (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _free_hdd
       (write-long _free_hdd s)
     ;; float32 _mavros_hz
       (sys::poke _mavros_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _mavros_color
       (write-word _mavros_color s)
     ;; float32 _mavros_battery_hz
       (sys::poke _mavros_battery_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mavros_state_hz
       (sys::poke _mavros_state_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mavros_cmd_hz
       (sys::poke _mavros_cmd_hz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _mavros_mode
       (write-long (length _mavros_mode) s) (princ _mavros_mode s)
     ;; bool _mavros_armed
       (if _mavros_armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _mavros_gps_ok
       (if _mavros_gps_ok (write-byte -1 s) (write-byte 0 s))
     ;; float32 _mavros_gps_qual
       (sys::poke _mavros_gps_qual (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_volt
       (sys::poke _battery_volt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_curr
       (sys::poke _battery_curr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_wh_drained
       (sys::poke _battery_wh_drained (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mass_estimate
       (sys::poke _mass_estimate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mass_set
       (sys::poke _mass_set (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; mrs_msgs/CustomTopic[] _custom_topics
     (write-long (length _custom_topics) s)
     (dolist (elem _custom_topics)
       (send elem :serialize s)
       )
     ;; string[] _custom_string_outputs
     (write-long (length _custom_string_outputs) s)
     (dolist (elem _custom_string_outputs)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _custom_services
     (write-long (length _custom_services) s)
     (dolist (elem _custom_services)
       (write-long (length elem) s) (princ elem s)
       )
     ;; mrs_msgs/NodeCpuLoad _node_cpu_loads
       (send _node_cpu_loads :serialize s)
     ;; bool _flying_normally
       (if _flying_normally (write-byte -1 s) (write-byte 0 s))
     ;; bool _have_goal
       (if _have_goal (write-byte -1 s) (write-byte 0 s))
     ;; bool _callbacks_enabled
       (if _callbacks_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _collision_avoidance_enabled
       (if _collision_avoidance_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _avoiding_collision
       (if _avoiding_collision (write-byte -1 s) (write-byte 0 s))
     ;; bool _automatic_start_can_takeoff
       (if _automatic_start_can_takeoff (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _num_other_uavs
       (write-word _num_other_uavs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _uav_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _nato_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nato_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uav_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uav_mass
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uav_mass (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _control_manager_diag_hz
     (setq _control_manager_diag_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _control_manager_diag_color
     (setq _control_manager_diag_color (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string[] _controllers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _controllers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _controllers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _gains
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gains (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _gains i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _trackers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trackers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _trackers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _constraints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _constraints (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _constraints i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _fly_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fly_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _null_tracker
     (setq _null_tracker (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _secs_flown
     (setq _secs_flown (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _odom_hz
     (setq _odom_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _odom_color
     (setq _odom_color (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _odom_x
     (setq _odom_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_y
     (setq _odom_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_z
     (setq _odom_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _odom_hdg
     (setq _odom_hdg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _odom_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _odom_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _odom_estimators_hori
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _odom_estimators_hori (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _odom_estimators_hori i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _odom_estimators_vert
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _odom_estimators_vert (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _odom_estimators_vert i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _odom_estimators_hdg
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _odom_estimators_hdg (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _odom_estimators_hdg i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32 _cmd_x
     (setq _cmd_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_y
     (setq _cmd_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_z
     (setq _cmd_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cmd_hdg
     (setq _cmd_hdg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_load
     (setq _cpu_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_load_total
     (setq _cpu_load_total (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_ghz
     (setq _cpu_ghz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_temperature
     (setq _cpu_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _free_ram
     (setq _free_ram (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _total_ram
     (setq _total_ram (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _free_hdd
     (setq _free_hdd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _mavros_hz
     (setq _mavros_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _mavros_color
     (setq _mavros_color (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _mavros_battery_hz
     (setq _mavros_battery_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mavros_state_hz
     (setq _mavros_state_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mavros_cmd_hz
     (setq _mavros_cmd_hz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _mavros_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mavros_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _mavros_armed
     (setq _mavros_armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mavros_gps_ok
     (setq _mavros_gps_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _mavros_gps_qual
     (setq _mavros_gps_qual (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_volt
     (setq _battery_volt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_curr
     (setq _battery_curr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_wh_drained
     (setq _battery_wh_drained (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mass_estimate
     (setq _mass_estimate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mass_set
     (setq _mass_set (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; mrs_msgs/CustomTopic[] _custom_topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _custom_topics (let (r) (dotimes (i n) (push (instance mrs_msgs::CustomTopic :init) r)) r))
     (dolist (elem- _custom_topics)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _custom_string_outputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _custom_string_outputs (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _custom_string_outputs i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _custom_services
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _custom_services (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _custom_services i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; mrs_msgs/NodeCpuLoad _node_cpu_loads
     (send _node_cpu_loads :deserialize buf ptr-) (incf ptr- (send _node_cpu_loads :serialization-length))
   ;; bool _flying_normally
     (setq _flying_normally (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _have_goal
     (setq _have_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _callbacks_enabled
     (setq _callbacks_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _collision_avoidance_enabled
     (setq _collision_avoidance_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _avoiding_collision
     (setq _avoiding_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _automatic_start_can_takeoff
     (setq _automatic_start_can_takeoff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _num_other_uavs
     (setq _num_other_uavs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mrs_msgs::UavStatus :md5sum-) "96b2a311d1a3f116c9cce438b1893925")
(setf (get mrs_msgs::UavStatus :datatype-) "mrs_msgs/UavStatus")
(setf (get mrs_msgs::UavStatus :definition-)
      "Header header

string uav_name
string nato_name
string uav_type
string uav_mass

float32 control_manager_diag_hz
int16 control_manager_diag_color
string[] controllers
string[] gains
string[] trackers
string[] constraints
string fly_state
bool null_tracker
uint32 secs_flown

float32 odom_hz
int16 odom_color
float32 odom_x
float32 odom_y
float32 odom_z
float32 odom_hdg
string odom_frame
string[] odom_estimators_hori
string[] odom_estimators_vert
string[] odom_estimators_hdg

float32 cmd_x
float32 cmd_y
float32 cmd_z
float32 cmd_hdg

float32 cpu_load
float32 cpu_load_total
float32 cpu_ghz
float32 cpu_temperature
float32 free_ram
float32 total_ram
int32 free_hdd

float32 mavros_hz
int16 mavros_color
float32 mavros_battery_hz
float32 mavros_state_hz
float32 mavros_cmd_hz
string mavros_mode
bool mavros_armed
bool mavros_gps_ok
float32 mavros_gps_qual
float32 battery_volt
float32 battery_curr
float32 battery_wh_drained
float32 thrust
float32 mass_estimate
float32 mass_set

CustomTopic[] custom_topics
string[] custom_string_outputs
string[] custom_services

NodeCpuLoad node_cpu_loads

bool flying_normally
bool have_goal
bool callbacks_enabled
bool collision_avoidance_enabled
bool avoiding_collision
bool automatic_start_can_takeoff

uint16 num_other_uavs

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: mrs_msgs/CustomTopic
string topic_name
float32 topic_hz
int16 topic_color

================================================================================
MSG: mrs_msgs/NodeCpuLoad
string[] node_names
float32[] cpu_loads

")



(provide :mrs_msgs/UavStatus "96b2a311d1a3f116c9cce438b1893925")


