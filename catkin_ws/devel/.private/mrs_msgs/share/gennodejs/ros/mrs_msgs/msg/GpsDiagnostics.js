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

class GpsDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.satellites_visible = null;
      this.fix_type = null;
      this.eph = null;
      this.epv = null;
    }
    else {
      if (initObj.hasOwnProperty('satellites_visible')) {
        this.satellites_visible = initObj.satellites_visible
      }
      else {
        this.satellites_visible = 0;
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
      if (initObj.hasOwnProperty('eph')) {
        this.eph = initObj.eph
      }
      else {
        this.eph = 0.0;
      }
      if (initObj.hasOwnProperty('epv')) {
        this.epv = initObj.epv
      }
      else {
        this.epv = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsDiagnostics
    // Serialize message field [satellites_visible]
    bufferOffset = _serializer.uint8(obj.satellites_visible, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    // Serialize message field [eph]
    bufferOffset = _serializer.float32(obj.eph, buffer, bufferOffset);
    // Serialize message field [epv]
    bufferOffset = _serializer.float32(obj.epv, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsDiagnostics
    let len;
    let data = new GpsDiagnostics(null);
    // Deserialize message field [satellites_visible]
    data.satellites_visible = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [eph]
    data.eph = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [epv]
    data.epv = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/GpsDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ad1ab255ad6615041f82f42bc2320f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 satellites_visible
    uint8 fix_type
    float32 eph
    float32 epv
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsDiagnostics(null);
    if (msg.satellites_visible !== undefined) {
      resolved.satellites_visible = msg.satellites_visible;
    }
    else {
      resolved.satellites_visible = 0
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    if (msg.eph !== undefined) {
      resolved.eph = msg.eph;
    }
    else {
      resolved.eph = 0.0
    }

    if (msg.epv !== undefined) {
      resolved.epv = msg.epv;
    }
    else {
      resolved.epv = 0.0
    }

    return resolved;
    }
};

module.exports = GpsDiagnostics;
