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

class GpsStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quality = null;
    }
    else {
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsStatus
    // Serialize message field [quality]
    bufferOffset = _serializer.uint32(obj.quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsStatus
    let len;
    let data = new GpsStatus(null);
    // Deserialize message field [quality]
    data.quality = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/GpsStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '636d1c2a6683d74dcd1bd4a78682ded9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GpsStatus(null);
    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    return resolved;
    }
};

// Constants for message
GpsStatus.Constants = {
  GPS_QUALITY_NO_FIX: 0,
  GPS_QUALITY_SIGLE_POINT: 1,
  GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL: 2,
  GPS_QUALITY_RTK_FIX: 4,
  GPS_QUALITY_RTK_FLOAT: 5,
}

module.exports = GpsStatus;
