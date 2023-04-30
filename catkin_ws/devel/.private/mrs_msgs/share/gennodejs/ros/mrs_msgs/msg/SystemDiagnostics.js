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

class SystemDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cpu_load = null;
      this.errors_comm = null;
    }
    else {
      if (initObj.hasOwnProperty('cpu_load')) {
        this.cpu_load = initObj.cpu_load
      }
      else {
        this.cpu_load = 0.0;
      }
      if (initObj.hasOwnProperty('errors_comm')) {
        this.errors_comm = initObj.errors_comm
      }
      else {
        this.errors_comm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SystemDiagnostics
    // Serialize message field [cpu_load]
    bufferOffset = _serializer.float32(obj.cpu_load, buffer, bufferOffset);
    // Serialize message field [errors_comm]
    bufferOffset = _serializer.uint32(obj.errors_comm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SystemDiagnostics
    let len;
    let data = new SystemDiagnostics(null);
    // Deserialize message field [cpu_load]
    data.cpu_load = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [errors_comm]
    data.errors_comm = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/SystemDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cde81d66be8af36e6d2be4bdc2a22417';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 cpu_load
    uint32 errors_comm
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SystemDiagnostics(null);
    if (msg.cpu_load !== undefined) {
      resolved.cpu_load = msg.cpu_load;
    }
    else {
      resolved.cpu_load = 0.0
    }

    if (msg.errors_comm !== undefined) {
      resolved.errors_comm = msg.errors_comm;
    }
    else {
      resolved.errors_comm = 0
    }

    return resolved;
    }
};

module.exports = SystemDiagnostics;
