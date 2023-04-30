// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MavrosState = require('./MavrosState.js');
let HeartbeatDiagnostics = require('./HeartbeatDiagnostics.js');
let SystemDiagnostics = require('./SystemDiagnostics.js');
let GpsDiagnostics = require('./GpsDiagnostics.js');
let BatteryDiagnostics = require('./BatteryDiagnostics.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MavrosDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.heartbeat = null;
      this.system = null;
      this.gps = null;
      this.battery = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new MavrosState();
      }
      if (initObj.hasOwnProperty('heartbeat')) {
        this.heartbeat = initObj.heartbeat
      }
      else {
        this.heartbeat = new HeartbeatDiagnostics();
      }
      if (initObj.hasOwnProperty('system')) {
        this.system = initObj.system
      }
      else {
        this.system = new SystemDiagnostics();
      }
      if (initObj.hasOwnProperty('gps')) {
        this.gps = initObj.gps
      }
      else {
        this.gps = new GpsDiagnostics();
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = new BatteryDiagnostics();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MavrosDiagnostics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = MavrosState.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [heartbeat]
    bufferOffset = HeartbeatDiagnostics.serialize(obj.heartbeat, buffer, bufferOffset);
    // Serialize message field [system]
    bufferOffset = SystemDiagnostics.serialize(obj.system, buffer, bufferOffset);
    // Serialize message field [gps]
    bufferOffset = GpsDiagnostics.serialize(obj.gps, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = BatteryDiagnostics.serialize(obj.battery, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MavrosDiagnostics
    let len;
    let data = new MavrosDiagnostics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = MavrosState.deserialize(buffer, bufferOffset);
    // Deserialize message field [heartbeat]
    data.heartbeat = HeartbeatDiagnostics.deserialize(buffer, bufferOffset);
    // Deserialize message field [system]
    data.system = SystemDiagnostics.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps]
    data.gps = GpsDiagnostics.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = BatteryDiagnostics.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += HeartbeatDiagnostics.getMessageSize(object.heartbeat);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/MavrosDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b71f6da90e9d066eadc58c626133b5fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    mrs_msgs/MavrosState state
    mrs_msgs/HeartbeatDiagnostics heartbeat
    mrs_msgs/SystemDiagnostics system
    mrs_msgs/GpsDiagnostics gps
    mrs_msgs/BatteryDiagnostics battery
    
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
    MSG: mrs_msgs/MavrosState
    bool armed
    bool offboard
    
    ================================================================================
    MSG: mrs_msgs/HeartbeatDiagnostics
    string mode
    
    ================================================================================
    MSG: mrs_msgs/SystemDiagnostics
    float32 cpu_load
    uint32 errors_comm
    
    ================================================================================
    MSG: mrs_msgs/GpsDiagnostics
    uint8 satellites_visible
    uint8 fix_type
    float32 eph
    float32 epv
    
    ================================================================================
    MSG: mrs_msgs/BatteryDiagnostics
    float32 voltage
    float32 current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MavrosDiagnostics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.state !== undefined) {
      resolved.state = MavrosState.Resolve(msg.state)
    }
    else {
      resolved.state = new MavrosState()
    }

    if (msg.heartbeat !== undefined) {
      resolved.heartbeat = HeartbeatDiagnostics.Resolve(msg.heartbeat)
    }
    else {
      resolved.heartbeat = new HeartbeatDiagnostics()
    }

    if (msg.system !== undefined) {
      resolved.system = SystemDiagnostics.Resolve(msg.system)
    }
    else {
      resolved.system = new SystemDiagnostics()
    }

    if (msg.gps !== undefined) {
      resolved.gps = GpsDiagnostics.Resolve(msg.gps)
    }
    else {
      resolved.gps = new GpsDiagnostics()
    }

    if (msg.battery !== undefined) {
      resolved.battery = BatteryDiagnostics.Resolve(msg.battery)
    }
    else {
      resolved.battery = new BatteryDiagnostics()
    }

    return resolved;
    }
};

module.exports = MavrosDiagnostics;
