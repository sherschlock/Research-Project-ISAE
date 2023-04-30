// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DynamicsConstraints = require('../msg/DynamicsConstraints.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class DynamicsConstraintsSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.constraints = null;
    }
    else {
      if (initObj.hasOwnProperty('constraints')) {
        this.constraints = initObj.constraints
      }
      else {
        this.constraints = new DynamicsConstraints();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicsConstraintsSrvRequest
    // Serialize message field [constraints]
    bufferOffset = DynamicsConstraints.serialize(obj.constraints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicsConstraintsSrvRequest
    let len;
    let data = new DynamicsConstraintsSrvRequest(null);
    // Deserialize message field [constraints]
    data.constraints = DynamicsConstraints.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 160;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/DynamicsConstraintsSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95787fab1213e37f2c767c75b0228f57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/DynamicsConstraints constraints
    
    ================================================================================
    MSG: mrs_msgs/DynamicsConstraints
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
    const resolved = new DynamicsConstraintsSrvRequest(null);
    if (msg.constraints !== undefined) {
      resolved.constraints = DynamicsConstraints.Resolve(msg.constraints)
    }
    else {
      resolved.constraints = new DynamicsConstraints()
    }

    return resolved;
    }
};

class DynamicsConstraintsSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicsConstraintsSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicsConstraintsSrvResponse
    let len;
    let data = new DynamicsConstraintsSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/DynamicsConstraintsSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicsConstraintsSrvResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: DynamicsConstraintsSrvRequest,
  Response: DynamicsConstraintsSrvResponse,
  md5sum() { return '6a22936cf27079c2902612f5c225d1df'; },
  datatype() { return 'mrs_msgs/DynamicsConstraintsSrv'; }
};
