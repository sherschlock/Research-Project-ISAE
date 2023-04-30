// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Reference = require('../msg/Reference.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ReferenceSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reference = null;
    }
    else {
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = new Reference();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReferenceSrvRequest
    // Serialize message field [reference]
    bufferOffset = Reference.serialize(obj.reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReferenceSrvRequest
    let len;
    let data = new ReferenceSrvRequest(null);
    // Deserialize message field [reference]
    data.reference = Reference.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ReferenceSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea1afe6c64d205a530fee152f63401e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/Reference reference
    
    ================================================================================
    MSG: mrs_msgs/Reference
    # This message defines a control reference with a Position+Heading.
    
    geometry_msgs/Point position
    
    # Heading is atan2() of XY-world projection of the UAV's body X-axis.
    float64 heading
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReferenceSrvRequest(null);
    if (msg.reference !== undefined) {
      resolved.reference = Reference.Resolve(msg.reference)
    }
    else {
      resolved.reference = new Reference()
    }

    return resolved;
    }
};

class ReferenceSrvResponse {
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
    // Serializes a message object of type ReferenceSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReferenceSrvResponse
    let len;
    let data = new ReferenceSrvResponse(null);
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
    return 'mrs_msgs/ReferenceSrvResponse';
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
    const resolved = new ReferenceSrvResponse(null);
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
  Request: ReferenceSrvRequest,
  Response: ReferenceSrvResponse,
  md5sum() { return 'd2bd04078f0e6934b3b579215143a7f4'; },
  datatype() { return 'mrs_msgs/ReferenceSrv'; }
};
