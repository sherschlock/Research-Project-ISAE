// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Se3Gains = require('./Se3Gains.js');

//-----------------------------------------------------------

class GainManagerDiagnostics {
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
        this.current_values = new Se3Gains();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GainManagerDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [loaded]
    bufferOffset = _arraySerializer.string(obj.loaded, buffer, bufferOffset, null);
    // Serialize message field [available]
    bufferOffset = _arraySerializer.string(obj.available, buffer, bufferOffset, null);
    // Serialize message field [current_name]
    bufferOffset = _serializer.string(obj.current_name, buffer, bufferOffset);
    // Serialize message field [current_values]
    bufferOffset = Se3Gains.serialize(obj.current_values, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GainManagerDiagnostics
    let len;
    let data = new GainManagerDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [loaded]
    data.loaded = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [available]
    data.available = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [current_name]
    data.current_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_values]
    data.current_values = Se3Gains.deserialize(buffer, bufferOffset);
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
    return length + 132;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/GainManagerDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24039f9a2906ae6c07ed9b74d96b96e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The diagnostics of the GainManager.
    
    time stamp
    
    # The list of all loaded gains.
    string[] loaded
    
    # The list of gains which are available for the currently active state estimator.
    string[] available
    
    # The name of the current gains.
    string current_name
    
    # The particular values of the current gains.
    mrs_msgs/Se3Gains current_values
    
    ================================================================================
    MSG: mrs_msgs/Se3Gains
    # This a set of gains for the SE(3) controller.
    
    # Horizontal position gain.
    float64 kpxy
    
    # Horizontal velocity gain.
    float64 kvxy
    
    # Horizontal acceleration gain.
    float64 kaxy
    
    # Vertical position gain.
    float64 kpz
    
    # Vertical velocity gain.
    float64 kvz
    
    # Vertical acceleration gain.
    float64 kaz
    
    # Roll+pitch attitude gain.
    float64 kqxy
    
    # Body disturbance gain.
    float64 kibxy
    
    # Body disturbance estimator limit ([N]).
    float64 kibxy_lim
    
    # World disturbance gain.
    float64 kiwxy
    
    # World disturbance estimator limit  ([N]).
    float64 kiwxy_lim
    
    # Yaw attitude gain.
    float64 kqz
    
    # Mass estimator gain.
    float64 km
    
    # Mass estimator limit ([m]).
    float64 km_lim
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GainManagerDiagnostics(null);
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
      resolved.current_values = Se3Gains.Resolve(msg.current_values)
    }
    else {
      resolved.current_values = new Se3Gains()
    }

    return resolved;
    }
};

module.exports = GainManagerDiagnostics;
