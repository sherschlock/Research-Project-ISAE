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

class BumperStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.repulsing = null;
      this.modifying_reference = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('repulsing')) {
        this.repulsing = initObj.repulsing
      }
      else {
        this.repulsing = false;
      }
      if (initObj.hasOwnProperty('modifying_reference')) {
        this.modifying_reference = initObj.modifying_reference
      }
      else {
        this.modifying_reference = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BumperStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [repulsing]
    bufferOffset = _serializer.bool(obj.repulsing, buffer, bufferOffset);
    // Serialize message field [modifying_reference]
    bufferOffset = _serializer.bool(obj.modifying_reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BumperStatus
    let len;
    let data = new BumperStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [repulsing]
    data.repulsing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [modifying_reference]
    data.modifying_reference = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/BumperStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61b2690b519e811c0a533b0dc63657c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    bool repulsing
    bool modifying_reference
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BumperStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.repulsing !== undefined) {
      resolved.repulsing = msg.repulsing;
    }
    else {
      resolved.repulsing = false
    }

    if (msg.modifying_reference !== undefined) {
      resolved.modifying_reference = msg.modifying_reference;
    }
    else {
      resolved.modifying_reference = false
    }

    return resolved;
    }
};

module.exports = BumperStatus;
