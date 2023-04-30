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

class Gpvtg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.message_id = null;
      this.track_true = null;
      this.track_true_indicator = null;
      this.track_mag = null;
      this.track_mag_indicator = null;
      this.speed_knots = null;
      this.speed_knots_indicator = null;
      this.speed_kmh = null;
      this.speed_kmh_indicator = null;
      this.mode_indicator = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = '';
      }
      if (initObj.hasOwnProperty('track_true')) {
        this.track_true = initObj.track_true
      }
      else {
        this.track_true = 0.0;
      }
      if (initObj.hasOwnProperty('track_true_indicator')) {
        this.track_true_indicator = initObj.track_true_indicator
      }
      else {
        this.track_true_indicator = '';
      }
      if (initObj.hasOwnProperty('track_mag')) {
        this.track_mag = initObj.track_mag
      }
      else {
        this.track_mag = 0.0;
      }
      if (initObj.hasOwnProperty('track_mag_indicator')) {
        this.track_mag_indicator = initObj.track_mag_indicator
      }
      else {
        this.track_mag_indicator = '';
      }
      if (initObj.hasOwnProperty('speed_knots')) {
        this.speed_knots = initObj.speed_knots
      }
      else {
        this.speed_knots = 0.0;
      }
      if (initObj.hasOwnProperty('speed_knots_indicator')) {
        this.speed_knots_indicator = initObj.speed_knots_indicator
      }
      else {
        this.speed_knots_indicator = '';
      }
      if (initObj.hasOwnProperty('speed_kmh')) {
        this.speed_kmh = initObj.speed_kmh
      }
      else {
        this.speed_kmh = 0.0;
      }
      if (initObj.hasOwnProperty('speed_kmh_indicator')) {
        this.speed_kmh_indicator = initObj.speed_kmh_indicator
      }
      else {
        this.speed_kmh_indicator = '';
      }
      if (initObj.hasOwnProperty('mode_indicator')) {
        this.mode_indicator = initObj.mode_indicator
      }
      else {
        this.mode_indicator = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gpvtg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.string(obj.message_id, buffer, bufferOffset);
    // Serialize message field [track_true]
    bufferOffset = _serializer.float64(obj.track_true, buffer, bufferOffset);
    // Serialize message field [track_true_indicator]
    bufferOffset = _serializer.string(obj.track_true_indicator, buffer, bufferOffset);
    // Serialize message field [track_mag]
    bufferOffset = _serializer.float64(obj.track_mag, buffer, bufferOffset);
    // Serialize message field [track_mag_indicator]
    bufferOffset = _serializer.string(obj.track_mag_indicator, buffer, bufferOffset);
    // Serialize message field [speed_knots]
    bufferOffset = _serializer.float64(obj.speed_knots, buffer, bufferOffset);
    // Serialize message field [speed_knots_indicator]
    bufferOffset = _serializer.string(obj.speed_knots_indicator, buffer, bufferOffset);
    // Serialize message field [speed_kmh]
    bufferOffset = _serializer.float64(obj.speed_kmh, buffer, bufferOffset);
    // Serialize message field [speed_kmh_indicator]
    bufferOffset = _serializer.string(obj.speed_kmh_indicator, buffer, bufferOffset);
    // Serialize message field [mode_indicator]
    bufferOffset = _serializer.string(obj.mode_indicator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gpvtg
    let len;
    let data = new Gpvtg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [track_true]
    data.track_true = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track_true_indicator]
    data.track_true_indicator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [track_mag]
    data.track_mag = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track_mag_indicator]
    data.track_mag_indicator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_knots]
    data.speed_knots = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_knots_indicator]
    data.speed_knots_indicator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_kmh]
    data.speed_kmh = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_kmh_indicator]
    data.speed_kmh_indicator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode_indicator]
    data.mode_indicator = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.message_id);
    length += _getByteLength(object.track_true_indicator);
    length += _getByteLength(object.track_mag_indicator);
    length += _getByteLength(object.speed_knots_indicator);
    length += _getByteLength(object.speed_kmh_indicator);
    length += _getByteLength(object.mode_indicator);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Gpvtg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b69a1dd6c8e499d5fb746b8067a62d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string message_id
    
    float64 track_true
    string track_true_indicator
    
    float64 track_mag
    string track_mag_indicator
    
    float64 speed_knots
    string speed_knots_indicator
    
    float64 speed_kmh
    string speed_kmh_indicator
    
    string mode_indicator
    
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
    const resolved = new Gpvtg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = ''
    }

    if (msg.track_true !== undefined) {
      resolved.track_true = msg.track_true;
    }
    else {
      resolved.track_true = 0.0
    }

    if (msg.track_true_indicator !== undefined) {
      resolved.track_true_indicator = msg.track_true_indicator;
    }
    else {
      resolved.track_true_indicator = ''
    }

    if (msg.track_mag !== undefined) {
      resolved.track_mag = msg.track_mag;
    }
    else {
      resolved.track_mag = 0.0
    }

    if (msg.track_mag_indicator !== undefined) {
      resolved.track_mag_indicator = msg.track_mag_indicator;
    }
    else {
      resolved.track_mag_indicator = ''
    }

    if (msg.speed_knots !== undefined) {
      resolved.speed_knots = msg.speed_knots;
    }
    else {
      resolved.speed_knots = 0.0
    }

    if (msg.speed_knots_indicator !== undefined) {
      resolved.speed_knots_indicator = msg.speed_knots_indicator;
    }
    else {
      resolved.speed_knots_indicator = ''
    }

    if (msg.speed_kmh !== undefined) {
      resolved.speed_kmh = msg.speed_kmh;
    }
    else {
      resolved.speed_kmh = 0.0
    }

    if (msg.speed_kmh_indicator !== undefined) {
      resolved.speed_kmh_indicator = msg.speed_kmh_indicator;
    }
    else {
      resolved.speed_kmh_indicator = ''
    }

    if (msg.mode_indicator !== undefined) {
      resolved.mode_indicator = msg.mode_indicator;
    }
    else {
      resolved.mode_indicator = ''
    }

    return resolved;
    }
};

module.exports = Gpvtg;
