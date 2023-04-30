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

class BigDofecLaunchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.msecs_open = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
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
    // Serializes a message object of type BigDofecLaunchRequest
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [msecs_open]
    bufferOffset = _serializer.uint16(obj.msecs_open, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BigDofecLaunchRequest
    let len;
    let data = new BigDofecLaunchRequest(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msecs_open]
    data.msecs_open = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/BigDofecLaunchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '84bc38e7fd43b6895d1ad749dc70dee0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 channel
    uint16 msecs_open
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BigDofecLaunchRequest(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
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

class BigDofecLaunchResponse {
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
    // Serializes a message object of type BigDofecLaunchResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BigDofecLaunchResponse
    let len;
    let data = new BigDofecLaunchResponse(null);
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
    return 'mrs_msgs/BigDofecLaunchResponse';
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
    const resolved = new BigDofecLaunchResponse(null);
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
  Request: BigDofecLaunchRequest,
  Response: BigDofecLaunchResponse,
  md5sum() { return '357f0bafa0cfddcfa722df8b39793652'; },
  datatype() { return 'mrs_msgs/BigDofecLaunch'; }
};
