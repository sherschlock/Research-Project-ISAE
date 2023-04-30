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

class BacaProtocol {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.payload = null;
      this.checksum_calculated = null;
      this.checksum_received = null;
      this.checksum_correct = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = [];
      }
      if (initObj.hasOwnProperty('checksum_calculated')) {
        this.checksum_calculated = initObj.checksum_calculated
      }
      else {
        this.checksum_calculated = 0;
      }
      if (initObj.hasOwnProperty('checksum_received')) {
        this.checksum_received = initObj.checksum_received
      }
      else {
        this.checksum_received = 0;
      }
      if (initObj.hasOwnProperty('checksum_correct')) {
        this.checksum_correct = initObj.checksum_correct
      }
      else {
        this.checksum_correct = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BacaProtocol
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [payload]
    bufferOffset = _arraySerializer.uint8(obj.payload, buffer, bufferOffset, null);
    // Serialize message field [checksum_calculated]
    bufferOffset = _serializer.uint8(obj.checksum_calculated, buffer, bufferOffset);
    // Serialize message field [checksum_received]
    bufferOffset = _serializer.uint8(obj.checksum_received, buffer, bufferOffset);
    // Serialize message field [checksum_correct]
    bufferOffset = _serializer.bool(obj.checksum_correct, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BacaProtocol
    let len;
    let data = new BacaProtocol(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [payload]
    data.payload = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [checksum_calculated]
    data.checksum_calculated = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checksum_received]
    data.checksum_received = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checksum_correct]
    data.checksum_correct = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.payload.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/BacaProtocol';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab27864d6a028e49646c9087913dde4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    uint8[] payload
    uint8 checksum_calculated #useful for debugging
    uint8 checksum_received   #useful for debugging
    bool checksum_correct
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BacaProtocol(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = []
    }

    if (msg.checksum_calculated !== undefined) {
      resolved.checksum_calculated = msg.checksum_calculated;
    }
    else {
      resolved.checksum_calculated = 0
    }

    if (msg.checksum_received !== undefined) {
      resolved.checksum_received = msg.checksum_received;
    }
    else {
      resolved.checksum_received = 0
    }

    if (msg.checksum_correct !== undefined) {
      resolved.checksum_correct = msg.checksum_correct;
    }
    else {
      resolved.checksum_correct = false
    }

    return resolved;
    }
};

module.exports = BacaProtocol;
