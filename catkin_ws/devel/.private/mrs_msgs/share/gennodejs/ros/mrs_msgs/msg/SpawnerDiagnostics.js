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

class SpawnerDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.spawn_called = null;
      this.processing = null;
      this.active_vehicles = null;
      this.queued_vehicles = null;
      this.queued_processes = null;
    }
    else {
      if (initObj.hasOwnProperty('spawn_called')) {
        this.spawn_called = initObj.spawn_called
      }
      else {
        this.spawn_called = false;
      }
      if (initObj.hasOwnProperty('processing')) {
        this.processing = initObj.processing
      }
      else {
        this.processing = false;
      }
      if (initObj.hasOwnProperty('active_vehicles')) {
        this.active_vehicles = initObj.active_vehicles
      }
      else {
        this.active_vehicles = [];
      }
      if (initObj.hasOwnProperty('queued_vehicles')) {
        this.queued_vehicles = initObj.queued_vehicles
      }
      else {
        this.queued_vehicles = [];
      }
      if (initObj.hasOwnProperty('queued_processes')) {
        this.queued_processes = initObj.queued_processes
      }
      else {
        this.queued_processes = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpawnerDiagnostics
    // Serialize message field [spawn_called]
    bufferOffset = _serializer.bool(obj.spawn_called, buffer, bufferOffset);
    // Serialize message field [processing]
    bufferOffset = _serializer.bool(obj.processing, buffer, bufferOffset);
    // Serialize message field [active_vehicles]
    bufferOffset = _arraySerializer.string(obj.active_vehicles, buffer, bufferOffset, null);
    // Serialize message field [queued_vehicles]
    bufferOffset = _arraySerializer.string(obj.queued_vehicles, buffer, bufferOffset, null);
    // Serialize message field [queued_processes]
    bufferOffset = _serializer.uint8(obj.queued_processes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpawnerDiagnostics
    let len;
    let data = new SpawnerDiagnostics(null);
    // Deserialize message field [spawn_called]
    data.spawn_called = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [processing]
    data.processing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [active_vehicles]
    data.active_vehicles = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [queued_vehicles]
    data.queued_vehicles = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [queued_processes]
    data.queued_processes = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.active_vehicles.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.queued_vehicles.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/SpawnerDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '388186ee1e8df969bc4d4587fd373eb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool spawn_called
    bool processing
    string[] active_vehicles
    string[] queued_vehicles
    uint8 queued_processes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpawnerDiagnostics(null);
    if (msg.spawn_called !== undefined) {
      resolved.spawn_called = msg.spawn_called;
    }
    else {
      resolved.spawn_called = false
    }

    if (msg.processing !== undefined) {
      resolved.processing = msg.processing;
    }
    else {
      resolved.processing = false
    }

    if (msg.active_vehicles !== undefined) {
      resolved.active_vehicles = msg.active_vehicles;
    }
    else {
      resolved.active_vehicles = []
    }

    if (msg.queued_vehicles !== undefined) {
      resolved.queued_vehicles = msg.queued_vehicles;
    }
    else {
      resolved.queued_vehicles = []
    }

    if (msg.queued_processes !== undefined) {
      resolved.queued_processes = msg.queued_processes;
    }
    else {
      resolved.queued_processes = 0
    }

    return resolved;
    }
};

module.exports = SpawnerDiagnostics;
