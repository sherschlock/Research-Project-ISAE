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

class PclToolsDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.sensor_name = null;
      this.sensor_type = null;
      this.frequency = null;
      this.vfov = null;
      this.rows_before = null;
      this.cols_before = null;
      this.rows_after = null;
      this.cols_after = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('sensor_name')) {
        this.sensor_name = initObj.sensor_name
      }
      else {
        this.sensor_name = '';
      }
      if (initObj.hasOwnProperty('sensor_type')) {
        this.sensor_type = initObj.sensor_type
      }
      else {
        this.sensor_type = 0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('vfov')) {
        this.vfov = initObj.vfov
      }
      else {
        this.vfov = 0.0;
      }
      if (initObj.hasOwnProperty('rows_before')) {
        this.rows_before = initObj.rows_before
      }
      else {
        this.rows_before = 0;
      }
      if (initObj.hasOwnProperty('cols_before')) {
        this.cols_before = initObj.cols_before
      }
      else {
        this.cols_before = 0;
      }
      if (initObj.hasOwnProperty('rows_after')) {
        this.rows_after = initObj.rows_after
      }
      else {
        this.rows_after = 0;
      }
      if (initObj.hasOwnProperty('cols_after')) {
        this.cols_after = initObj.cols_after
      }
      else {
        this.cols_after = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PclToolsDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [sensor_name]
    bufferOffset = _serializer.string(obj.sensor_name, buffer, bufferOffset);
    // Serialize message field [sensor_type]
    bufferOffset = _serializer.uint8(obj.sensor_type, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.float32(obj.frequency, buffer, bufferOffset);
    // Serialize message field [vfov]
    bufferOffset = _serializer.float32(obj.vfov, buffer, bufferOffset);
    // Serialize message field [rows_before]
    bufferOffset = _serializer.uint16(obj.rows_before, buffer, bufferOffset);
    // Serialize message field [cols_before]
    bufferOffset = _serializer.uint16(obj.cols_before, buffer, bufferOffset);
    // Serialize message field [rows_after]
    bufferOffset = _serializer.uint16(obj.rows_after, buffer, bufferOffset);
    // Serialize message field [cols_after]
    bufferOffset = _serializer.uint16(obj.cols_after, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PclToolsDiagnostics
    let len;
    let data = new PclToolsDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [sensor_name]
    data.sensor_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_type]
    data.sensor_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vfov]
    data.vfov = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rows_before]
    data.rows_before = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cols_before]
    data.cols_before = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rows_after]
    data.rows_after = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cols_after]
    data.cols_after = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sensor_name);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/PclToolsDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19326053c1e1dd1a3b03d52e3eeb957e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time   stamp
    string sensor_name
    uint8  sensor_type
    
    float32 frequency   # [Hz]
    float32 vfov        # [deg]
    uint16  rows_before # height of input data
    uint16  cols_before # width of input data
    uint16  rows_after  # height of output data
    uint16  cols_after  # width of output data
    
    # Sensor type
    int8 SENSOR_TYPE_NONE=-1
    int8 SENSOR_TYPE_LIDAR_3D=0
    int8 SENSOR_TYPE_DEPTH_CAMERA=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PclToolsDiagnostics(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.sensor_name !== undefined) {
      resolved.sensor_name = msg.sensor_name;
    }
    else {
      resolved.sensor_name = ''
    }

    if (msg.sensor_type !== undefined) {
      resolved.sensor_type = msg.sensor_type;
    }
    else {
      resolved.sensor_type = 0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.vfov !== undefined) {
      resolved.vfov = msg.vfov;
    }
    else {
      resolved.vfov = 0.0
    }

    if (msg.rows_before !== undefined) {
      resolved.rows_before = msg.rows_before;
    }
    else {
      resolved.rows_before = 0
    }

    if (msg.cols_before !== undefined) {
      resolved.cols_before = msg.cols_before;
    }
    else {
      resolved.cols_before = 0
    }

    if (msg.rows_after !== undefined) {
      resolved.rows_after = msg.rows_after;
    }
    else {
      resolved.rows_after = 0
    }

    if (msg.cols_after !== undefined) {
      resolved.cols_after = msg.cols_after;
    }
    else {
      resolved.cols_after = 0
    }

    return resolved;
    }
};

// Constants for message
PclToolsDiagnostics.Constants = {
  SENSOR_TYPE_NONE: -1,
  SENSOR_TYPE_LIDAR_3D: 0,
  SENSOR_TYPE_DEPTH_CAMERA: 1,
}

module.exports = PclToolsDiagnostics;
