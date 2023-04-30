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

class SxdMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.num_detections = null;
      this.channels = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('num_detections')) {
        this.num_detections = initObj.num_detections
      }
      else {
        this.num_detections = 0;
      }
      if (initObj.hasOwnProperty('channels')) {
        this.channels = initObj.channels
      }
      else {
        this.channels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SxdMeasurement
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [num_detections]
    bufferOffset = _serializer.uint64(obj.num_detections, buffer, bufferOffset);
    // Serialize message field [channels]
    bufferOffset = _arraySerializer.uint16(obj.channels, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SxdMeasurement
    let len;
    let data = new SxdMeasurement(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [num_detections]
    data.num_detections = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [channels]
    data.channels = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.channels.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/SxdMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3681e09d68c65aecf27dd6cc2533d0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    uint64 num_detections
    uint16[] channels
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SxdMeasurement(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.num_detections !== undefined) {
      resolved.num_detections = msg.num_detections;
    }
    else {
      resolved.num_detections = 0
    }

    if (msg.channels !== undefined) {
      resolved.channels = msg.channels;
    }
    else {
      resolved.channels = []
    }

    return resolved;
    }
};

module.exports = SxdMeasurement;
