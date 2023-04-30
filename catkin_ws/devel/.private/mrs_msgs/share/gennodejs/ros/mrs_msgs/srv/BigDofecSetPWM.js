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

class BigDofecSetPWMRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.pwm_1 = null;
      this.pwm_2 = null;
      this.pwm_3 = null;
      this.pwm_4 = null;
      this.pwm_5 = null;
      this.pwm_6 = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('pwm_1')) {
        this.pwm_1 = initObj.pwm_1
      }
      else {
        this.pwm_1 = 0;
      }
      if (initObj.hasOwnProperty('pwm_2')) {
        this.pwm_2 = initObj.pwm_2
      }
      else {
        this.pwm_2 = 0;
      }
      if (initObj.hasOwnProperty('pwm_3')) {
        this.pwm_3 = initObj.pwm_3
      }
      else {
        this.pwm_3 = 0;
      }
      if (initObj.hasOwnProperty('pwm_4')) {
        this.pwm_4 = initObj.pwm_4
      }
      else {
        this.pwm_4 = 0;
      }
      if (initObj.hasOwnProperty('pwm_5')) {
        this.pwm_5 = initObj.pwm_5
      }
      else {
        this.pwm_5 = 0;
      }
      if (initObj.hasOwnProperty('pwm_6')) {
        this.pwm_6 = initObj.pwm_6
      }
      else {
        this.pwm_6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BigDofecSetPWMRequest
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [pwm_1]
    bufferOffset = _serializer.uint16(obj.pwm_1, buffer, bufferOffset);
    // Serialize message field [pwm_2]
    bufferOffset = _serializer.uint16(obj.pwm_2, buffer, bufferOffset);
    // Serialize message field [pwm_3]
    bufferOffset = _serializer.uint16(obj.pwm_3, buffer, bufferOffset);
    // Serialize message field [pwm_4]
    bufferOffset = _serializer.uint16(obj.pwm_4, buffer, bufferOffset);
    // Serialize message field [pwm_5]
    bufferOffset = _serializer.uint16(obj.pwm_5, buffer, bufferOffset);
    // Serialize message field [pwm_6]
    bufferOffset = _serializer.uint16(obj.pwm_6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BigDofecSetPWMRequest
    let len;
    let data = new BigDofecSetPWMRequest(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pwm_1]
    data.pwm_1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm_2]
    data.pwm_2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm_3]
    data.pwm_3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm_4]
    data.pwm_4 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm_5]
    data.pwm_5 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm_6]
    data.pwm_6 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/BigDofecSetPWMRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f21fd5364519c1893658b1d79bd48ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable
    uint16 pwm_1
    uint16 pwm_2
    uint16 pwm_3
    uint16 pwm_4
    uint16 pwm_5
    uint16 pwm_6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BigDofecSetPWMRequest(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.pwm_1 !== undefined) {
      resolved.pwm_1 = msg.pwm_1;
    }
    else {
      resolved.pwm_1 = 0
    }

    if (msg.pwm_2 !== undefined) {
      resolved.pwm_2 = msg.pwm_2;
    }
    else {
      resolved.pwm_2 = 0
    }

    if (msg.pwm_3 !== undefined) {
      resolved.pwm_3 = msg.pwm_3;
    }
    else {
      resolved.pwm_3 = 0
    }

    if (msg.pwm_4 !== undefined) {
      resolved.pwm_4 = msg.pwm_4;
    }
    else {
      resolved.pwm_4 = 0
    }

    if (msg.pwm_5 !== undefined) {
      resolved.pwm_5 = msg.pwm_5;
    }
    else {
      resolved.pwm_5 = 0
    }

    if (msg.pwm_6 !== undefined) {
      resolved.pwm_6 = msg.pwm_6;
    }
    else {
      resolved.pwm_6 = 0
    }

    return resolved;
    }
};

class BigDofecSetPWMResponse {
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
    // Serializes a message object of type BigDofecSetPWMResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BigDofecSetPWMResponse
    let len;
    let data = new BigDofecSetPWMResponse(null);
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
    return 'mrs_msgs/BigDofecSetPWMResponse';
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
    const resolved = new BigDofecSetPWMResponse(null);
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
  Request: BigDofecSetPWMRequest,
  Response: BigDofecSetPWMResponse,
  md5sum() { return '520a4ed6517f96208c7031ef1b57775b'; },
  datatype() { return 'mrs_msgs/BigDofecSetPWM'; }
};
