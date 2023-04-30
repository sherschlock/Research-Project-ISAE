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

class UavManagerDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.uav_name = null;
      this.home_latitude = null;
      this.home_longitude = null;
      this.cur_latitude = null;
      this.cur_longitude = null;
      this.flight_time = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('uav_name')) {
        this.uav_name = initObj.uav_name
      }
      else {
        this.uav_name = '';
      }
      if (initObj.hasOwnProperty('home_latitude')) {
        this.home_latitude = initObj.home_latitude
      }
      else {
        this.home_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('home_longitude')) {
        this.home_longitude = initObj.home_longitude
      }
      else {
        this.home_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('cur_latitude')) {
        this.cur_latitude = initObj.cur_latitude
      }
      else {
        this.cur_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('cur_longitude')) {
        this.cur_longitude = initObj.cur_longitude
      }
      else {
        this.cur_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('flight_time')) {
        this.flight_time = initObj.flight_time
      }
      else {
        this.flight_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UavManagerDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [uav_name]
    bufferOffset = _serializer.string(obj.uav_name, buffer, bufferOffset);
    // Serialize message field [home_latitude]
    bufferOffset = _serializer.float64(obj.home_latitude, buffer, bufferOffset);
    // Serialize message field [home_longitude]
    bufferOffset = _serializer.float64(obj.home_longitude, buffer, bufferOffset);
    // Serialize message field [cur_latitude]
    bufferOffset = _serializer.float64(obj.cur_latitude, buffer, bufferOffset);
    // Serialize message field [cur_longitude]
    bufferOffset = _serializer.float64(obj.cur_longitude, buffer, bufferOffset);
    // Serialize message field [flight_time]
    bufferOffset = _serializer.float64(obj.flight_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UavManagerDiagnostics
    let len;
    let data = new UavManagerDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [uav_name]
    data.uav_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [home_latitude]
    data.home_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [home_longitude]
    data.home_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_latitude]
    data.cur_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_longitude]
    data.cur_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flight_time]
    data.flight_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uav_name);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/UavManagerDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36596a45f051bddf37b9b0dd00de0c80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This reports on the state of the UavManager
    
    time stamp
    
    string uav_name
    
    # home position latitude and longitude, if available
    float64 home_latitude
    float64 home_longitude
    
    # current latitude and longitude, if available
    float64 cur_latitude
    float64 cur_longitude
    
    float64 flight_time # [s]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UavManagerDiagnostics(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.uav_name !== undefined) {
      resolved.uav_name = msg.uav_name;
    }
    else {
      resolved.uav_name = ''
    }

    if (msg.home_latitude !== undefined) {
      resolved.home_latitude = msg.home_latitude;
    }
    else {
      resolved.home_latitude = 0.0
    }

    if (msg.home_longitude !== undefined) {
      resolved.home_longitude = msg.home_longitude;
    }
    else {
      resolved.home_longitude = 0.0
    }

    if (msg.cur_latitude !== undefined) {
      resolved.cur_latitude = msg.cur_latitude;
    }
    else {
      resolved.cur_latitude = 0.0
    }

    if (msg.cur_longitude !== undefined) {
      resolved.cur_longitude = msg.cur_longitude;
    }
    else {
      resolved.cur_longitude = 0.0
    }

    if (msg.flight_time !== undefined) {
      resolved.flight_time = msg.flight_time;
    }
    else {
      resolved.flight_time = 0.0
    }

    return resolved;
    }
};

module.exports = UavManagerDiagnostics;
