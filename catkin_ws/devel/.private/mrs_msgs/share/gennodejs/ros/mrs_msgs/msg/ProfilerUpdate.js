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

class ProfilerUpdate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.node_name = null;
      this.routine_name = null;
      this.iteration = null;
      this.is_periodic = null;
      this.expected_rate = null;
      this.expected_start = null;
      this.real_start = null;
      this.duration = null;
      this.event = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = '';
      }
      if (initObj.hasOwnProperty('routine_name')) {
        this.routine_name = initObj.routine_name
      }
      else {
        this.routine_name = '';
      }
      if (initObj.hasOwnProperty('iteration')) {
        this.iteration = initObj.iteration
      }
      else {
        this.iteration = 0;
      }
      if (initObj.hasOwnProperty('is_periodic')) {
        this.is_periodic = initObj.is_periodic
      }
      else {
        this.is_periodic = false;
      }
      if (initObj.hasOwnProperty('expected_rate')) {
        this.expected_rate = initObj.expected_rate
      }
      else {
        this.expected_rate = 0.0;
      }
      if (initObj.hasOwnProperty('expected_start')) {
        this.expected_start = initObj.expected_start
      }
      else {
        this.expected_start = 0.0;
      }
      if (initObj.hasOwnProperty('real_start')) {
        this.real_start = initObj.real_start
      }
      else {
        this.real_start = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProfilerUpdate
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [node_name]
    bufferOffset = _serializer.string(obj.node_name, buffer, bufferOffset);
    // Serialize message field [routine_name]
    bufferOffset = _serializer.string(obj.routine_name, buffer, bufferOffset);
    // Serialize message field [iteration]
    bufferOffset = _serializer.int64(obj.iteration, buffer, bufferOffset);
    // Serialize message field [is_periodic]
    bufferOffset = _serializer.bool(obj.is_periodic, buffer, bufferOffset);
    // Serialize message field [expected_rate]
    bufferOffset = _serializer.float64(obj.expected_rate, buffer, bufferOffset);
    // Serialize message field [expected_start]
    bufferOffset = _serializer.float64(obj.expected_start, buffer, bufferOffset);
    // Serialize message field [real_start]
    bufferOffset = _serializer.float64(obj.real_start, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    // Serialize message field [event]
    bufferOffset = _serializer.string(obj.event, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProfilerUpdate
    let len;
    let data = new ProfilerUpdate(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [node_name]
    data.node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [routine_name]
    data.routine_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [iteration]
    data.iteration = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [is_periodic]
    data.is_periodic = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [expected_rate]
    data.expected_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [expected_start]
    data.expected_start = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [real_start]
    data.real_start = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [event]
    data.event = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.node_name);
    length += _getByteLength(object.routine_name);
    length += _getByteLength(object.event);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ProfilerUpdate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eea4d095c0f839a7ab6eec8d18760e77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string START=start
    string END=end
    time stamp
    string node_name
    string routine_name
    int64 iteration
    bool is_periodic
    float64 expected_rate
    float64 expected_start
    float64 real_start
    float64 duration
    string event
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProfilerUpdate(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.node_name !== undefined) {
      resolved.node_name = msg.node_name;
    }
    else {
      resolved.node_name = ''
    }

    if (msg.routine_name !== undefined) {
      resolved.routine_name = msg.routine_name;
    }
    else {
      resolved.routine_name = ''
    }

    if (msg.iteration !== undefined) {
      resolved.iteration = msg.iteration;
    }
    else {
      resolved.iteration = 0
    }

    if (msg.is_periodic !== undefined) {
      resolved.is_periodic = msg.is_periodic;
    }
    else {
      resolved.is_periodic = false
    }

    if (msg.expected_rate !== undefined) {
      resolved.expected_rate = msg.expected_rate;
    }
    else {
      resolved.expected_rate = 0.0
    }

    if (msg.expected_start !== undefined) {
      resolved.expected_start = msg.expected_start;
    }
    else {
      resolved.expected_start = 0.0
    }

    if (msg.real_start !== undefined) {
      resolved.real_start = msg.real_start;
    }
    else {
      resolved.real_start = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = ''
    }

    return resolved;
    }
};

// Constants for message
ProfilerUpdate.Constants = {
  START: 'start',
  END: 'end',
}

module.exports = ProfilerUpdate;
