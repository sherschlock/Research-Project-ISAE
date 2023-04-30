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

class LandoffDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.active = null;
      this.landing = null;
      this.taking_off = null;
      this.elanding = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('landing')) {
        this.landing = initObj.landing
      }
      else {
        this.landing = false;
      }
      if (initObj.hasOwnProperty('taking_off')) {
        this.taking_off = initObj.taking_off
      }
      else {
        this.taking_off = false;
      }
      if (initObj.hasOwnProperty('elanding')) {
        this.elanding = initObj.elanding
      }
      else {
        this.elanding = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LandoffDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [landing]
    bufferOffset = _serializer.bool(obj.landing, buffer, bufferOffset);
    // Serialize message field [taking_off]
    bufferOffset = _serializer.bool(obj.taking_off, buffer, bufferOffset);
    // Serialize message field [elanding]
    bufferOffset = _serializer.bool(obj.elanding, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandoffDiagnostics
    let len;
    let data = new LandoffDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [landing]
    data.landing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [taking_off]
    data.taking_off = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [elanding]
    data.elanding = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/LandoffDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1feb5898812832580fccb73c0f05b11a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    bool active
    bool landing
    bool taking_off
    bool elanding
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandoffDiagnostics(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.landing !== undefined) {
      resolved.landing = msg.landing;
    }
    else {
      resolved.landing = false
    }

    if (msg.taking_off !== undefined) {
      resolved.taking_off = msg.taking_off;
    }
    else {
      resolved.taking_off = false
    }

    if (msg.elanding !== undefined) {
      resolved.elanding = msg.elanding;
    }
    else {
      resolved.elanding = false
    }

    return resolved;
    }
};

module.exports = LandoffDiagnostics;
