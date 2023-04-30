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

class RtkFixType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fix_type = null;
    }
    else {
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RtkFixType
    // Serialize message field [fix_type]
    bufferOffset = _serializer.uint8(obj.fix_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RtkFixType
    let len;
    let data = new RtkFixType(null);
    // Deserialize message field [fix_type]
    data.fix_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/RtkFixType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3323b0cae49ed181a81a1139b0a61ca7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RTK_FIX=5
    uint8 RTK_FLOAT=4
    uint8 UNKNOWN=3
    uint8 DGPS=2
    uint8 SPS=1
    uint8 NO_FIX=0
    uint8 fix_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RtkFixType(null);
    if (msg.fix_type !== undefined) {
      resolved.fix_type = msg.fix_type;
    }
    else {
      resolved.fix_type = 0
    }

    return resolved;
    }
};

// Constants for message
RtkFixType.Constants = {
  RTK_FIX: 5,
  RTK_FLOAT: 4,
  UNKNOWN: 3,
  DGPS: 2,
  SPS: 1,
  NO_FIX: 0,
}

module.exports = RtkFixType;
