// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackerStatus = require('./TrackerStatus.js');
let ControllerStatus = require('./ControllerStatus.js');

//-----------------------------------------------------------

class ControlManagerDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.uav_name = null;
      this.motors = null;
      this.flying_normally = null;
      this.rc_mode = null;
      this.active_tracker = null;
      this.tracker_status = null;
      this.active_controller = null;
      this.controller_status = null;
      this.available_controllers = null;
      this.available_trackers = null;
      this.human_switchable_controllers = null;
      this.human_switchable_trackers = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('uav_name')) {
        this.uav_name = initObj.uav_name
      }
      else {
        this.uav_name = '';
      }
      if (initObj.hasOwnProperty('motors')) {
        this.motors = initObj.motors
      }
      else {
        this.motors = false;
      }
      if (initObj.hasOwnProperty('flying_normally')) {
        this.flying_normally = initObj.flying_normally
      }
      else {
        this.flying_normally = false;
      }
      if (initObj.hasOwnProperty('rc_mode')) {
        this.rc_mode = initObj.rc_mode
      }
      else {
        this.rc_mode = false;
      }
      if (initObj.hasOwnProperty('active_tracker')) {
        this.active_tracker = initObj.active_tracker
      }
      else {
        this.active_tracker = '';
      }
      if (initObj.hasOwnProperty('tracker_status')) {
        this.tracker_status = initObj.tracker_status
      }
      else {
        this.tracker_status = new TrackerStatus();
      }
      if (initObj.hasOwnProperty('active_controller')) {
        this.active_controller = initObj.active_controller
      }
      else {
        this.active_controller = '';
      }
      if (initObj.hasOwnProperty('controller_status')) {
        this.controller_status = initObj.controller_status
      }
      else {
        this.controller_status = new ControllerStatus();
      }
      if (initObj.hasOwnProperty('available_controllers')) {
        this.available_controllers = initObj.available_controllers
      }
      else {
        this.available_controllers = [];
      }
      if (initObj.hasOwnProperty('available_trackers')) {
        this.available_trackers = initObj.available_trackers
      }
      else {
        this.available_trackers = [];
      }
      if (initObj.hasOwnProperty('human_switchable_controllers')) {
        this.human_switchable_controllers = initObj.human_switchable_controllers
      }
      else {
        this.human_switchable_controllers = [];
      }
      if (initObj.hasOwnProperty('human_switchable_trackers')) {
        this.human_switchable_trackers = initObj.human_switchable_trackers
      }
      else {
        this.human_switchable_trackers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlManagerDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [uav_name]
    bufferOffset = _serializer.string(obj.uav_name, buffer, bufferOffset);
    // Serialize message field [motors]
    bufferOffset = _serializer.bool(obj.motors, buffer, bufferOffset);
    // Serialize message field [flying_normally]
    bufferOffset = _serializer.bool(obj.flying_normally, buffer, bufferOffset);
    // Serialize message field [rc_mode]
    bufferOffset = _serializer.bool(obj.rc_mode, buffer, bufferOffset);
    // Serialize message field [active_tracker]
    bufferOffset = _serializer.string(obj.active_tracker, buffer, bufferOffset);
    // Serialize message field [tracker_status]
    bufferOffset = TrackerStatus.serialize(obj.tracker_status, buffer, bufferOffset);
    // Serialize message field [active_controller]
    bufferOffset = _serializer.string(obj.active_controller, buffer, bufferOffset);
    // Serialize message field [controller_status]
    bufferOffset = ControllerStatus.serialize(obj.controller_status, buffer, bufferOffset);
    // Serialize message field [available_controllers]
    bufferOffset = _arraySerializer.string(obj.available_controllers, buffer, bufferOffset, null);
    // Serialize message field [available_trackers]
    bufferOffset = _arraySerializer.string(obj.available_trackers, buffer, bufferOffset, null);
    // Serialize message field [human_switchable_controllers]
    bufferOffset = _arraySerializer.bool(obj.human_switchable_controllers, buffer, bufferOffset, null);
    // Serialize message field [human_switchable_trackers]
    bufferOffset = _arraySerializer.bool(obj.human_switchable_trackers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlManagerDiagnostics
    let len;
    let data = new ControlManagerDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [uav_name]
    data.uav_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motors]
    data.motors = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [flying_normally]
    data.flying_normally = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rc_mode]
    data.rc_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [active_tracker]
    data.active_tracker = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tracker_status]
    data.tracker_status = TrackerStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [active_controller]
    data.active_controller = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [controller_status]
    data.controller_status = ControllerStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [available_controllers]
    data.available_controllers = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [available_trackers]
    data.available_trackers = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [human_switchable_controllers]
    data.human_switchable_controllers = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [human_switchable_trackers]
    data.human_switchable_trackers = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uav_name);
    length += _getByteLength(object.active_tracker);
    length += TrackerStatus.getMessageSize(object.tracker_status);
    length += _getByteLength(object.active_controller);
    object.available_controllers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.available_trackers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.human_switchable_controllers.length;
    length += object.human_switchable_trackers.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ControlManagerDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '739e0d9e7c44e1a1b9b450d58889c80b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This reports on the state of the ControlManager and the currently active tracker and controller.
    
    time stamp
    string uav_name
    
    # If the motors are enabled, in other words, if the output of the ControlManager can pass out.
    bool motors
    
    # True if the UAV is flying and no special case occurred (emergency land, failsafe, etc.).
    bool flying_normally
    
    # True if under the "RC Joystick" mode
    bool rc_mode
    
    # The name of the currently active tracker, as defined in the trackers.yaml in the "mrs_uav_manager" package.
    string active_tracker
    
    # The status of the currently active tracker.
    mrs_msgs/TrackerStatus tracker_status
    
    # The name of the currently active controller, as defined in the controllers.yaml in the "mrs_uav_manager" package.
    string active_controller
    
    # The status of the currently active controller.
    mrs_msgs/ControllerStatus controller_status
    
    # list of controllers and trackers that are loaded and can be switched to
    string[] available_controllers
    string[] available_trackers
    
    # flags reporting on whether the trackers and controller should be "human switchable", meaning,
    # whether people should be "just" able to switch to them, e.g., using a GUI or TUI interface
    bool[] human_switchable_controllers
    bool[] human_switchable_trackers
    
    ================================================================================
    MSG: mrs_msgs/TrackerStatus
    bool active
    bool callbacks_enabled
    
    # is true whenever the tracker is doing something
    # in other words, not idling
    bool have_goal
    
    # is true only then a trajectory is being tracked
    bool tracking_trajectory
    
    int32 trajectory_length
    int32 trajectory_idx
    
    # only when following trajectory
    # the current reference in the trajectory UNINTERPOLATED
    mrs_msgs/ReferenceStamped trajectory_reference
    
    ================================================================================
    MSG: mrs_msgs/ReferenceStamped
    # A Positon+Heading reference with a header.
    
    std_msgs/Header header
    mrs_msgs/Reference reference
    
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
    MSG: mrs_msgs/Reference
    # This message defines a control reference with a Position+Heading.
    
    geometry_msgs/Point position
    
    # Heading is atan2() of XY-world projection of the UAV's body X-axis.
    float64 heading
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: mrs_msgs/ControllerStatus
    bool active
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlManagerDiagnostics(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.uav_name !== undefined) {
      resolved.uav_name = msg.uav_name;
    }
    else {
      resolved.uav_name = ''
    }

    if (msg.motors !== undefined) {
      resolved.motors = msg.motors;
    }
    else {
      resolved.motors = false
    }

    if (msg.flying_normally !== undefined) {
      resolved.flying_normally = msg.flying_normally;
    }
    else {
      resolved.flying_normally = false
    }

    if (msg.rc_mode !== undefined) {
      resolved.rc_mode = msg.rc_mode;
    }
    else {
      resolved.rc_mode = false
    }

    if (msg.active_tracker !== undefined) {
      resolved.active_tracker = msg.active_tracker;
    }
    else {
      resolved.active_tracker = ''
    }

    if (msg.tracker_status !== undefined) {
      resolved.tracker_status = TrackerStatus.Resolve(msg.tracker_status)
    }
    else {
      resolved.tracker_status = new TrackerStatus()
    }

    if (msg.active_controller !== undefined) {
      resolved.active_controller = msg.active_controller;
    }
    else {
      resolved.active_controller = ''
    }

    if (msg.controller_status !== undefined) {
      resolved.controller_status = ControllerStatus.Resolve(msg.controller_status)
    }
    else {
      resolved.controller_status = new ControllerStatus()
    }

    if (msg.available_controllers !== undefined) {
      resolved.available_controllers = msg.available_controllers;
    }
    else {
      resolved.available_controllers = []
    }

    if (msg.available_trackers !== undefined) {
      resolved.available_trackers = msg.available_trackers;
    }
    else {
      resolved.available_trackers = []
    }

    if (msg.human_switchable_controllers !== undefined) {
      resolved.human_switchable_controllers = msg.human_switchable_controllers;
    }
    else {
      resolved.human_switchable_controllers = []
    }

    if (msg.human_switchable_trackers !== undefined) {
      resolved.human_switchable_trackers = msg.human_switchable_trackers;
    }
    else {
      resolved.human_switchable_trackers = []
    }

    return resolved;
    }
};

module.exports = ControlManagerDiagnostics;
