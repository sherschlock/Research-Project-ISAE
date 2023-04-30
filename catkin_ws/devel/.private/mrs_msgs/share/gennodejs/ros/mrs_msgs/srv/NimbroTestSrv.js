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

class NimbroTestSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uav_name = null;
      this.payload = null;
    }
    else {
      if (initObj.hasOwnProperty('uav_name')) {
        this.uav_name = initObj.uav_name
      }
      else {
        this.uav_name = '';
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NimbroTestSrvRequest
    // Serialize message field [uav_name]
    bufferOffset = _serializer.string(obj.uav_name, buffer, bufferOffset);
    // Serialize message field [payload]
    bufferOffset = _arraySerializer.float64(obj.payload, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NimbroTestSrvRequest
    let len;
    let data = new NimbroTestSrvRequest(null);
    // Deserialize message field [uav_name]
    data.uav_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [payload]
    data.payload = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uav_name);
    length += 8 * object.payload.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/NimbroTestSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d07aba1adb623fa05f416a9d16b2afc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string uav_name
    float64[] payload
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NimbroTestSrvRequest(null);
    if (msg.uav_name !== undefined) {
      resolved.uav_name = msg.uav_name;
    }
    else {
      resolved.uav_name = ''
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = []
    }

    return resolved;
    }
};

class NimbroTestSrvResponse {
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
    // Serializes a message object of type NimbroTestSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NimbroTestSrvResponse
    let len;
    let data = new NimbroTestSrvResponse(null);
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
    return 'mrs_msgs/NimbroTestSrvResponse';
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
    const resolved = new NimbroTestSrvResponse(null);
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
  Request: NimbroTestSrvRequest,
  Response: NimbroTestSrvResponse,
  md5sum() { return 'd75faa959a02195d82deada15533aecd'; },
  datatype() { return 'mrs_msgs/NimbroTestSrv'; }
};
