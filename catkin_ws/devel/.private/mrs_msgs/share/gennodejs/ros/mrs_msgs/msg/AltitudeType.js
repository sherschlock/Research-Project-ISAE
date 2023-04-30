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

class AltitudeType {
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
    // Serializes a message object of type AltitudeType
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AltitudeType
    let len;
    let data = new AltitudeType(null);
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
    return 'mrs_msgs/AltitudeType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9adbe83b4879467630ae7301e2b791a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 HEIGHT=0
    uint8 PLANE=1
    uint8 BRICK=2
    uint8 VIO=3
    uint8 ALOAM=4
    uint8 ALOAMGARM=5
    uint8 ALOAMREP=6
    uint8 BARO=7
    uint8 RTK=8
    uint8 LIOSAM=9
    
    uint8 TYPE_COUNT=10
    
    string name
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AltitudeType(null);
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
AltitudeType.Constants = {
  HEIGHT: 0,
  PLANE: 1,
  BRICK: 2,
  VIO: 3,
  ALOAM: 4,
  ALOAMGARM: 5,
  ALOAMREP: 6,
  BARO: 7,
  RTK: 8,
  LIOSAM: 9,
  TYPE_COUNT: 10,
}

module.exports = AltitudeType;
