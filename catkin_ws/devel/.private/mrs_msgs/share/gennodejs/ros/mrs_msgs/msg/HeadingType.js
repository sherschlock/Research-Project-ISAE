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

class HeadingType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadingType
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadingType
    let len;
    let data = new HeadingType(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/HeadingType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4575f57d7ab2d67fda5521732eca4e89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PIXHAWK=0
    uint8 GYRO=1
    uint8 COMPASS=2
    uint8 OPTFLOW=3
    uint8 HECTOR=4
    uint8 BRICK=5
    uint8 VIO=6
    uint8 VSLAM=7
    uint8 ICP=8
    uint8 BRICKFLOW=9
    uint8 ALOAM=10
    uint8 ALOAMREP=11
    uint8 LIOSAM=12
    
    uint8 TYPE_COUNT=13
    
    string name
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeadingType(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
HeadingType.Constants = {
  PIXHAWK: 0,
  GYRO: 1,
  COMPASS: 2,
  OPTFLOW: 3,
  HECTOR: 4,
  BRICK: 5,
  VIO: 6,
  VSLAM: 7,
  ICP: 8,
  BRICKFLOW: 9,
  ALOAM: 10,
  ALOAMREP: 11,
  LIOSAM: 12,
  TYPE_COUNT: 13,
}

module.exports = HeadingType;
