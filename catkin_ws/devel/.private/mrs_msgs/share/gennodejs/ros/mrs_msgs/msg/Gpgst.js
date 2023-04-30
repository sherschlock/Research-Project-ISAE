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

class Gpgst {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.message_id = null;
      this.utc = null;
      this.rms = null;
      this.smjr_std = null;
      this.smnr_std = null;
      this.orient = null;
      this.lat_std = null;
      this.lon_std = null;
      this.alt_std = null;
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
      if (initObj.hasOwnProperty('utc')) {
        this.utc = initObj.utc
      }
      else {
        this.utc = 0.0;
      }
      if (initObj.hasOwnProperty('rms')) {
        this.rms = initObj.rms
      }
      else {
        this.rms = 0.0;
      }
      if (initObj.hasOwnProperty('smjr_std')) {
        this.smjr_std = initObj.smjr_std
      }
      else {
        this.smjr_std = 0.0;
      }
      if (initObj.hasOwnProperty('smnr_std')) {
        this.smnr_std = initObj.smnr_std
      }
      else {
        this.smnr_std = 0.0;
      }
      if (initObj.hasOwnProperty('orient')) {
        this.orient = initObj.orient
      }
      else {
        this.orient = 0.0;
      }
      if (initObj.hasOwnProperty('lat_std')) {
        this.lat_std = initObj.lat_std
      }
      else {
        this.lat_std = 0.0;
      }
      if (initObj.hasOwnProperty('lon_std')) {
        this.lon_std = initObj.lon_std
      }
      else {
        this.lon_std = 0.0;
      }
      if (initObj.hasOwnProperty('alt_std')) {
        this.alt_std = initObj.alt_std
      }
      else {
        this.alt_std = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gpgst
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.string(obj.message_id, buffer, bufferOffset);
    // Serialize message field [utc]
    bufferOffset = _serializer.float64(obj.utc, buffer, bufferOffset);
    // Serialize message field [rms]
    bufferOffset = _serializer.float64(obj.rms, buffer, bufferOffset);
    // Serialize message field [smjr_std]
    bufferOffset = _serializer.float64(obj.smjr_std, buffer, bufferOffset);
    // Serialize message field [smnr_std]
    bufferOffset = _serializer.float64(obj.smnr_std, buffer, bufferOffset);
    // Serialize message field [orient]
    bufferOffset = _serializer.float64(obj.orient, buffer, bufferOffset);
    // Serialize message field [lat_std]
    bufferOffset = _serializer.float64(obj.lat_std, buffer, bufferOffset);
    // Serialize message field [lon_std]
    bufferOffset = _serializer.float64(obj.lon_std, buffer, bufferOffset);
    // Serialize message field [alt_std]
    bufferOffset = _serializer.float64(obj.alt_std, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gpgst
    let len;
    let data = new Gpgst(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [utc]
    data.utc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rms]
    data.rms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [smjr_std]
    data.smjr_std = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [smnr_std]
    data.smnr_std = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orient]
    data.orient = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_std]
    data.lat_std = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_std]
    data.lon_std = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt_std]
    data.alt_std = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.message_id);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Gpgst';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93293830e1d4d500dc0342868321dfef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message from GPGST NMEA String
    Header header
    
    string message_id
    
    float64 utc
    
    float64 rms
    
    float64 smjr_std
    float64 smnr_std
    
    float64 orient
    
    float64 lat_std
    float64 lon_std
    float64 alt_std
    
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
    const resolved = new Gpgst(null);
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

    if (msg.utc !== undefined) {
      resolved.utc = msg.utc;
    }
    else {
      resolved.utc = 0.0
    }

    if (msg.rms !== undefined) {
      resolved.rms = msg.rms;
    }
    else {
      resolved.rms = 0.0
    }

    if (msg.smjr_std !== undefined) {
      resolved.smjr_std = msg.smjr_std;
    }
    else {
      resolved.smjr_std = 0.0
    }

    if (msg.smnr_std !== undefined) {
      resolved.smnr_std = msg.smnr_std;
    }
    else {
      resolved.smnr_std = 0.0
    }

    if (msg.orient !== undefined) {
      resolved.orient = msg.orient;
    }
    else {
      resolved.orient = 0.0
    }

    if (msg.lat_std !== undefined) {
      resolved.lat_std = msg.lat_std;
    }
    else {
      resolved.lat_std = 0.0
    }

    if (msg.lon_std !== undefined) {
      resolved.lon_std = msg.lon_std;
    }
    else {
      resolved.lon_std = 0.0
    }

    if (msg.alt_std !== undefined) {
      resolved.alt_std = msg.alt_std;
    }
    else {
      resolved.alt_std = 0.0
    }

    return resolved;
    }
};

module.exports = Gpgst;
