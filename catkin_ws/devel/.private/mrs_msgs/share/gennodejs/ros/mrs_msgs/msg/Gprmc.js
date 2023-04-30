// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GpsStatus = require('./GpsStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Gprmc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.message_id = null;
      this.utc_seconds = null;
      this.position_status = null;
      this.latitude = null;
      this.longitude = null;
      this.latitude_dir = null;
      this.longitude_dir = null;
      this.speed = null;
      this.track = null;
      this.date = null;
      this.mag_var = null;
      this.mag_var_direction = null;
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
      if (initObj.hasOwnProperty('utc_seconds')) {
        this.utc_seconds = initObj.utc_seconds
      }
      else {
        this.utc_seconds = 0.0;
      }
      if (initObj.hasOwnProperty('position_status')) {
        this.position_status = initObj.position_status
      }
      else {
        this.position_status = new GpsStatus();
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude_dir')) {
        this.latitude_dir = initObj.latitude_dir
      }
      else {
        this.latitude_dir = '';
      }
      if (initObj.hasOwnProperty('longitude_dir')) {
        this.longitude_dir = initObj.longitude_dir
      }
      else {
        this.longitude_dir = '';
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = 0.0;
      }
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = '';
      }
      if (initObj.hasOwnProperty('mag_var')) {
        this.mag_var = initObj.mag_var
      }
      else {
        this.mag_var = 0.0;
      }
      if (initObj.hasOwnProperty('mag_var_direction')) {
        this.mag_var_direction = initObj.mag_var_direction
      }
      else {
        this.mag_var_direction = '';
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
    // Serializes a message object of type Gprmc
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.string(obj.message_id, buffer, bufferOffset);
    // Serialize message field [utc_seconds]
    bufferOffset = _serializer.float64(obj.utc_seconds, buffer, bufferOffset);
    // Serialize message field [position_status]
    bufferOffset = GpsStatus.serialize(obj.position_status, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude_dir]
    bufferOffset = _serializer.string(obj.latitude_dir, buffer, bufferOffset);
    // Serialize message field [longitude_dir]
    bufferOffset = _serializer.string(obj.longitude_dir, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [track]
    bufferOffset = _serializer.float32(obj.track, buffer, bufferOffset);
    // Serialize message field [date]
    bufferOffset = _serializer.string(obj.date, buffer, bufferOffset);
    // Serialize message field [mag_var]
    bufferOffset = _serializer.float32(obj.mag_var, buffer, bufferOffset);
    // Serialize message field [mag_var_direction]
    bufferOffset = _serializer.string(obj.mag_var_direction, buffer, bufferOffset);
    // Serialize message field [mode_indicator]
    bufferOffset = _serializer.string(obj.mode_indicator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gprmc
    let len;
    let data = new Gprmc(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [utc_seconds]
    data.utc_seconds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_status]
    data.position_status = GpsStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_dir]
    data.latitude_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [longitude_dir]
    data.longitude_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track]
    data.track = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [date]
    data.date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mag_var]
    data.mag_var = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mag_var_direction]
    data.mag_var_direction = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode_indicator]
    data.mode_indicator = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.message_id);
    length += _getByteLength(object.latitude_dir);
    length += _getByteLength(object.longitude_dir);
    length += _getByteLength(object.date);
    length += _getByteLength(object.mag_var_direction);
    length += _getByteLength(object.mode_indicator);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Gprmc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '141c762d606ff599c6f6b036906b68bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message from GPRMC NMEA String
    Header header
    
    string message_id
    
    float64 utc_seconds
    GpsStatus position_status
    
    float64 latitude
    float64 longitude
    
    string latitude_dir
    string longitude_dir
    
    float32 speed  # in metres per second
    float32 track
    string date
    float32 mag_var
    string mag_var_direction
    
    string mode_indicator
    string MODE_INDICATIOR_AUTONOMOUS=A
    string MODE_INDICATIOR_DIFFERENTIAL=D
    string MODE_INDICATIOR_ESTIMATED=E
    string MODE_INDICATIOR_MANUAL=M
    string MODE_INDICATIOR_DATA_NOT_VALID=N
    
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
    
    ================================================================================
    MSG: mrs_msgs/GpsStatus
    uint32 quality
    uint32 GPS_QUALITY_NO_FIX=0
    uint32 GPS_QUALITY_SIGLE_POINT=1
    uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2
    uint32 GPS_QUALITY_RTK_FIX=4
    uint32 GPS_QUALITY_RTK_FLOAT=5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gprmc(null);
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

    if (msg.utc_seconds !== undefined) {
      resolved.utc_seconds = msg.utc_seconds;
    }
    else {
      resolved.utc_seconds = 0.0
    }

    if (msg.position_status !== undefined) {
      resolved.position_status = GpsStatus.Resolve(msg.position_status)
    }
    else {
      resolved.position_status = new GpsStatus()
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude_dir !== undefined) {
      resolved.latitude_dir = msg.latitude_dir;
    }
    else {
      resolved.latitude_dir = ''
    }

    if (msg.longitude_dir !== undefined) {
      resolved.longitude_dir = msg.longitude_dir;
    }
    else {
      resolved.longitude_dir = ''
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.track !== undefined) {
      resolved.track = msg.track;
    }
    else {
      resolved.track = 0.0
    }

    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = ''
    }

    if (msg.mag_var !== undefined) {
      resolved.mag_var = msg.mag_var;
    }
    else {
      resolved.mag_var = 0.0
    }

    if (msg.mag_var_direction !== undefined) {
      resolved.mag_var_direction = msg.mag_var_direction;
    }
    else {
      resolved.mag_var_direction = ''
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

// Constants for message
Gprmc.Constants = {
  MODE_INDICATIOR_AUTONOMOUS: 'A',
  MODE_INDICATIOR_DIFFERENTIAL: 'D',
  MODE_INDICATIOR_ESTIMATED: 'E',
  MODE_INDICATIOR_MANUAL: 'M',
  MODE_INDICATIOR_DATA_NOT_VALID: 'N',
}

module.exports = Gprmc;
