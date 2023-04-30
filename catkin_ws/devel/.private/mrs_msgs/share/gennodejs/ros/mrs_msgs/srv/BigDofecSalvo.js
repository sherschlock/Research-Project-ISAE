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

class BigDofecSalvoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.launch_delay_secs = null;
      this.msecs_open = null;
    }
    else {
      if (initObj.hasOwnProperty('launch_delay_secs')) {
        this.launch_delay_secs = initObj.launch_delay_secs
      }
      else {
        this.launch_delay_secs = 0.0;
      }
      if (initObj.hasOwnProperty('msecs_open')) {
        this.msecs_open = initObj.msecs_open
      }
      else {
        this.msecs_open = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BigDofecSalvoRequest
    // Serialize message field [launch_delay_secs]
    bufferOffset = _serializer.float64(obj.launch_delay_secs, buffer, bufferOffset);
    // Serialize message field [msecs_open]
    bufferOffset = _serializer.uint16(obj.msecs_open, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BigDofecSalvoRequest
    let len;
    let data = new BigDofecSalvoRequest(null);
    // Deserialize message field [launch_delay_secs]
    data.launch_delay_secs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [msecs_open]
    data.msecs_open = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/BigDofecSalvoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c8d2e03a00254a7236a4e6cfa4121b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 launch_delay_secs
    uint16 msecs_open
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BigDofecSalvoRequest(null);
    if (msg.launch_delay_secs !== undefined) {
      resolved.launch_delay_secs = msg.launch_delay_secs;
    }
    else {
      resolved.launch_delay_secs = 0.0
    }

    if (msg.msecs_open !== undefined) {
      resolved.msecs_open = msg.msecs_open;
    }
    else {
      resolved.msecs_open = 0
    }

    return resolved;
    }
};

class BigDofecSalvoResponse {
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
    // Serializes a message object of type BigDofecSalvoResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BigDofecSalvoResponse
    let len;
    let data = new BigDofecSalvoResponse(null);
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
    return 'mrs_msgs/BigDofecSalvoResponse';
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
    const resolved = new BigDofecSalvoResponse(null);
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
  Request: BigDofecSalvoRequest,
  Response: BigDofecSalvoResponse,
  md5sum() { return '6c76d9434acd11a1bca9dd92dec5f206'; },
  datatype() { return 'mrs_msgs/BigDofecSalvo'; }
};
