// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DynamicsConstraints = require('./DynamicsConstraints.js');

//-----------------------------------------------------------

class ConstraintManagerDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.loaded = null;
      this.available = null;
      this.current_name = null;
      this.current_values = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('loaded')) {
        this.loaded = initObj.loaded
      }
      else {
        this.loaded = [];
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = [];
      }
      if (initObj.hasOwnProperty('current_name')) {
        this.current_name = initObj.current_name
      }
      else {
        this.current_name = '';
      }
      if (initObj.hasOwnProperty('current_values')) {
        this.current_values = initObj.current_values
      }
      else {
        this.current_values = new DynamicsConstraints();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConstraintManagerDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [loaded]
    bufferOffset = _arraySerializer.string(obj.loaded, buffer, bufferOffset, null);
    // Serialize message field [available]
    bufferOffset = _arraySerializer.string(obj.available, buffer, bufferOffset, null);
    // Serialize message field [current_name]
    bufferOffset = _serializer.string(obj.current_name, buffer, bufferOffset);
    // Serialize message field [current_values]
    bufferOffset = DynamicsConstraints.serialize(obj.current_values, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConstraintManagerDiagnostics
    let len;
    let data = new ConstraintManagerDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [loaded]
    data.loaded = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [available]
    data.available = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_name]
    data.current_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_values]
    data.current_values = DynamicsConstraints.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.loaded.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.available.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.current_name);
    return length + 180;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ConstraintManagerDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4492970994a46fd3abfb96a139dcd930';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The diagnostics of the ConstraintManager.
    
    time stamp
    
    # The list of all loaded constraints.
    string[] loaded
    
    # The list of constraints which are available for the currently active state estimator.
    string[] available
    
    # The name of the current constraints.
    string current_name
    
    # The particular values of the current constraints.
    # Beware, those might be overloaded by the current controller.
    # Subscribe to "control_manager/current_constraints" for the
    # true values.
    mrs_msgs/DynamicsConstraints current_values
    
    ================================================================================
    MSG: mrs_msgs/DynamicsConstraints
    # UAV dynamics constraints
    
    # speed: m/s
    # acceleration: m/s^2
    # jerk: m/s^3
    # snap: m/s^4
    
    # translational dynamics
    
    float64 horizontal_speed
    float64 horizontal_acceleration
    float64 horizontal_jerk
    float64 horizontal_snap
    
    float64 vertical_ascending_speed
    float64 vertical_ascending_acceleration
    float64 vertical_ascending_jerk
    float64 vertical_ascending_snap
    
    float64 vertical_descending_speed
    float64 vertical_descending_acceleration
    float64 vertical_descending_jerk
    float64 vertical_descending_snap
    
    # heading
    
    float64 heading_speed
    float64 heading_acceleration
    float64 heading_jerk
    float64 heading_snap
    
    # angular rates: rad/s
    
    float64 roll_rate
    float64 pitch_rate
    float64 yaw_rate
    
    # maximum tilt, rad
    # max angle between body-3 and world-3 axes
    
    float64 tilt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConstraintManagerDiagnostics(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.loaded !== undefined) {
      resolved.loaded = msg.loaded;
    }
    else {
      resolved.loaded = []
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = []
    }

    if (msg.current_name !== undefined) {
      resolved.current_name = msg.current_name;
    }
    else {
      resolved.current_name = ''
    }

    if (msg.current_values !== undefined) {
      resolved.current_values = DynamicsConstraints.Resolve(msg.current_values)
    }
    else {
      resolved.current_values = new DynamicsConstraints()
    }

    return resolved;
    }
};

module.exports = ConstraintManagerDiagnostics;
