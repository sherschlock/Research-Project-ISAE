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

class Gpgga {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.message_id = null;
      this.utc_seconds = null;
      this.latitude = null;
      this.longitude = null;
      this.latitude_dir = null;
      this.longitude_dir = null;
      this.gps_quality = null;
      this.num_sats = null;
      this.hdop = null;
      this.altitude = null;
      this.altitude_units = null;
      this.undulation = null;
      this.undulation_units = null;
      this.diff_age = null;
      this.station_id = null;
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
      if (initObj.hasOwnProperty('gps_quality')) {
        this.gps_quality = initObj.gps_quality
      }
      else {
        this.gps_quality = new GpsStatus();
      }
      if (initObj.hasOwnProperty('num_sats')) {
        this.num_sats = initObj.num_sats
      }
      else {
        this.num_sats = 0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_units')) {
        this.altitude_units = initObj.altitude_units
      }
      else {
        this.altitude_units = '';
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('undulation_units')) {
        this.undulation_units = initObj.undulation_units
      }
      else {
        this.undulation_units = '';
      }
      if (initObj.hasOwnProperty('diff_age')) {
        this.diff_age = initObj.diff_age
      }
      else {
        this.diff_age = 0;
      }
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gpgga
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.string(obj.message_id, buffer, bufferOffset);
    // Serialize message field [utc_seconds]
    bufferOffset = _serializer.float64(obj.utc_seconds, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude_dir]
    bufferOffset = _serializer.string(obj.latitude_dir, buffer, bufferOffset);
    // Serialize message field [longitude_dir]
    bufferOffset = _serializer.string(obj.longitude_dir, buffer, bufferOffset);
    // Serialize message field [gps_quality]
    bufferOffset = GpsStatus.serialize(obj.gps_quality, buffer, bufferOffset);
    // Serialize message field [num_sats]
    bufferOffset = _serializer.uint32(obj.num_sats, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float32(obj.hdop, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float32(obj.altitude, buffer, bufferOffset);
    // Serialize message field [altitude_units]
    bufferOffset = _serializer.string(obj.altitude_units, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float32(obj.undulation, buffer, bufferOffset);
    // Serialize message field [undulation_units]
    bufferOffset = _serializer.string(obj.undulation_units, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.uint32(obj.diff_age, buffer, bufferOffset);
    // Serialize message field [station_id]
    bufferOffset = _serializer.string(obj.station_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gpgga
    let len;
    let data = new Gpgga(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [utc_seconds]
    data.utc_seconds = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_dir]
    data.latitude_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [longitude_dir]
    data.longitude_dir = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_quality]
    data.gps_quality = GpsStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_sats]
    data.num_sats = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude_units]
    data.altitude_units = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [undulation_units]
    data.undulation_units = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.message_id);
    length += _getByteLength(object.latitude_dir);
    length += _getByteLength(object.longitude_dir);
    length += _getByteLength(object.altitude_units);
    length += _getByteLength(object.undulation_units);
    length += _getByteLength(object.station_id);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Gpgga';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60c1dbabb1ff7bc913853a9cc2abcc73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message from GPGGA NMEA String
    Header header
    
    string message_id
    
    # UTC seconds from midnight
    float64 utc_seconds
    
    float64 latitude
    float64 longitude
    
    string latitude_dir
    string longitude_dir
    
    GpsStatus gps_quality
    
    uint32 num_sats
    float32 hdop 
    float32 altitude
    string altitude_units
    
    float32 undulation
    string undulation_units
    uint32 diff_age
    string station_id
    
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
    const resolved = new Gpgga(null);
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

    if (msg.gps_quality !== undefined) {
      resolved.gps_quality = GpsStatus.Resolve(msg.gps_quality)
    }
    else {
      resolved.gps_quality = new GpsStatus()
    }

    if (msg.num_sats !== undefined) {
      resolved.num_sats = msg.num_sats;
    }
    else {
      resolved.num_sats = 0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.altitude_units !== undefined) {
      resolved.altitude_units = msg.altitude_units;
    }
    else {
      resolved.altitude_units = ''
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.undulation_units !== undefined) {
      resolved.undulation_units = msg.undulation_units;
    }
    else {
      resolved.undulation_units = ''
    }

    if (msg.diff_age !== undefined) {
      resolved.diff_age = msg.diff_age;
    }
    else {
      resolved.diff_age = 0
    }

    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = ''
    }

    return resolved;
    }
};

module.exports = Gpgga;
