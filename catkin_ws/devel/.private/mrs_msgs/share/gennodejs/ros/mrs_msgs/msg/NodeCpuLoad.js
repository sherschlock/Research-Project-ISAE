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

class NodeCpuLoad {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_names = null;
      this.cpu_loads = null;
    }
    else {
      if (initObj.hasOwnProperty('node_names')) {
        this.node_names = initObj.node_names
      }
      else {
        this.node_names = [];
      }
      if (initObj.hasOwnProperty('cpu_loads')) {
        this.cpu_loads = initObj.cpu_loads
      }
      else {
        this.cpu_loads = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeCpuLoad
    // Serialize message field [node_names]
    bufferOffset = _arraySerializer.string(obj.node_names, buffer, bufferOffset, null);
    // Serialize message field [cpu_loads]
    bufferOffset = _arraySerializer.float32(obj.cpu_loads, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeCpuLoad
    let len;
    let data = new NodeCpuLoad(null);
    // Deserialize message field [node_names]
    data.node_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [cpu_loads]
    data.cpu_loads = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.node_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.cpu_loads.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/NodeCpuLoad';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fde7b9ae5b72c740d25f009d8731c6a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] node_names
    float32[] cpu_loads
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeCpuLoad(null);
    if (msg.node_names !== undefined) {
      resolved.node_names = msg.node_names;
    }
    else {
      resolved.node_names = []
    }

    if (msg.cpu_loads !== undefined) {
      resolved.cpu_loads = msg.cpu_loads;
    }
    else {
      resolved.cpu_loads = []
    }

    return resolved;
    }
};

module.exports = NodeCpuLoad;
