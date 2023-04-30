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

class DynamicsConstraints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.horizontal_speed = null;
      this.horizontal_acceleration = null;
      this.horizontal_jerk = null;
      this.horizontal_snap = null;
      this.vertical_ascending_speed = null;
      this.vertical_ascending_acceleration = null;
      this.vertical_ascending_jerk = null;
      this.vertical_ascending_snap = null;
      this.vertical_descending_speed = null;
      this.vertical_descending_acceleration = null;
      this.vertical_descending_jerk = null;
      this.vertical_descending_snap = null;
      this.heading_speed = null;
      this.heading_acceleration = null;
      this.heading_jerk = null;
      this.heading_snap = null;
      this.roll_rate = null;
      this.pitch_rate = null;
      this.yaw_rate = null;
      this.tilt = null;
    }
    else {
      if (initObj.hasOwnProperty('horizontal_speed')) {
        this.horizontal_speed = initObj.horizontal_speed
      }
      else {
        this.horizontal_speed = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_acceleration')) {
        this.horizontal_acceleration = initObj.horizontal_acceleration
      }
      else {
        this.horizontal_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_jerk')) {
        this.horizontal_jerk = initObj.horizontal_jerk
      }
      else {
        this.horizontal_jerk = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_snap')) {
        this.horizontal_snap = initObj.horizontal_snap
      }
      else {
        this.horizontal_snap = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_ascending_speed')) {
        this.vertical_ascending_speed = initObj.vertical_ascending_speed
      }
      else {
        this.vertical_ascending_speed = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_ascending_acceleration')) {
        this.vertical_ascending_acceleration = initObj.vertical_ascending_acceleration
      }
      else {
        this.vertical_ascending_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_ascending_jerk')) {
        this.vertical_ascending_jerk = initObj.vertical_ascending_jerk
      }
      else {
        this.vertical_ascending_jerk = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_ascending_snap')) {
        this.vertical_ascending_snap = initObj.vertical_ascending_snap
      }
      else {
        this.vertical_ascending_snap = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_descending_speed')) {
        this.vertical_descending_speed = initObj.vertical_descending_speed
      }
      else {
        this.vertical_descending_speed = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_descending_acceleration')) {
        this.vertical_descending_acceleration = initObj.vertical_descending_acceleration
      }
      else {
        this.vertical_descending_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_descending_jerk')) {
        this.vertical_descending_jerk = initObj.vertical_descending_jerk
      }
      else {
        this.vertical_descending_jerk = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_descending_snap')) {
        this.vertical_descending_snap = initObj.vertical_descending_snap
      }
      else {
        this.vertical_descending_snap = 0.0;
      }
      if (initObj.hasOwnProperty('heading_speed')) {
        this.heading_speed = initObj.heading_speed
      }
      else {
        this.heading_speed = 0.0;
      }
      if (initObj.hasOwnProperty('heading_acceleration')) {
        this.heading_acceleration = initObj.heading_acceleration
      }
      else {
        this.heading_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('heading_jerk')) {
        this.heading_jerk = initObj.heading_jerk
      }
      else {
        this.heading_jerk = 0.0;
      }
      if (initObj.hasOwnProperty('heading_snap')) {
        this.heading_snap = initObj.heading_snap
      }
      else {
        this.heading_snap = 0.0;
      }
      if (initObj.hasOwnProperty('roll_rate')) {
        this.roll_rate = initObj.roll_rate
      }
      else {
        this.roll_rate = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_rate')) {
        this.pitch_rate = initObj.pitch_rate
      }
      else {
        this.pitch_rate = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('tilt')) {
        this.tilt = initObj.tilt
      }
      else {
        this.tilt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicsConstraints
    // Serialize message field [horizontal_speed]
    bufferOffset = _serializer.float64(obj.horizontal_speed, buffer, bufferOffset);
    // Serialize message field [horizontal_acceleration]
    bufferOffset = _serializer.float64(obj.horizontal_acceleration, buffer, bufferOffset);
    // Serialize message field [horizontal_jerk]
    bufferOffset = _serializer.float64(obj.horizontal_jerk, buffer, bufferOffset);
    // Serialize message field [horizontal_snap]
    bufferOffset = _serializer.float64(obj.horizontal_snap, buffer, bufferOffset);
    // Serialize message field [vertical_ascending_speed]
    bufferOffset = _serializer.float64(obj.vertical_ascending_speed, buffer, bufferOffset);
    // Serialize message field [vertical_ascending_acceleration]
    bufferOffset = _serializer.float64(obj.vertical_ascending_acceleration, buffer, bufferOffset);
    // Serialize message field [vertical_ascending_jerk]
    bufferOffset = _serializer.float64(obj.vertical_ascending_jerk, buffer, bufferOffset);
    // Serialize message field [vertical_ascending_snap]
    bufferOffset = _serializer.float64(obj.vertical_ascending_snap, buffer, bufferOffset);
    // Serialize message field [vertical_descending_speed]
    bufferOffset = _serializer.float64(obj.vertical_descending_speed, buffer, bufferOffset);
    // Serialize message field [vertical_descending_acceleration]
    bufferOffset = _serializer.float64(obj.vertical_descending_acceleration, buffer, bufferOffset);
    // Serialize message field [vertical_descending_jerk]
    bufferOffset = _serializer.float64(obj.vertical_descending_jerk, buffer, bufferOffset);
    // Serialize message field [vertical_descending_snap]
    bufferOffset = _serializer.float64(obj.vertical_descending_snap, buffer, bufferOffset);
    // Serialize message field [heading_speed]
    bufferOffset = _serializer.float64(obj.heading_speed, buffer, bufferOffset);
    // Serialize message field [heading_acceleration]
    bufferOffset = _serializer.float64(obj.heading_acceleration, buffer, bufferOffset);
    // Serialize message field [heading_jerk]
    bufferOffset = _serializer.float64(obj.heading_jerk, buffer, bufferOffset);
    // Serialize message field [heading_snap]
    bufferOffset = _serializer.float64(obj.heading_snap, buffer, bufferOffset);
    // Serialize message field [roll_rate]
    bufferOffset = _serializer.float64(obj.roll_rate, buffer, bufferOffset);
    // Serialize message field [pitch_rate]
    bufferOffset = _serializer.float64(obj.pitch_rate, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [tilt]
    bufferOffset = _serializer.float64(obj.tilt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicsConstraints
    let len;
    let data = new DynamicsConstraints(null);
    // Deserialize message field [horizontal_speed]
    data.horizontal_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontal_acceleration]
    data.horizontal_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontal_jerk]
    data.horizontal_jerk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontal_snap]
    data.horizontal_snap = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_ascending_speed]
    data.vertical_ascending_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_ascending_acceleration]
    data.vertical_ascending_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_ascending_jerk]
    data.vertical_ascending_jerk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_ascending_snap]
    data.vertical_ascending_snap = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_descending_speed]
    data.vertical_descending_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_descending_acceleration]
    data.vertical_descending_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_descending_jerk]
    data.vertical_descending_jerk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_descending_snap]
    data.vertical_descending_snap = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_speed]
    data.heading_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_acceleration]
    data.heading_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_jerk]
    data.heading_jerk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_snap]
    data.heading_snap = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_rate]
    data.roll_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_rate]
    data.pitch_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tilt]
    data.tilt = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 160;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/DynamicsConstraints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b79235a15953215e436f7e546e99c44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # UAV dynamics constraints
    
    # speed: m/s
    # acceleration: m/s^2
    # jerk: m/s^3
    # snap: m/s^4
    
    # translational dynamics
    
    float64 horizontal_speed
    float64 horizontal_acceleration
    float64 horizontal_jerk
    float64 horizontal_snap
    
    float64 vertical_ascending_speed
    float64 vertical_ascending_acceleration
    float64 vertical_ascending_jerk
    float64 vertical_ascending_snap
    
    float64 vertical_descending_speed
    float64 vertical_descending_acceleration
    float64 vertical_descending_jerk
    float64 vertical_descending_snap
    
    # heading
    
    float64 heading_speed
    float64 heading_acceleration
    float64 heading_jerk
    float64 heading_snap
    
    # angular rates: rad/s
    
    float64 roll_rate
    float64 pitch_rate
    float64 yaw_rate
    
    # maximum tilt, rad
    # max angle between body-3 and world-3 axes
    
    float64 tilt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicsConstraints(null);
    if (msg.horizontal_speed !== undefined) {
      resolved.horizontal_speed = msg.horizontal_speed;
    }
    else {
      resolved.horizontal_speed = 0.0
    }

    if (msg.horizontal_acceleration !== undefined) {
      resolved.horizontal_acceleration = msg.horizontal_acceleration;
    }
    else {
      resolved.horizontal_acceleration = 0.0
    }

    if (msg.horizontal_jerk !== undefined) {
      resolved.horizontal_jerk = msg.horizontal_jerk;
    }
    else {
      resolved.horizontal_jerk = 0.0
    }

    if (msg.horizontal_snap !== undefined) {
      resolved.horizontal_snap = msg.horizontal_snap;
    }
    else {
      resolved.horizontal_snap = 0.0
    }

    if (msg.vertical_ascending_speed !== undefined) {
      resolved.vertical_ascending_speed = msg.vertical_ascending_speed;
    }
    else {
      resolved.vertical_ascending_speed = 0.0
    }

    if (msg.vertical_ascending_acceleration !== undefined) {
      resolved.vertical_ascending_acceleration = msg.vertical_ascending_acceleration;
    }
    else {
      resolved.vertical_ascending_acceleration = 0.0
    }

    if (msg.vertical_ascending_jerk !== undefined) {
      resolved.vertical_ascending_jerk = msg.vertical_ascending_jerk;
    }
    else {
      resolved.vertical_ascending_jerk = 0.0
    }

    if (msg.vertical_ascending_snap !== undefined) {
      resolved.vertical_ascending_snap = msg.vertical_ascending_snap;
    }
    else {
      resolved.vertical_ascending_snap = 0.0
    }

    if (msg.vertical_descending_speed !== undefined) {
      resolved.vertical_descending_speed = msg.vertical_descending_speed;
    }
    else {
      resolved.vertical_descending_speed = 0.0
    }

    if (msg.vertical_descending_acceleration !== undefined) {
      resolved.vertical_descending_acceleration = msg.vertical_descending_acceleration;
    }
    else {
      resolved.vertical_descending_acceleration = 0.0
    }

    if (msg.vertical_descending_jerk !== undefined) {
      resolved.vertical_descending_jerk = msg.vertical_descending_jerk;
    }
    else {
      resolved.vertical_descending_jerk = 0.0
    }

    if (msg.vertical_descending_snap !== undefined) {
      resolved.vertical_descending_snap = msg.vertical_descending_snap;
    }
    else {
      resolved.vertical_descending_snap = 0.0
    }

    if (msg.heading_speed !== undefined) {
      resolved.heading_speed = msg.heading_speed;
    }
    else {
      resolved.heading_speed = 0.0
    }

    if (msg.heading_acceleration !== undefined) {
      resolved.heading_acceleration = msg.heading_acceleration;
    }
    else {
      resolved.heading_acceleration = 0.0
    }

    if (msg.heading_jerk !== undefined) {
      resolved.heading_jerk = msg.heading_jerk;
    }
    else {
      resolved.heading_jerk = 0.0
    }

    if (msg.heading_snap !== undefined) {
      resolved.heading_snap = msg.heading_snap;
    }
    else {
      resolved.heading_snap = 0.0
    }

    if (msg.roll_rate !== undefined) {
      resolved.roll_rate = msg.roll_rate;
    }
    else {
      resolved.roll_rate = 0.0
    }

    if (msg.pitch_rate !== undefined) {
      resolved.pitch_rate = msg.pitch_rate;
    }
    else {
      resolved.pitch_rate = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.tilt !== undefined) {
      resolved.tilt = msg.tilt;
    }
    else {
      resolved.tilt = 0.0
    }

    return resolved;
    }
};

module.exports = DynamicsConstraints;
