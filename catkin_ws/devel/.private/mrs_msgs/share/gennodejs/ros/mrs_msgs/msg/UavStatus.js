// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CustomTopic = require('./CustomTopic.js');
let NodeCpuLoad = require('./NodeCpuLoad.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UavStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.uav_name = null;
      this.nato_name = null;
      this.uav_type = null;
      this.uav_mass = null;
      this.control_manager_diag_hz = null;
      this.control_manager_diag_color = null;
      this.controllers = null;
      this.gains = null;
      this.trackers = null;
      this.constraints = null;
      this.fly_state = null;
      this.null_tracker = null;
      this.secs_flown = null;
      this.odom_hz = null;
      this.odom_color = null;
      this.odom_x = null;
      this.odom_y = null;
      this.odom_z = null;
      this.odom_hdg = null;
      this.odom_frame = null;
      this.odom_estimators_hori = null;
      this.odom_estimators_vert = null;
      this.odom_estimators_hdg = null;
      this.cmd_x = null;
      this.cmd_y = null;
      this.cmd_z = null;
      this.cmd_hdg = null;
      this.cpu_load = null;
      this.cpu_load_total = null;
      this.cpu_ghz = null;
      this.cpu_temperature = null;
      this.free_ram = null;
      this.total_ram = null;
      this.free_hdd = null;
      this.mavros_hz = null;
      this.mavros_color = null;
      this.mavros_battery_hz = null;
      this.mavros_state_hz = null;
      this.mavros_cmd_hz = null;
      this.mavros_mode = null;
      this.mavros_armed = null;
      this.mavros_gps_ok = null;
      this.mavros_gps_qual = null;
      this.battery_volt = null;
      this.battery_curr = null;
      this.battery_wh_drained = null;
      this.thrust = null;
      this.mass_estimate = null;
      this.mass_set = null;
      this.custom_topics = null;
      this.custom_string_outputs = null;
      this.custom_services = null;
      this.node_cpu_loads = null;
      this.flying_normally = null;
      this.have_goal = null;
      this.callbacks_enabled = null;
      this.collision_avoidance_enabled = null;
      this.avoiding_collision = null;
      this.automatic_start_can_takeoff = null;
      this.num_other_uavs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('uav_name')) {
        this.uav_name = initObj.uav_name
      }
      else {
        this.uav_name = '';
      }
      if (initObj.hasOwnProperty('nato_name')) {
        this.nato_name = initObj.nato_name
      }
      else {
        this.nato_name = '';
      }
      if (initObj.hasOwnProperty('uav_type')) {
        this.uav_type = initObj.uav_type
      }
      else {
        this.uav_type = '';
      }
      if (initObj.hasOwnProperty('uav_mass')) {
        this.uav_mass = initObj.uav_mass
      }
      else {
        this.uav_mass = '';
      }
      if (initObj.hasOwnProperty('control_manager_diag_hz')) {
        this.control_manager_diag_hz = initObj.control_manager_diag_hz
      }
      else {
        this.control_manager_diag_hz = 0.0;
      }
      if (initObj.hasOwnProperty('control_manager_diag_color')) {
        this.control_manager_diag_color = initObj.control_manager_diag_color
      }
      else {
        this.control_manager_diag_color = 0;
      }
      if (initObj.hasOwnProperty('controllers')) {
        this.controllers = initObj.controllers
      }
      else {
        this.controllers = [];
      }
      if (initObj.hasOwnProperty('gains')) {
        this.gains = initObj.gains
      }
      else {
        this.gains = [];
      }
      if (initObj.hasOwnProperty('trackers')) {
        this.trackers = initObj.trackers
      }
      else {
        this.trackers = [];
      }
      if (initObj.hasOwnProperty('constraints')) {
        this.constraints = initObj.constraints
      }
      else {
        this.constraints = [];
      }
      if (initObj.hasOwnProperty('fly_state')) {
        this.fly_state = initObj.fly_state
      }
      else {
        this.fly_state = '';
      }
      if (initObj.hasOwnProperty('null_tracker')) {
        this.null_tracker = initObj.null_tracker
      }
      else {
        this.null_tracker = false;
      }
      if (initObj.hasOwnProperty('secs_flown')) {
        this.secs_flown = initObj.secs_flown
      }
      else {
        this.secs_flown = 0;
      }
      if (initObj.hasOwnProperty('odom_hz')) {
        this.odom_hz = initObj.odom_hz
      }
      else {
        this.odom_hz = 0.0;
      }
      if (initObj.hasOwnProperty('odom_color')) {
        this.odom_color = initObj.odom_color
      }
      else {
        this.odom_color = 0;
      }
      if (initObj.hasOwnProperty('odom_x')) {
        this.odom_x = initObj.odom_x
      }
      else {
        this.odom_x = 0.0;
      }
      if (initObj.hasOwnProperty('odom_y')) {
        this.odom_y = initObj.odom_y
      }
      else {
        this.odom_y = 0.0;
      }
      if (initObj.hasOwnProperty('odom_z')) {
        this.odom_z = initObj.odom_z
      }
      else {
        this.odom_z = 0.0;
      }
      if (initObj.hasOwnProperty('odom_hdg')) {
        this.odom_hdg = initObj.odom_hdg
      }
      else {
        this.odom_hdg = 0.0;
      }
      if (initObj.hasOwnProperty('odom_frame')) {
        this.odom_frame = initObj.odom_frame
      }
      else {
        this.odom_frame = '';
      }
      if (initObj.hasOwnProperty('odom_estimators_hori')) {
        this.odom_estimators_hori = initObj.odom_estimators_hori
      }
      else {
        this.odom_estimators_hori = [];
      }
      if (initObj.hasOwnProperty('odom_estimators_vert')) {
        this.odom_estimators_vert = initObj.odom_estimators_vert
      }
      else {
        this.odom_estimators_vert = [];
      }
      if (initObj.hasOwnProperty('odom_estimators_hdg')) {
        this.odom_estimators_hdg = initObj.odom_estimators_hdg
      }
      else {
        this.odom_estimators_hdg = [];
      }
      if (initObj.hasOwnProperty('cmd_x')) {
        this.cmd_x = initObj.cmd_x
      }
      else {
        this.cmd_x = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_y')) {
        this.cmd_y = initObj.cmd_y
      }
      else {
        this.cmd_y = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_z')) {
        this.cmd_z = initObj.cmd_z
      }
      else {
        this.cmd_z = 0.0;
      }
      if (initObj.hasOwnProperty('cmd_hdg')) {
        this.cmd_hdg = initObj.cmd_hdg
      }
      else {
        this.cmd_hdg = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_load')) {
        this.cpu_load = initObj.cpu_load
      }
      else {
        this.cpu_load = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_load_total')) {
        this.cpu_load_total = initObj.cpu_load_total
      }
      else {
        this.cpu_load_total = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_ghz')) {
        this.cpu_ghz = initObj.cpu_ghz
      }
      else {
        this.cpu_ghz = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_temperature')) {
        this.cpu_temperature = initObj.cpu_temperature
      }
      else {
        this.cpu_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('free_ram')) {
        this.free_ram = initObj.free_ram
      }
      else {
        this.free_ram = 0.0;
      }
      if (initObj.hasOwnProperty('total_ram')) {
        this.total_ram = initObj.total_ram
      }
      else {
        this.total_ram = 0.0;
      }
      if (initObj.hasOwnProperty('free_hdd')) {
        this.free_hdd = initObj.free_hdd
      }
      else {
        this.free_hdd = 0;
      }
      if (initObj.hasOwnProperty('mavros_hz')) {
        this.mavros_hz = initObj.mavros_hz
      }
      else {
        this.mavros_hz = 0.0;
      }
      if (initObj.hasOwnProperty('mavros_color')) {
        this.mavros_color = initObj.mavros_color
      }
      else {
        this.mavros_color = 0;
      }
      if (initObj.hasOwnProperty('mavros_battery_hz')) {
        this.mavros_battery_hz = initObj.mavros_battery_hz
      }
      else {
        this.mavros_battery_hz = 0.0;
      }
      if (initObj.hasOwnProperty('mavros_state_hz')) {
        this.mavros_state_hz = initObj.mavros_state_hz
      }
      else {
        this.mavros_state_hz = 0.0;
      }
      if (initObj.hasOwnProperty('mavros_cmd_hz')) {
        this.mavros_cmd_hz = initObj.mavros_cmd_hz
      }
      else {
        this.mavros_cmd_hz = 0.0;
      }
      if (initObj.hasOwnProperty('mavros_mode')) {
        this.mavros_mode = initObj.mavros_mode
      }
      else {
        this.mavros_mode = '';
      }
      if (initObj.hasOwnProperty('mavros_armed')) {
        this.mavros_armed = initObj.mavros_armed
      }
      else {
        this.mavros_armed = false;
      }
      if (initObj.hasOwnProperty('mavros_gps_ok')) {
        this.mavros_gps_ok = initObj.mavros_gps_ok
      }
      else {
        this.mavros_gps_ok = false;
      }
      if (initObj.hasOwnProperty('mavros_gps_qual')) {
        this.mavros_gps_qual = initObj.mavros_gps_qual
      }
      else {
        this.mavros_gps_qual = 0.0;
      }
      if (initObj.hasOwnProperty('battery_volt')) {
        this.battery_volt = initObj.battery_volt
      }
      else {
        this.battery_volt = 0.0;
      }
      if (initObj.hasOwnProperty('battery_curr')) {
        this.battery_curr = initObj.battery_curr
      }
      else {
        this.battery_curr = 0.0;
      }
      if (initObj.hasOwnProperty('battery_wh_drained')) {
        this.battery_wh_drained = initObj.battery_wh_drained
      }
      else {
        this.battery_wh_drained = 0.0;
      }
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = 0.0;
      }
      if (initObj.hasOwnProperty('mass_estimate')) {
        this.mass_estimate = initObj.mass_estimate
      }
      else {
        this.mass_estimate = 0.0;
      }
      if (initObj.hasOwnProperty('mass_set')) {
        this.mass_set = initObj.mass_set
      }
      else {
        this.mass_set = 0.0;
      }
      if (initObj.hasOwnProperty('custom_topics')) {
        this.custom_topics = initObj.custom_topics
      }
      else {
        this.custom_topics = [];
      }
      if (initObj.hasOwnProperty('custom_string_outputs')) {
        this.custom_string_outputs = initObj.custom_string_outputs
      }
      else {
        this.custom_string_outputs = [];
      }
      if (initObj.hasOwnProperty('custom_services')) {
        this.custom_services = initObj.custom_services
      }
      else {
        this.custom_services = [];
      }
      if (initObj.hasOwnProperty('node_cpu_loads')) {
        this.node_cpu_loads = initObj.node_cpu_loads
      }
      else {
        this.node_cpu_loads = new NodeCpuLoad();
      }
      if (initObj.hasOwnProperty('flying_normally')) {
        this.flying_normally = initObj.flying_normally
      }
      else {
        this.flying_normally = false;
      }
      if (initObj.hasOwnProperty('have_goal')) {
        this.have_goal = initObj.have_goal
      }
      else {
        this.have_goal = false;
      }
      if (initObj.hasOwnProperty('callbacks_enabled')) {
        this.callbacks_enabled = initObj.callbacks_enabled
      }
      else {
        this.callbacks_enabled = false;
      }
      if (initObj.hasOwnProperty('collision_avoidance_enabled')) {
        this.collision_avoidance_enabled = initObj.collision_avoidance_enabled
      }
      else {
        this.collision_avoidance_enabled = false;
      }
      if (initObj.hasOwnProperty('avoiding_collision')) {
        this.avoiding_collision = initObj.avoiding_collision
      }
      else {
        this.avoiding_collision = false;
      }
      if (initObj.hasOwnProperty('automatic_start_can_takeoff')) {
        this.automatic_start_can_takeoff = initObj.automatic_start_can_takeoff
      }
      else {
        this.automatic_start_can_takeoff = false;
      }
      if (initObj.hasOwnProperty('num_other_uavs')) {
        this.num_other_uavs = initObj.num_other_uavs
      }
      else {
        this.num_other_uavs = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UavStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [uav_name]
    bufferOffset = _serializer.string(obj.uav_name, buffer, bufferOffset);
    // Serialize message field [nato_name]
    bufferOffset = _serializer.string(obj.nato_name, buffer, bufferOffset);
    // Serialize message field [uav_type]
    bufferOffset = _serializer.string(obj.uav_type, buffer, bufferOffset);
    // Serialize message field [uav_mass]
    bufferOffset = _serializer.string(obj.uav_mass, buffer, bufferOffset);
    // Serialize message field [control_manager_diag_hz]
    bufferOffset = _serializer.float32(obj.control_manager_diag_hz, buffer, bufferOffset);
    // Serialize message field [control_manager_diag_color]
    bufferOffset = _serializer.int16(obj.control_manager_diag_color, buffer, bufferOffset);
    // Serialize message field [controllers]
    bufferOffset = _arraySerializer.string(obj.controllers, buffer, bufferOffset, null);
    // Serialize message field [gains]
    bufferOffset = _arraySerializer.string(obj.gains, buffer, bufferOffset, null);
    // Serialize message field [trackers]
    bufferOffset = _arraySerializer.string(obj.trackers, buffer, bufferOffset, null);
    // Serialize message field [constraints]
    bufferOffset = _arraySerializer.string(obj.constraints, buffer, bufferOffset, null);
    // Serialize message field [fly_state]
    bufferOffset = _serializer.string(obj.fly_state, buffer, bufferOffset);
    // Serialize message field [null_tracker]
    bufferOffset = _serializer.bool(obj.null_tracker, buffer, bufferOffset);
    // Serialize message field [secs_flown]
    bufferOffset = _serializer.uint32(obj.secs_flown, buffer, bufferOffset);
    // Serialize message field [odom_hz]
    bufferOffset = _serializer.float32(obj.odom_hz, buffer, bufferOffset);
    // Serialize message field [odom_color]
    bufferOffset = _serializer.int16(obj.odom_color, buffer, bufferOffset);
    // Serialize message field [odom_x]
    bufferOffset = _serializer.float32(obj.odom_x, buffer, bufferOffset);
    // Serialize message field [odom_y]
    bufferOffset = _serializer.float32(obj.odom_y, buffer, bufferOffset);
    // Serialize message field [odom_z]
    bufferOffset = _serializer.float32(obj.odom_z, buffer, bufferOffset);
    // Serialize message field [odom_hdg]
    bufferOffset = _serializer.float32(obj.odom_hdg, buffer, bufferOffset);
    // Serialize message field [odom_frame]
    bufferOffset = _serializer.string(obj.odom_frame, buffer, bufferOffset);
    // Serialize message field [odom_estimators_hori]
    bufferOffset = _arraySerializer.string(obj.odom_estimators_hori, buffer, bufferOffset, null);
    // Serialize message field [odom_estimators_vert]
    bufferOffset = _arraySerializer.string(obj.odom_estimators_vert, buffer, bufferOffset, null);
    // Serialize message field [odom_estimators_hdg]
    bufferOffset = _arraySerializer.string(obj.odom_estimators_hdg, buffer, bufferOffset, null);
    // Serialize message field [cmd_x]
    bufferOffset = _serializer.float32(obj.cmd_x, buffer, bufferOffset);
    // Serialize message field [cmd_y]
    bufferOffset = _serializer.float32(obj.cmd_y, buffer, bufferOffset);
    // Serialize message field [cmd_z]
    bufferOffset = _serializer.float32(obj.cmd_z, buffer, bufferOffset);
    // Serialize message field [cmd_hdg]
    bufferOffset = _serializer.float32(obj.cmd_hdg, buffer, bufferOffset);
    // Serialize message field [cpu_load]
    bufferOffset = _serializer.float32(obj.cpu_load, buffer, bufferOffset);
    // Serialize message field [cpu_load_total]
    bufferOffset = _serializer.float32(obj.cpu_load_total, buffer, bufferOffset);
    // Serialize message field [cpu_ghz]
    bufferOffset = _serializer.float32(obj.cpu_ghz, buffer, bufferOffset);
    // Serialize message field [cpu_temperature]
    bufferOffset = _serializer.float32(obj.cpu_temperature, buffer, bufferOffset);
    // Serialize message field [free_ram]
    bufferOffset = _serializer.float32(obj.free_ram, buffer, bufferOffset);
    // Serialize message field [total_ram]
    bufferOffset = _serializer.float32(obj.total_ram, buffer, bufferOffset);
    // Serialize message field [free_hdd]
    bufferOffset = _serializer.int32(obj.free_hdd, buffer, bufferOffset);
    // Serialize message field [mavros_hz]
    bufferOffset = _serializer.float32(obj.mavros_hz, buffer, bufferOffset);
    // Serialize message field [mavros_color]
    bufferOffset = _serializer.int16(obj.mavros_color, buffer, bufferOffset);
    // Serialize message field [mavros_battery_hz]
    bufferOffset = _serializer.float32(obj.mavros_battery_hz, buffer, bufferOffset);
    // Serialize message field [mavros_state_hz]
    bufferOffset = _serializer.float32(obj.mavros_state_hz, buffer, bufferOffset);
    // Serialize message field [mavros_cmd_hz]
    bufferOffset = _serializer.float32(obj.mavros_cmd_hz, buffer, bufferOffset);
    // Serialize message field [mavros_mode]
    bufferOffset = _serializer.string(obj.mavros_mode, buffer, bufferOffset);
    // Serialize message field [mavros_armed]
    bufferOffset = _serializer.bool(obj.mavros_armed, buffer, bufferOffset);
    // Serialize message field [mavros_gps_ok]
    bufferOffset = _serializer.bool(obj.mavros_gps_ok, buffer, bufferOffset);
    // Serialize message field [mavros_gps_qual]
    bufferOffset = _serializer.float32(obj.mavros_gps_qual, buffer, bufferOffset);
    // Serialize message field [battery_volt]
    bufferOffset = _serializer.float32(obj.battery_volt, buffer, bufferOffset);
    // Serialize message field [battery_curr]
    bufferOffset = _serializer.float32(obj.battery_curr, buffer, bufferOffset);
    // Serialize message field [battery_wh_drained]
    bufferOffset = _serializer.float32(obj.battery_wh_drained, buffer, bufferOffset);
    // Serialize message field [thrust]
    bufferOffset = _serializer.float32(obj.thrust, buffer, bufferOffset);
    // Serialize message field [mass_estimate]
    bufferOffset = _serializer.float32(obj.mass_estimate, buffer, bufferOffset);
    // Serialize message field [mass_set]
    bufferOffset = _serializer.float32(obj.mass_set, buffer, bufferOffset);
    // Serialize message field [custom_topics]
    // Serialize the length for message field [custom_topics]
    bufferOffset = _serializer.uint32(obj.custom_topics.length, buffer, bufferOffset);
    obj.custom_topics.forEach((val) => {
      bufferOffset = CustomTopic.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [custom_string_outputs]
    bufferOffset = _arraySerializer.string(obj.custom_string_outputs, buffer, bufferOffset, null);
    // Serialize message field [custom_services]
    bufferOffset = _arraySerializer.string(obj.custom_services, buffer, bufferOffset, null);
    // Serialize message field [node_cpu_loads]
    bufferOffset = NodeCpuLoad.serialize(obj.node_cpu_loads, buffer, bufferOffset);
    // Serialize message field [flying_normally]
    bufferOffset = _serializer.bool(obj.flying_normally, buffer, bufferOffset);
    // Serialize message field [have_goal]
    bufferOffset = _serializer.bool(obj.have_goal, buffer, bufferOffset);
    // Serialize message field [callbacks_enabled]
    bufferOffset = _serializer.bool(obj.callbacks_enabled, buffer, bufferOffset);
    // Serialize message field [collision_avoidance_enabled]
    bufferOffset = _serializer.bool(obj.collision_avoidance_enabled, buffer, bufferOffset);
    // Serialize message field [avoiding_collision]
    bufferOffset = _serializer.bool(obj.avoiding_collision, buffer, bufferOffset);
    // Serialize message field [automatic_start_can_takeoff]
    bufferOffset = _serializer.bool(obj.automatic_start_can_takeoff, buffer, bufferOffset);
    // Serialize message field [num_other_uavs]
    bufferOffset = _serializer.uint16(obj.num_other_uavs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UavStatus
    let len;
    let data = new UavStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [uav_name]
    data.uav_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nato_name]
    data.nato_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uav_type]
    data.uav_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uav_mass]
    data.uav_mass = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_manager_diag_hz]
    data.control_manager_diag_hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [control_manager_diag_color]
    data.control_manager_diag_color = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [controllers]
    data.controllers = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [gains]
    data.gains = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [trackers]
    data.trackers = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [constraints]
    data.constraints = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [fly_state]
    data.fly_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [null_tracker]
    data.null_tracker = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [secs_flown]
    data.secs_flown = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [odom_hz]
    data.odom_hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom_color]
    data.odom_color = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [odom_x]
    data.odom_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom_y]
    data.odom_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom_z]
    data.odom_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom_hdg]
    data.odom_hdg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odom_frame]
    data.odom_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [odom_estimators_hori]
    data.odom_estimators_hori = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [odom_estimators_vert]
    data.odom_estimators_vert = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [odom_estimators_hdg]
    data.odom_estimators_hdg = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [cmd_x]
    data.cmd_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_y]
    data.cmd_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_z]
    data.cmd_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_hdg]
    data.cmd_hdg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_load]
    data.cpu_load = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_load_total]
    data.cpu_load_total = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_ghz]
    data.cpu_ghz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_temperature]
    data.cpu_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [free_ram]
    data.free_ram = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [total_ram]
    data.total_ram = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [free_hdd]
    data.free_hdd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mavros_hz]
    data.mavros_hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mavros_color]
    data.mavros_color = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mavros_battery_hz]
    data.mavros_battery_hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mavros_state_hz]
    data.mavros_state_hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mavros_cmd_hz]
    data.mavros_cmd_hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mavros_mode]
    data.mavros_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mavros_armed]
    data.mavros_armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mavros_gps_ok]
    data.mavros_gps_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mavros_gps_qual]
    data.mavros_gps_qual = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_volt]
    data.battery_volt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_curr]
    data.battery_curr = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_wh_drained]
    data.battery_wh_drained = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [thrust]
    data.thrust = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mass_estimate]
    data.mass_estimate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mass_set]
    data.mass_set = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [custom_topics]
    // Deserialize array length for message field [custom_topics]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.custom_topics = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.custom_topics[i] = CustomTopic.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [custom_string_outputs]
    data.custom_string_outputs = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [custom_services]
    data.custom_services = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [node_cpu_loads]
    data.node_cpu_loads = NodeCpuLoad.deserialize(buffer, bufferOffset);
    // Deserialize message field [flying_normally]
    data.flying_normally = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [have_goal]
    data.have_goal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [callbacks_enabled]
    data.callbacks_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collision_avoidance_enabled]
    data.collision_avoidance_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [avoiding_collision]
    data.avoiding_collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [automatic_start_can_takeoff]
    data.automatic_start_can_takeoff = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [num_other_uavs]
    data.num_other_uavs = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.uav_name);
    length += _getByteLength(object.nato_name);
    length += _getByteLength(object.uav_type);
    length += _getByteLength(object.uav_mass);
    object.controllers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.gains.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.trackers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.constraints.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.fly_state);
    length += _getByteLength(object.odom_frame);
    object.odom_estimators_hori.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.odom_estimators_vert.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.odom_estimators_hdg.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.mavros_mode);
    object.custom_topics.forEach((val) => {
      length += CustomTopic.getMessageSize(val);
    });
    object.custom_string_outputs.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.custom_services.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += NodeCpuLoad.getMessageSize(object.node_cpu_loads);
    return length + 201;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/UavStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96b2a311d1a3f116c9cce438b1893925';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UavStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.uav_name !== undefined) {
      resolved.uav_name = msg.uav_name;
    }
    else {
      resolved.uav_name = ''
    }

    if (msg.nato_name !== undefined) {
      resolved.nato_name = msg.nato_name;
    }
    else {
      resolved.nato_name = ''
    }

    if (msg.uav_type !== undefined) {
      resolved.uav_type = msg.uav_type;
    }
    else {
      resolved.uav_type = ''
    }

    if (msg.uav_mass !== undefined) {
      resolved.uav_mass = msg.uav_mass;
    }
    else {
      resolved.uav_mass = ''
    }

    if (msg.control_manager_diag_hz !== undefined) {
      resolved.control_manager_diag_hz = msg.control_manager_diag_hz;
    }
    else {
      resolved.control_manager_diag_hz = 0.0
    }

    if (msg.control_manager_diag_color !== undefined) {
      resolved.control_manager_diag_color = msg.control_manager_diag_color;
    }
    else {
      resolved.control_manager_diag_color = 0
    }

    if (msg.controllers !== undefined) {
      resolved.controllers = msg.controllers;
    }
    else {
      resolved.controllers = []
    }

    if (msg.gains !== undefined) {
      resolved.gains = msg.gains;
    }
    else {
      resolved.gains = []
    }

    if (msg.trackers !== undefined) {
      resolved.trackers = msg.trackers;
    }
    else {
      resolved.trackers = []
    }

    if (msg.constraints !== undefined) {
      resolved.constraints = msg.constraints;
    }
    else {
      resolved.constraints = []
    }

    if (msg.fly_state !== undefined) {
      resolved.fly_state = msg.fly_state;
    }
    else {
      resolved.fly_state = ''
    }

    if (msg.null_tracker !== undefined) {
      resolved.null_tracker = msg.null_tracker;
    }
    else {
      resolved.null_tracker = false
    }

    if (msg.secs_flown !== undefined) {
      resolved.secs_flown = msg.secs_flown;
    }
    else {
      resolved.secs_flown = 0
    }

    if (msg.odom_hz !== undefined) {
      resolved.odom_hz = msg.odom_hz;
    }
    else {
      resolved.odom_hz = 0.0
    }

    if (msg.odom_color !== undefined) {
      resolved.odom_color = msg.odom_color;
    }
    else {
      resolved.odom_color = 0
    }

    if (msg.odom_x !== undefined) {
      resolved.odom_x = msg.odom_x;
    }
    else {
      resolved.odom_x = 0.0
    }

    if (msg.odom_y !== undefined) {
      resolved.odom_y = msg.odom_y;
    }
    else {
      resolved.odom_y = 0.0
    }

    if (msg.odom_z !== undefined) {
      resolved.odom_z = msg.odom_z;
    }
    else {
      resolved.odom_z = 0.0
    }

    if (msg.odom_hdg !== undefined) {
      resolved.odom_hdg = msg.odom_hdg;
    }
    else {
      resolved.odom_hdg = 0.0
    }

    if (msg.odom_frame !== undefined) {
      resolved.odom_frame = msg.odom_frame;
    }
    else {
      resolved.odom_frame = ''
    }

    if (msg.odom_estimators_hori !== undefined) {
      resolved.odom_estimators_hori = msg.odom_estimators_hori;
    }
    else {
      resolved.odom_estimators_hori = []
    }

    if (msg.odom_estimators_vert !== undefined) {
      resolved.odom_estimators_vert = msg.odom_estimators_vert;
    }
    else {
      resolved.odom_estimators_vert = []
    }

    if (msg.odom_estimators_hdg !== undefined) {
      resolved.odom_estimators_hdg = msg.odom_estimators_hdg;
    }
    else {
      resolved.odom_estimators_hdg = []
    }

    if (msg.cmd_x !== undefined) {
      resolved.cmd_x = msg.cmd_x;
    }
    else {
      resolved.cmd_x = 0.0
    }

    if (msg.cmd_y !== undefined) {
      resolved.cmd_y = msg.cmd_y;
    }
    else {
      resolved.cmd_y = 0.0
    }

    if (msg.cmd_z !== undefined) {
      resolved.cmd_z = msg.cmd_z;
    }
    else {
      resolved.cmd_z = 0.0
    }

    if (msg.cmd_hdg !== undefined) {
      resolved.cmd_hdg = msg.cmd_hdg;
    }
    else {
      resolved.cmd_hdg = 0.0
    }

    if (msg.cpu_load !== undefined) {
      resolved.cpu_load = msg.cpu_load;
    }
    else {
      resolved.cpu_load = 0.0
    }

    if (msg.cpu_load_total !== undefined) {
      resolved.cpu_load_total = msg.cpu_load_total;
    }
    else {
      resolved.cpu_load_total = 0.0
    }

    if (msg.cpu_ghz !== undefined) {
      resolved.cpu_ghz = msg.cpu_ghz;
    }
    else {
      resolved.cpu_ghz = 0.0
    }

    if (msg.cpu_temperature !== undefined) {
      resolved.cpu_temperature = msg.cpu_temperature;
    }
    else {
      resolved.cpu_temperature = 0.0
    }

    if (msg.free_ram !== undefined) {
      resolved.free_ram = msg.free_ram;
    }
    else {
      resolved.free_ram = 0.0
    }

    if (msg.total_ram !== undefined) {
      resolved.total_ram = msg.total_ram;
    }
    else {
      resolved.total_ram = 0.0
    }

    if (msg.free_hdd !== undefined) {
      resolved.free_hdd = msg.free_hdd;
    }
    else {
      resolved.free_hdd = 0
    }

    if (msg.mavros_hz !== undefined) {
      resolved.mavros_hz = msg.mavros_hz;
    }
    else {
      resolved.mavros_hz = 0.0
    }

    if (msg.mavros_color !== undefined) {
      resolved.mavros_color = msg.mavros_color;
    }
    else {
      resolved.mavros_color = 0
    }

    if (msg.mavros_battery_hz !== undefined) {
      resolved.mavros_battery_hz = msg.mavros_battery_hz;
    }
    else {
      resolved.mavros_battery_hz = 0.0
    }

    if (msg.mavros_state_hz !== undefined) {
      resolved.mavros_state_hz = msg.mavros_state_hz;
    }
    else {
      resolved.mavros_state_hz = 0.0
    }

    if (msg.mavros_cmd_hz !== undefined) {
      resolved.mavros_cmd_hz = msg.mavros_cmd_hz;
    }
    else {
      resolved.mavros_cmd_hz = 0.0
    }

    if (msg.mavros_mode !== undefined) {
      resolved.mavros_mode = msg.mavros_mode;
    }
    else {
      resolved.mavros_mode = ''
    }

    if (msg.mavros_armed !== undefined) {
      resolved.mavros_armed = msg.mavros_armed;
    }
    else {
      resolved.mavros_armed = false
    }

    if (msg.mavros_gps_ok !== undefined) {
      resolved.mavros_gps_ok = msg.mavros_gps_ok;
    }
    else {
      resolved.mavros_gps_ok = false
    }

    if (msg.mavros_gps_qual !== undefined) {
      resolved.mavros_gps_qual = msg.mavros_gps_qual;
    }
    else {
      resolved.mavros_gps_qual = 0.0
    }

    if (msg.battery_volt !== undefined) {
      resolved.battery_volt = msg.battery_volt;
    }
    else {
      resolved.battery_volt = 0.0
    }

    if (msg.battery_curr !== undefined) {
      resolved.battery_curr = msg.battery_curr;
    }
    else {
      resolved.battery_curr = 0.0
    }

    if (msg.battery_wh_drained !== undefined) {
      resolved.battery_wh_drained = msg.battery_wh_drained;
    }
    else {
      resolved.battery_wh_drained = 0.0
    }

    if (msg.thrust !== undefined) {
      resolved.thrust = msg.thrust;
    }
    else {
      resolved.thrust = 0.0
    }

    if (msg.mass_estimate !== undefined) {
      resolved.mass_estimate = msg.mass_estimate;
    }
    else {
      resolved.mass_estimate = 0.0
    }

    if (msg.mass_set !== undefined) {
      resolved.mass_set = msg.mass_set;
    }
    else {
      resolved.mass_set = 0.0
    }

    if (msg.custom_topics !== undefined) {
      resolved.custom_topics = new Array(msg.custom_topics.length);
      for (let i = 0; i < resolved.custom_topics.length; ++i) {
        resolved.custom_topics[i] = CustomTopic.Resolve(msg.custom_topics[i]);
      }
    }
    else {
      resolved.custom_topics = []
    }

    if (msg.custom_string_outputs !== undefined) {
      resolved.custom_string_outputs = msg.custom_string_outputs;
    }
    else {
      resolved.custom_string_outputs = []
    }

    if (msg.custom_services !== undefined) {
      resolved.custom_services = msg.custom_services;
    }
    else {
      resolved.custom_services = []
    }

    if (msg.node_cpu_loads !== undefined) {
      resolved.node_cpu_loads = NodeCpuLoad.Resolve(msg.node_cpu_loads)
    }
    else {
      resolved.node_cpu_loads = new NodeCpuLoad()
    }

    if (msg.flying_normally !== undefined) {
      resolved.flying_normally = msg.flying_normally;
    }
    else {
      resolved.flying_normally = false
    }

    if (msg.have_goal !== undefined) {
      resolved.have_goal = msg.have_goal;
    }
    else {
      resolved.have_goal = false
    }

    if (msg.callbacks_enabled !== undefined) {
      resolved.callbacks_enabled = msg.callbacks_enabled;
    }
    else {
      resolved.callbacks_enabled = false
    }

    if (msg.collision_avoidance_enabled !== undefined) {
      resolved.collision_avoidance_enabled = msg.collision_avoidance_enabled;
    }
    else {
      resolved.collision_avoidance_enabled = false
    }

    if (msg.avoiding_collision !== undefined) {
      resolved.avoiding_collision = msg.avoiding_collision;
    }
    else {
      resolved.avoiding_collision = false
    }

    if (msg.automatic_start_can_takeoff !== undefined) {
      resolved.automatic_start_can_takeoff = msg.automatic_start_can_takeoff;
    }
    else {
      resolved.automatic_start_can_takeoff = false
    }

    if (msg.num_other_uavs !== undefined) {
      resolved.num_other_uavs = msg.num_other_uavs;
    }
    else {
      resolved.num_other_uavs = 0
    }

    return resolved;
    }
};

module.exports = UavStatus;
