// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AloamgarmDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.duration_all = null;
      this.duration_aloam = null;
      this.duration_garmin = null;
      this.duration_baro = null;
      this.duration_input = null;
      this.duration_rest = null;
      this.timestamp_diff_all = null;
      this.timestamp_diff_aloam = null;
      this.timestamp_diff_garmin = null;
      this.timestamp_diff_baro = null;
      this.timestamp_diff_input = null;
      this.timestamp_diff_rest = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('duration_all')) {
        this.duration_all = initObj.duration_all
      }
      else {
        this.duration_all = 0.0;
      }
      if (initObj.hasOwnProperty('duration_aloam')) {
        this.duration_aloam = initObj.duration_aloam
      }
      else {
        this.duration_aloam = 0.0;
      }
      if (initObj.hasOwnProperty('duration_garmin')) {
        this.duration_garmin = initObj.duration_garmin
      }
      else {
        this.duration_garmin = 0.0;
      }
      if (initObj.hasOwnProperty('duration_baro')) {
        this.duration_baro = initObj.duration_baro
      }
      else {
        this.duration_baro = 0.0;
      }
      if (initObj.hasOwnProperty('duration_input')) {
        this.duration_input = initObj.duration_input
      }
      else {
        this.duration_input = 0.0;
      }
      if (initObj.hasOwnProperty('duration_rest')) {
        this.duration_rest = initObj.duration_rest
      }
      else {
        this.duration_rest = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp_diff_all')) {
        this.timestamp_diff_all = initObj.timestamp_diff_all
      }
      else {
        this.timestamp_diff_all = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp_diff_aloam')) {
        this.timestamp_diff_aloam = initObj.timestamp_diff_aloam
      }
      else {
        this.timestamp_diff_aloam = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp_diff_garmin')) {
        this.timestamp_diff_garmin = initObj.timestamp_diff_garmin
      }
      else {
        this.timestamp_diff_garmin = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp_diff_baro')) {
        this.timestamp_diff_baro = initObj.timestamp_diff_baro
      }
      else {
        this.timestamp_diff_baro = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp_diff_input')) {
        this.timestamp_diff_input = initObj.timestamp_diff_input
      }
      else {
        this.timestamp_diff_input = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp_diff_rest')) {
        this.timestamp_diff_rest = initObj.timestamp_diff_rest
      }
      else {
        this.timestamp_diff_rest = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AloamgarmDebug
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [duration_all]
    bufferOffset = _serializer.float64(obj.duration_all, buffer, bufferOffset);
    // Serialize message field [duration_aloam]
    bufferOffset = _serializer.float64(obj.duration_aloam, buffer, bufferOffset);
    // Serialize message field [duration_garmin]
    bufferOffset = _serializer.float64(obj.duration_garmin, buffer, bufferOffset);
    // Serialize message field [duration_baro]
    bufferOffset = _serializer.float64(obj.duration_baro, buffer, bufferOffset);
    // Serialize message field [duration_input]
    bufferOffset = _serializer.float64(obj.duration_input, buffer, bufferOffset);
    // Serialize message field [duration_rest]
    bufferOffset = _serializer.float64(obj.duration_rest, buffer, bufferOffset);
    // Serialize message field [timestamp_diff_all]
    bufferOffset = _serializer.float64(obj.timestamp_diff_all, buffer, bufferOffset);
    // Serialize message field [timestamp_diff_aloam]
    bufferOffset = _serializer.float64(obj.timestamp_diff_aloam, buffer, bufferOffset);
    // Serialize message field [timestamp_diff_garmin]
    bufferOffset = _serializer.float64(obj.timestamp_diff_garmin, buffer, bufferOffset);
    // Serialize message field [timestamp_diff_baro]
    bufferOffset = _serializer.float64(obj.timestamp_diff_baro, buffer, bufferOffset);
    // Serialize message field [timestamp_diff_input]
    bufferOffset = _serializer.float64(obj.timestamp_diff_input, buffer, bufferOffset);
    // Serialize message field [timestamp_diff_rest]
    bufferOffset = _serializer.float64(obj.timestamp_diff_rest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AloamgarmDebug
    let len;
    let data = new AloamgarmDebug(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [duration_all]
    data.duration_all = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration_aloam]
    data.duration_aloam = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration_garmin]
    data.duration_garmin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration_baro]
    data.duration_baro = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration_input]
    data.duration_input = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [duration_rest]
    data.duration_rest = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp_diff_all]
    data.timestamp_diff_all = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp_diff_aloam]
    data.timestamp_diff_aloam = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp_diff_garmin]
    data.timestamp_diff_garmin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp_diff_baro]
    data.timestamp_diff_baro = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp_diff_input]
    data.timestamp_diff_input = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp_diff_rest]
    data.timestamp_diff_rest = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/AloamgarmDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10902ec7873a0eb0f7aaae111478ce31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 duration_all
    float64 duration_aloam
    float64 duration_garmin
    float64 duration_baro
    float64 duration_input
    float64 duration_rest
    float64 timestamp_diff_all
    float64 timestamp_diff_aloam
    float64 timestamp_diff_garmin
    float64 timestamp_diff_baro
    float64 timestamp_diff_input
    float64 timestamp_diff_rest
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AloamgarmDebug(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.duration_all !== undefined) {
      resolved.duration_all = msg.duration_all;
    }
    else {
      resolved.duration_all = 0.0
    }

    if (msg.duration_aloam !== undefined) {
      resolved.duration_aloam = msg.duration_aloam;
    }
    else {
      resolved.duration_aloam = 0.0
    }

    if (msg.duration_garmin !== undefined) {
      resolved.duration_garmin = msg.duration_garmin;
    }
    else {
      resolved.duration_garmin = 0.0
    }

    if (msg.duration_baro !== undefined) {
      resolved.duration_baro = msg.duration_baro;
    }
    else {
      resolved.duration_baro = 0.0
    }

    if (msg.duration_input !== undefined) {
      resolved.duration_input = msg.duration_input;
    }
    else {
      resolved.duration_input = 0.0
    }

    if (msg.duration_rest !== undefined) {
      resolved.duration_rest = msg.duration_rest;
    }
    else {
      resolved.duration_rest = 0.0
    }

    if (msg.timestamp_diff_all !== undefined) {
      resolved.timestamp_diff_all = msg.timestamp_diff_all;
    }
    else {
      resolved.timestamp_diff_all = 0.0
    }

    if (msg.timestamp_diff_aloam !== undefined) {
      resolved.timestamp_diff_aloam = msg.timestamp_diff_aloam;
    }
    else {
      resolved.timestamp_diff_aloam = 0.0
    }

    if (msg.timestamp_diff_garmin !== undefined) {
      resolved.timestamp_diff_garmin = msg.timestamp_diff_garmin;
    }
    else {
      resolved.timestamp_diff_garmin = 0.0
    }

    if (msg.timestamp_diff_baro !== undefined) {
      resolved.timestamp_diff_baro = msg.timestamp_diff_baro;
    }
    else {
      resolved.timestamp_diff_baro = 0.0
    }

    if (msg.timestamp_diff_input !== undefined) {
      resolved.timestamp_diff_input = msg.timestamp_diff_input;
    }
    else {
      resolved.timestamp_diff_input = 0.0
    }

    if (msg.timestamp_diff_rest !== undefined) {
      resolved.timestamp_diff_rest = msg.timestamp_diff_rest;
    }
    else {
      resolved.timestamp_diff_rest = 0.0
    }

    return resolved;
    }
};

module.exports = AloamgarmDebug;
