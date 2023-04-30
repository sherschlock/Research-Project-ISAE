// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConstraintsOverrideRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acceleration_horizontal = null;
      this.acceleration_vertical = null;
    }
    else {
      if (initObj.hasOwnProperty('acceleration_horizontal')) {
        this.acceleration_horizontal = initObj.acceleration_horizontal
      }
      else {
        this.acceleration_horizontal = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_vertical')) {
        this.acceleration_vertical = initObj.acceleration_vertical
      }
      else {
        this.acceleration_vertical = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConstraintsOverrideRequest
    // Serialize message field [acceleration_horizontal]
    bufferOffset = _serializer.float64(obj.acceleration_horizontal, buffer, bufferOffset);
    // Serialize message field [acceleration_vertical]
    bufferOffset = _serializer.float64(obj.acceleration_vertical, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConstraintsOverrideRequest
    let len;
    let data = new ConstraintsOverrideRequest(null);
    // Deserialize message field [acceleration_horizontal]
    data.acceleration_horizontal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_vertical]
    data.acceleration_vertical = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ConstraintsOverrideRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e477e33456dad3e8d818e64f701b2fb3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 acceleration_horizontal
    float64 acceleration_vertical
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConstraintsOverrideRequest(null);
    if (msg.acceleration_horizontal !== undefined) {
      resolved.acceleration_horizontal = msg.acceleration_horizontal;
    }
    else {
      resolved.acceleration_horizontal = 0.0
    }

    if (msg.acceleration_vertical !== undefined) {
      resolved.acceleration_vertical = msg.acceleration_vertical;
    }
    else {
      resolved.acceleration_vertical = 0.0
    }

    return resolved;
    }
};

class ConstraintsOverrideResponse {
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
    // Serializes a message object of type ConstraintsOverrideResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConstraintsOverrideResponse
    let len;
    let data = new ConstraintsOverrideResponse(null);
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
    return 'mrs_msgs/ConstraintsOverrideResponse';
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
    const resolved = new ConstraintsOverrideResponse(null);
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
  Request: ConstraintsOverrideRequest,
  Response: ConstraintsOverrideResponse,
  md5sum() { return '56bf1beffb328c1889ee5151b25df6dc'; },
  datatype() { return 'mrs_msgs/ConstraintsOverride'; }
};
