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

class TersusMessageHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_name = null;
      this.port_address = null;
      this.sequence = null;
      this.idle_time = null;
      this.time_status = null;
      this.gps_week = null;
      this.gps_week_seconds = null;
      this.receiver_status = null;
      this.software_version = null;
    }
    else {
      if (initObj.hasOwnProperty('message_name')) {
        this.message_name = initObj.message_name
      }
      else {
        this.message_name = '';
      }
      if (initObj.hasOwnProperty('port_address')) {
        this.port_address = initObj.port_address
      }
      else {
        this.port_address = '';
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('idle_time')) {
        this.idle_time = initObj.idle_time
      }
      else {
        this.idle_time = 0.0;
      }
      if (initObj.hasOwnProperty('time_status')) {
        this.time_status = initObj.time_status
      }
      else {
        this.time_status = '';
      }
      if (initObj.hasOwnProperty('gps_week')) {
        this.gps_week = initObj.gps_week
      }
      else {
        this.gps_week = 0;
      }
      if (initObj.hasOwnProperty('gps_week_seconds')) {
        this.gps_week_seconds = initObj.gps_week_seconds
      }
      else {
        this.gps_week_seconds = 0.0;
      }
      if (initObj.hasOwnProperty('receiver_status')) {
        this.receiver_status = initObj.receiver_status
      }
      else {
        this.receiver_status = 0;
      }
      if (initObj.hasOwnProperty('software_version')) {
        this.software_version = initObj.software_version
      }
      else {
        this.software_version = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TersusMessageHeader
    // Serialize message field [message_name]
    bufferOffset = _serializer.string(obj.message_name, buffer, bufferOffset);
    // Serialize message field [port_address]
    bufferOffset = _serializer.string(obj.port_address, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = _serializer.uint16(obj.sequence, buffer, bufferOffset);
    // Serialize message field [idle_time]
    bufferOffset = _serializer.float32(obj.idle_time, buffer, bufferOffset);
    // Serialize message field [time_status]
    bufferOffset = _serializer.string(obj.time_status, buffer, bufferOffset);
    // Serialize message field [gps_week]
    bufferOffset = _serializer.uint16(obj.gps_week, buffer, bufferOffset);
    // Serialize message field [gps_week_seconds]
    bufferOffset = _serializer.float32(obj.gps_week_seconds, buffer, bufferOffset);
    // Serialize message field [receiver_status]
    bufferOffset = _serializer.uint32(obj.receiver_status, buffer, bufferOffset);
    // Serialize message field [software_version]
    bufferOffset = _serializer.uint16(obj.software_version, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TersusMessageHeader
    let len;
    let data = new TersusMessageHeader(null);
    // Deserialize message field [message_name]
    data.message_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port_address]
    data.port_address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [idle_time]
    data.idle_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_status]
    data.time_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_week]
    data.gps_week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gps_week_seconds]
    data.gps_week_seconds = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [receiver_status]
    data.receiver_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [software_version]
    data.software_version = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message_name);
    length += _getByteLength(object.port_address);
    length += _getByteLength(object.time_status);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/TersusMessageHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '551bdd4abfba94b9393d89735daa6fe7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is modified version from Novatel
    # For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html
    # For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
    # See section 1.5 in the Tersus manual.
    # --------------------------------------------------------------------------------------
    
    # On the wire, this header is preceeded by three sync bytes,
    # which are 0xAA 0x44 0x12, and a uint8 which is the header length.
    
    # Measurement source, format, response bit.
    string message_name
    
    string port_address
    
    uint16 sequence
    
    float32 idle_time
    
    # Table 1 in the Tersus manual.
    string time_status
    
    uint16 gps_week
    float32 gps_week_seconds
    
    uint32 receiver_status
    uint16 software_version
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TersusMessageHeader(null);
    if (msg.message_name !== undefined) {
      resolved.message_name = msg.message_name;
    }
    else {
      resolved.message_name = ''
    }

    if (msg.port_address !== undefined) {
      resolved.port_address = msg.port_address;
    }
    else {
      resolved.port_address = ''
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.idle_time !== undefined) {
      resolved.idle_time = msg.idle_time;
    }
    else {
      resolved.idle_time = 0.0
    }

    if (msg.time_status !== undefined) {
      resolved.time_status = msg.time_status;
    }
    else {
      resolved.time_status = ''
    }

    if (msg.gps_week !== undefined) {
      resolved.gps_week = msg.gps_week;
    }
    else {
      resolved.gps_week = 0
    }

    if (msg.gps_week_seconds !== undefined) {
      resolved.gps_week_seconds = msg.gps_week_seconds;
    }
    else {
      resolved.gps_week_seconds = 0.0
    }

    if (msg.receiver_status !== undefined) {
      resolved.receiver_status = msg.receiver_status;
    }
    else {
      resolved.receiver_status = 0
    }

    if (msg.software_version !== undefined) {
      resolved.software_version = msg.software_version;
    }
    else {
      resolved.software_version = 0
    }

    return resolved;
    }
};

module.exports = TersusMessageHeader;
