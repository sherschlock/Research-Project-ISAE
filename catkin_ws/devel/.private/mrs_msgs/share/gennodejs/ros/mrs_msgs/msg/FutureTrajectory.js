// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FuturePoint = require('./FuturePoint.js');

//-----------------------------------------------------------

class FutureTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.uav_name = null;
      this.priority = null;
      this.collision_avoidance = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('uav_name')) {
        this.uav_name = initObj.uav_name
      }
      else {
        this.uav_name = '';
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('collision_avoidance')) {
        this.collision_avoidance = initObj.collision_avoidance
      }
      else {
        this.collision_avoidance = false;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FutureTrajectory
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [uav_name]
    bufferOffset = _serializer.string(obj.uav_name, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = _serializer.int32(obj.priority, buffer, bufferOffset);
    // Serialize message field [collision_avoidance]
    bufferOffset = _serializer.bool(obj.collision_avoidance, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = FuturePoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FutureTrajectory
    let len;
    let data = new FutureTrajectory(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [uav_name]
    data.uav_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [collision_avoidance]
    data.collision_avoidance = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = FuturePoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uav_name);
    length += 12 * object.points.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/FutureTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0fea67fc418564772e559179612541d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    string uav_name
    int32 priority
    bool collision_avoidance
    FuturePoint[] points 
    
    ================================================================================
    MSG: mrs_msgs/FuturePoint
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FutureTrajectory(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.uav_name !== undefined) {
      resolved.uav_name = msg.uav_name;
    }
    else {
      resolved.uav_name = ''
    }

    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.collision_avoidance !== undefined) {
      resolved.collision_avoidance = msg.collision_avoidance;
    }
    else {
      resolved.collision_avoidance = false
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = FuturePoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = FutureTrajectory;
