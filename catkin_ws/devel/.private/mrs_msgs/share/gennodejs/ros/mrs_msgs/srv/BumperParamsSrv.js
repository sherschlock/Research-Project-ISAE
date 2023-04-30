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

class BumperParamsSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.horizontal_limit = null;
      this.vertical_limit = null;
      this.repulsion_horizontal_limit = null;
      this.repulsion_vertical_limit = null;
      this.repulsion_horizontal_offset = null;
      this.repulsion_vertical_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('horizontal_limit')) {
        this.horizontal_limit = initObj.horizontal_limit
      }
      else {
        this.horizontal_limit = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_limit')) {
        this.vertical_limit = initObj.vertical_limit
      }
      else {
        this.vertical_limit = 0.0;
      }
      if (initObj.hasOwnProperty('repulsion_horizontal_limit')) {
        this.repulsion_horizontal_limit = initObj.repulsion_horizontal_limit
      }
      else {
        this.repulsion_horizontal_limit = 0.0;
      }
      if (initObj.hasOwnProperty('repulsion_vertical_limit')) {
        this.repulsion_vertical_limit = initObj.repulsion_vertical_limit
      }
      else {
        this.repulsion_vertical_limit = 0.0;
      }
      if (initObj.hasOwnProperty('repulsion_horizontal_offset')) {
        this.repulsion_horizontal_offset = initObj.repulsion_horizontal_offset
      }
      else {
        this.repulsion_horizontal_offset = 0.0;
      }
      if (initObj.hasOwnProperty('repulsion_vertical_offset')) {
        this.repulsion_vertical_offset = initObj.repulsion_vertical_offset
      }
      else {
        this.repulsion_vertical_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BumperParamsSrvRequest
    // Serialize message field [horizontal_limit]
    bufferOffset = _serializer.float64(obj.horizontal_limit, buffer, bufferOffset);
    // Serialize message field [vertical_limit]
    bufferOffset = _serializer.float64(obj.vertical_limit, buffer, bufferOffset);
    // Serialize message field [repulsion_horizontal_limit]
    bufferOffset = _serializer.float64(obj.repulsion_horizontal_limit, buffer, bufferOffset);
    // Serialize message field [repulsion_vertical_limit]
    bufferOffset = _serializer.float64(obj.repulsion_vertical_limit, buffer, bufferOffset);
    // Serialize message field [repulsion_horizontal_offset]
    bufferOffset = _serializer.float64(obj.repulsion_horizontal_offset, buffer, bufferOffset);
    // Serialize message field [repulsion_vertical_offset]
    bufferOffset = _serializer.float64(obj.repulsion_vertical_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BumperParamsSrvRequest
    let len;
    let data = new BumperParamsSrvRequest(null);
    // Deserialize message field [horizontal_limit]
    data.horizontal_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_limit]
    data.vertical_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [repulsion_horizontal_limit]
    data.repulsion_horizontal_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [repulsion_vertical_limit]
    data.repulsion_vertical_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [repulsion_horizontal_offset]
    data.repulsion_horizontal_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [repulsion_vertical_offset]
    data.repulsion_vertical_offset = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/BumperParamsSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43837f92faee2831db542fb5c6f4adc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 horizontal_limit
    float64 vertical_limit
    
    float64 repulsion_horizontal_limit
    float64 repulsion_vertical_limit
    
    float64 repulsion_horizontal_offset
    float64 repulsion_vertical_offset
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BumperParamsSrvRequest(null);
    if (msg.horizontal_limit !== undefined) {
      resolved.horizontal_limit = msg.horizontal_limit;
    }
    else {
      resolved.horizontal_limit = 0.0
    }

    if (msg.vertical_limit !== undefined) {
      resolved.vertical_limit = msg.vertical_limit;
    }
    else {
      resolved.vertical_limit = 0.0
    }

    if (msg.repulsion_horizontal_limit !== undefined) {
      resolved.repulsion_horizontal_limit = msg.repulsion_horizontal_limit;
    }
    else {
      resolved.repulsion_horizontal_limit = 0.0
    }

    if (msg.repulsion_vertical_limit !== undefined) {
      resolved.repulsion_vertical_limit = msg.repulsion_vertical_limit;
    }
    else {
      resolved.repulsion_vertical_limit = 0.0
    }

    if (msg.repulsion_horizontal_offset !== undefined) {
      resolved.repulsion_horizontal_offset = msg.repulsion_horizontal_offset;
    }
    else {
      resolved.repulsion_horizontal_offset = 0.0
    }

    if (msg.repulsion_vertical_offset !== undefined) {
      resolved.repulsion_vertical_offset = msg.repulsion_vertical_offset;
    }
    else {
      resolved.repulsion_vertical_offset = 0.0
    }

    return resolved;
    }
};

class BumperParamsSrvResponse {
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
    // Serializes a message object of type BumperParamsSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BumperParamsSrvResponse
    let len;
    let data = new BumperParamsSrvResponse(null);
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
    return 'mrs_msgs/BumperParamsSrvResponse';
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
    const resolved = new BumperParamsSrvResponse(null);
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
  Request: BumperParamsSrvRequest,
  Response: BumperParamsSrvResponse,
  md5sum() { return '2b4f2150f024cdd7b51d145eb3b4559b'; },
  datatype() { return 'mrs_msgs/BumperParamsSrv'; }
};
