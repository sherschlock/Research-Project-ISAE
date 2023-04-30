// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MavrosState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.armed = null;
      this.offboard = null;
    }
    else {
      if (initObj.hasOwnProperty('armed')) {
        this.armed = initObj.armed
      }
      else {
        this.armed = false;
      }
      if (initObj.hasOwnProperty('offboard')) {
        this.offboard = initObj.offboard
      }
      else {
        this.offboard = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MavrosState
    // Serialize message field [armed]
    bufferOffset = _serializer.bool(obj.armed, buffer, bufferOffset);
    // Serialize message field [offboard]
    bufferOffset = _serializer.bool(obj.offboard, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MavrosState
    let len;
    let data = new MavrosState(null);
    // Deserialize message field [armed]
    data.armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offboard]
    data.offboard = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/MavrosState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16648b716cc061680e9afcd8a78601a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool armed
    bool offboard
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MavrosState(null);
    if (msg.armed !== undefined) {
      resolved.armed = msg.armed;
    }
    else {
      resolved.armed = false
    }

    if (msg.offboard !== undefined) {
      resolved.offboard = msg.offboard;
    }
    else {
      resolved.offboard = false
    }

    return resolved;
    }
};

module.exports = MavrosState;
