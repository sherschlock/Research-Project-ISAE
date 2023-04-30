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

class UavStatusShort {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.odom_hz = null;
      this.odom_color = null;
      this.odom_x = null;
      this.odom_y = null;
      this.odom_z = null;
      this.odom_hdg = null;
      this.cmd_x = null;
      this.cmd_y = null;
      this.cmd_z = null;
      this.cmd_hdg = null;
    }
    else {
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UavStatusShort
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
    // Serialize message field [cmd_x]
    bufferOffset = _serializer.float32(obj.cmd_x, buffer, bufferOffset);
    // Serialize message field [cmd_y]
    bufferOffset = _serializer.float32(obj.cmd_y, buffer, bufferOffset);
    // Serialize message field [cmd_z]
    bufferOffset = _serializer.float32(obj.cmd_z, buffer, bufferOffset);
    // Serialize message field [cmd_hdg]
    bufferOffset = _serializer.float32(obj.cmd_hdg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UavStatusShort
    let len;
    let data = new UavStatusShort(null);
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
    // Deserialize message field [cmd_x]
    data.cmd_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_y]
    data.cmd_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_z]
    data.cmd_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cmd_hdg]
    data.cmd_hdg = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/UavStatusShort';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '799c7489ad9979eb43be3571ef53b456';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 odom_hz
    int16 odom_color
    float32 odom_x
    float32 odom_y
    float32 odom_z
    float32 odom_hdg
    
    float32 cmd_x
    float32 cmd_y
    float32 cmd_z
    float32 cmd_hdg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UavStatusShort(null);
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

    return resolved;
    }
};

module.exports = UavStatusShort;
