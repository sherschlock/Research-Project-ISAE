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

class LedStripDriverRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_a = null;
      this.output_b = null;
      this.output_vbat = null;
    }
    else {
      if (initObj.hasOwnProperty('output_a')) {
        this.output_a = initObj.output_a
      }
      else {
        this.output_a = 0;
      }
      if (initObj.hasOwnProperty('output_b')) {
        this.output_b = initObj.output_b
      }
      else {
        this.output_b = 0;
      }
      if (initObj.hasOwnProperty('output_vbat')) {
        this.output_vbat = initObj.output_vbat
      }
      else {
        this.output_vbat = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedStripDriverRequest
    // Serialize message field [output_a]
    bufferOffset = _serializer.uint8(obj.output_a, buffer, bufferOffset);
    // Serialize message field [output_b]
    bufferOffset = _serializer.uint8(obj.output_b, buffer, bufferOffset);
    // Serialize message field [output_vbat]
    bufferOffset = _serializer.bool(obj.output_vbat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedStripDriverRequest
    let len;
    let data = new LedStripDriverRequest(null);
    // Deserialize message field [output_a]
    data.output_a = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [output_b]
    data.output_b = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [output_vbat]
    data.output_vbat = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/LedStripDriverRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a9fc672f957fbc4c76c4ac0c66a70d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 output_a
    uint8 output_b
    bool output_vbat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedStripDriverRequest(null);
    if (msg.output_a !== undefined) {
      resolved.output_a = msg.output_a;
    }
    else {
      resolved.output_a = 0
    }

    if (msg.output_b !== undefined) {
      resolved.output_b = msg.output_b;
    }
    else {
      resolved.output_b = 0
    }

    if (msg.output_vbat !== undefined) {
      resolved.output_vbat = msg.output_vbat;
    }
    else {
      resolved.output_vbat = false
    }

    return resolved;
    }
};

class LedStripDriverResponse {
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
    // Serializes a message object of type LedStripDriverResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedStripDriverResponse
    let len;
    let data = new LedStripDriverResponse(null);
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
    return 'mrs_msgs/LedStripDriverResponse';
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
    const resolved = new LedStripDriverResponse(null);
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
  Request: LedStripDriverRequest,
  Response: LedStripDriverResponse,
  md5sum() { return '699df7492006841ba00430a91859da78'; },
  datatype() { return 'mrs_msgs/LedStripDriver'; }
};
