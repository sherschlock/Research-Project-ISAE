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

class OusterInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.sn = null;
      this.fw_rev = null;
      this.mode = null;
      this.prod_line = null;
      this.beam_azimuth_angles = null;
      this.beam_altitude_angles = null;
      this.lidar_origin_to_beam_origin_mm = null;
      this.imu_to_sensor_transform = null;
      this.lidar_to_sensor_transform = null;
      this.extrinsic = null;
      this.pixels_per_column = null;
      this.columns_per_frame = null;
      this.pixel_shift_by_row = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('sn')) {
        this.sn = initObj.sn
      }
      else {
        this.sn = '';
      }
      if (initObj.hasOwnProperty('fw_rev')) {
        this.fw_rev = initObj.fw_rev
      }
      else {
        this.fw_rev = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('prod_line')) {
        this.prod_line = initObj.prod_line
      }
      else {
        this.prod_line = '';
      }
      if (initObj.hasOwnProperty('beam_azimuth_angles')) {
        this.beam_azimuth_angles = initObj.beam_azimuth_angles
      }
      else {
        this.beam_azimuth_angles = [];
      }
      if (initObj.hasOwnProperty('beam_altitude_angles')) {
        this.beam_altitude_angles = initObj.beam_altitude_angles
      }
      else {
        this.beam_altitude_angles = [];
      }
      if (initObj.hasOwnProperty('lidar_origin_to_beam_origin_mm')) {
        this.lidar_origin_to_beam_origin_mm = initObj.lidar_origin_to_beam_origin_mm
      }
      else {
        this.lidar_origin_to_beam_origin_mm = 0.0;
      }
      if (initObj.hasOwnProperty('imu_to_sensor_transform')) {
        this.imu_to_sensor_transform = initObj.imu_to_sensor_transform
      }
      else {
        this.imu_to_sensor_transform = [];
      }
      if (initObj.hasOwnProperty('lidar_to_sensor_transform')) {
        this.lidar_to_sensor_transform = initObj.lidar_to_sensor_transform
      }
      else {
        this.lidar_to_sensor_transform = [];
      }
      if (initObj.hasOwnProperty('extrinsic')) {
        this.extrinsic = initObj.extrinsic
      }
      else {
        this.extrinsic = [];
      }
      if (initObj.hasOwnProperty('pixels_per_column')) {
        this.pixels_per_column = initObj.pixels_per_column
      }
      else {
        this.pixels_per_column = 0;
      }
      if (initObj.hasOwnProperty('columns_per_frame')) {
        this.columns_per_frame = initObj.columns_per_frame
      }
      else {
        this.columns_per_frame = 0;
      }
      if (initObj.hasOwnProperty('pixel_shift_by_row')) {
        this.pixel_shift_by_row = initObj.pixel_shift_by_row
      }
      else {
        this.pixel_shift_by_row = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OusterInfo
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [sn]
    bufferOffset = _serializer.string(obj.sn, buffer, bufferOffset);
    // Serialize message field [fw_rev]
    bufferOffset = _serializer.string(obj.fw_rev, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [prod_line]
    bufferOffset = _serializer.string(obj.prod_line, buffer, bufferOffset);
    // Serialize message field [beam_azimuth_angles]
    bufferOffset = _arraySerializer.float64(obj.beam_azimuth_angles, buffer, bufferOffset, null);
    // Serialize message field [beam_altitude_angles]
    bufferOffset = _arraySerializer.float64(obj.beam_altitude_angles, buffer, bufferOffset, null);
    // Serialize message field [lidar_origin_to_beam_origin_mm]
    bufferOffset = _serializer.float64(obj.lidar_origin_to_beam_origin_mm, buffer, bufferOffset);
    // Serialize message field [imu_to_sensor_transform]
    bufferOffset = _arraySerializer.float64(obj.imu_to_sensor_transform, buffer, bufferOffset, null);
    // Serialize message field [lidar_to_sensor_transform]
    bufferOffset = _arraySerializer.float64(obj.lidar_to_sensor_transform, buffer, bufferOffset, null);
    // Serialize message field [extrinsic]
    bufferOffset = _arraySerializer.float64(obj.extrinsic, buffer, bufferOffset, null);
    // Serialize message field [pixels_per_column]
    bufferOffset = _serializer.uint32(obj.pixels_per_column, buffer, bufferOffset);
    // Serialize message field [columns_per_frame]
    bufferOffset = _serializer.uint32(obj.columns_per_frame, buffer, bufferOffset);
    // Serialize message field [pixel_shift_by_row]
    bufferOffset = _arraySerializer.int32(obj.pixel_shift_by_row, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OusterInfo
    let len;
    let data = new OusterInfo(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sn]
    data.sn = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fw_rev]
    data.fw_rev = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [prod_line]
    data.prod_line = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [beam_azimuth_angles]
    data.beam_azimuth_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [beam_altitude_angles]
    data.beam_altitude_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [lidar_origin_to_beam_origin_mm]
    data.lidar_origin_to_beam_origin_mm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [imu_to_sensor_transform]
    data.imu_to_sensor_transform = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [lidar_to_sensor_transform]
    data.lidar_to_sensor_transform = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [extrinsic]
    data.extrinsic = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pixels_per_column]
    data.pixels_per_column = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [columns_per_frame]
    data.columns_per_frame = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pixel_shift_by_row]
    data.pixel_shift_by_row = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.sn);
    length += _getByteLength(object.fw_rev);
    length += _getByteLength(object.mode);
    length += _getByteLength(object.prod_line);
    length += 8 * object.beam_azimuth_angles.length;
    length += 8 * object.beam_altitude_angles.length;
    length += 8 * object.imu_to_sensor_transform.length;
    length += 8 * object.lidar_to_sensor_transform.length;
    length += 8 * object.extrinsic.length;
    length += 4 * object.pixel_shift_by_row.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/OusterInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '452bbd97f95e92c61390ef448c12ce29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string sn
    string fw_rev
    string mode
    string prod_line
    float64[] beam_azimuth_angles
    float64[] beam_altitude_angles
    float64 lidar_origin_to_beam_origin_mm
    float64[] imu_to_sensor_transform
    float64[] lidar_to_sensor_transform
    float64[] extrinsic
    uint32 pixels_per_column
    uint32 columns_per_frame
    int32[] pixel_shift_by_row
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OusterInfo(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.sn !== undefined) {
      resolved.sn = msg.sn;
    }
    else {
      resolved.sn = ''
    }

    if (msg.fw_rev !== undefined) {
      resolved.fw_rev = msg.fw_rev;
    }
    else {
      resolved.fw_rev = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.prod_line !== undefined) {
      resolved.prod_line = msg.prod_line;
    }
    else {
      resolved.prod_line = ''
    }

    if (msg.beam_azimuth_angles !== undefined) {
      resolved.beam_azimuth_angles = msg.beam_azimuth_angles;
    }
    else {
      resolved.beam_azimuth_angles = []
    }

    if (msg.beam_altitude_angles !== undefined) {
      resolved.beam_altitude_angles = msg.beam_altitude_angles;
    }
    else {
      resolved.beam_altitude_angles = []
    }

    if (msg.lidar_origin_to_beam_origin_mm !== undefined) {
      resolved.lidar_origin_to_beam_origin_mm = msg.lidar_origin_to_beam_origin_mm;
    }
    else {
      resolved.lidar_origin_to_beam_origin_mm = 0.0
    }

    if (msg.imu_to_sensor_transform !== undefined) {
      resolved.imu_to_sensor_transform = msg.imu_to_sensor_transform;
    }
    else {
      resolved.imu_to_sensor_transform = []
    }

    if (msg.lidar_to_sensor_transform !== undefined) {
      resolved.lidar_to_sensor_transform = msg.lidar_to_sensor_transform;
    }
    else {
      resolved.lidar_to_sensor_transform = []
    }

    if (msg.extrinsic !== undefined) {
      resolved.extrinsic = msg.extrinsic;
    }
    else {
      resolved.extrinsic = []
    }

    if (msg.pixels_per_column !== undefined) {
      resolved.pixels_per_column = msg.pixels_per_column;
    }
    else {
      resolved.pixels_per_column = 0
    }

    if (msg.columns_per_frame !== undefined) {
      resolved.columns_per_frame = msg.columns_per_frame;
    }
    else {
      resolved.columns_per_frame = 0
    }

    if (msg.pixel_shift_by_row !== undefined) {
      resolved.pixel_shift_by_row = msg.pixel_shift_by_row;
    }
    else {
      resolved.pixel_shift_by_row = []
    }

    return resolved;
    }
};

module.exports = OusterInfo;
