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

class GPSFix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.num_satellites_used_in_solution = null;
      this.num_satellites_tracked = null;
      this.status = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.track = null;
      this.speed = null;
      this.time = null;
      this.hdop = null;
      this.position_covariance = null;
      this.position_covariance_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('num_satellites_used_in_solution')) {
        this.num_satellites_used_in_solution = initObj.num_satellites_used_in_solution
      }
      else {
        this.num_satellites_used_in_solution = 0;
      }
      if (initObj.hasOwnProperty('num_satellites_tracked')) {
        this.num_satellites_tracked = initObj.num_satellites_tracked
      }
      else {
        this.num_satellites_tracked = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new GpsStatus();
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
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('position_covariance')) {
        this.position_covariance = initObj.position_covariance
      }
      else {
        this.position_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('position_covariance_type')) {
        this.position_covariance_type = initObj.position_covariance_type
      }
      else {
        this.position_covariance_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSFix
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [num_satellites_used_in_solution]
    bufferOffset = _serializer.uint8(obj.num_satellites_used_in_solution, buffer, bufferOffset);
    // Serialize message field [num_satellites_tracked]
    bufferOffset = _serializer.uint8(obj.num_satellites_tracked, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = GpsStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float32(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [track]
    bufferOffset = _serializer.float64(obj.track, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float32(obj.hdop, buffer, bufferOffset);
    // Check that the constant length array field [position_covariance] has the right length
    if (obj.position_covariance.length !== 9) {
      throw new Error('Unable to serialize array field position_covariance - length must be 9')
    }
    // Serialize message field [position_covariance]
    bufferOffset = _arraySerializer.float64(obj.position_covariance, buffer, bufferOffset, 9);
    // Serialize message field [position_covariance_type]
    bufferOffset = _serializer.uint8(obj.position_covariance_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSFix
    let len;
    let data = new GPSFix(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_satellites_used_in_solution]
    data.num_satellites_used_in_solution = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_satellites_tracked]
    data.num_satellites_tracked = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = GpsStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track]
    data.track = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_covariance]
    data.position_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [position_covariance_type]
    data.position_covariance_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 127;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/GPSFix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd06547699b65b25dfcdf16f98e57651';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A more complete GPS fix to supplement sensor_msgs/NavSatFix.
    # modified version of http://docs.ros.org/kinetic/api/gps_common/html/msg/GPSFix.html
    Header header
    
    # Satellites used in solution
    uint8 num_satellites_used_in_solution # Number of satellites
    
    # Satellites visible
    uint8 num_satellites_tracked
    
    # Measurement status
    GpsStatus status
    
    # Latitude (degrees). Positive is north of equator; negative is south.
    float64 latitude
    
    # Longitude (degrees). Positive is east of prime meridian, negative west.
    float32 longitude
    
    # Altitude (meters). Positive is above reference (e.g., sea level).
    float64 altitude
    
    # Direction (degrees from north)
    float64 track
    
    # Ground speed (meters/second)
    float64 speed
    
    # GPS time
    float64 time
    
    ## Dilution of precision; Xdop<=0 means the value is unknown
    
    # Horizontal dilution of precision
    float32 hdop
    
    ## Uncertainty of measurement, 95% confidence
    
    # Position covariance [m^2] defined relative to a tangential plane
    # through the reported position. The components are East, North, and
    # Up (ENU), in row-major order.
    
    float64[9] position_covariance
    
    uint8 COVARIANCE_TYPE_UNKNOWN = 0
    uint8 COVARIANCE_TYPE_APPROXIMATED = 1
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    uint8 COVARIANCE_TYPE_KNOWN = 3
    uint8 position_covariance_type
    
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
    const resolved = new GPSFix(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.num_satellites_used_in_solution !== undefined) {
      resolved.num_satellites_used_in_solution = msg.num_satellites_used_in_solution;
    }
    else {
      resolved.num_satellites_used_in_solution = 0
    }

    if (msg.num_satellites_tracked !== undefined) {
      resolved.num_satellites_tracked = msg.num_satellites_tracked;
    }
    else {
      resolved.num_satellites_tracked = 0
    }

    if (msg.status !== undefined) {
      resolved.status = GpsStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new GpsStatus()
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

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.track !== undefined) {
      resolved.track = msg.track;
    }
    else {
      resolved.track = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.position_covariance !== undefined) {
      resolved.position_covariance = msg.position_covariance;
    }
    else {
      resolved.position_covariance = new Array(9).fill(0)
    }

    if (msg.position_covariance_type !== undefined) {
      resolved.position_covariance_type = msg.position_covariance_type;
    }
    else {
      resolved.position_covariance_type = 0
    }

    return resolved;
    }
};

// Constants for message
GPSFix.Constants = {
  COVARIANCE_TYPE_UNKNOWN: 0,
  COVARIANCE_TYPE_APPROXIMATED: 1,
  COVARIANCE_TYPE_DIAGONAL_KNOWN: 2,
  COVARIANCE_TYPE_KNOWN: 3,
}

module.exports = GPSFix;
