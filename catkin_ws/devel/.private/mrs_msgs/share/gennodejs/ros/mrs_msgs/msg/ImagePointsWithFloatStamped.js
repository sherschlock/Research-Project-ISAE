// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2DWithFloat = require('./Point2DWithFloat.js');

//-----------------------------------------------------------

class ImagePointsWithFloatStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.image_height = null;
      this.image_width = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('image_height')) {
        this.image_height = initObj.image_height
      }
      else {
        this.image_height = 0;
      }
      if (initObj.hasOwnProperty('image_width')) {
        this.image_width = initObj.image_width
      }
      else {
        this.image_width = 0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImagePointsWithFloatStamped
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.uint32(obj.image_height, buffer, bufferOffset);
    // Serialize message field [image_width]
    bufferOffset = _serializer.uint32(obj.image_width, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Point2DWithFloat.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImagePointsWithFloatStamped
    let len;
    let data = new ImagePointsWithFloatStamped(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [image_width]
    data.image_width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Point2DWithFloat.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ImagePointsWithFloatStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f80394ba17236fe2f5a874f644ea3a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    uint32 image_height
    uint32 image_width
    mrs_msgs/Point2DWithFloat[] points
    
    ================================================================================
    MSG: mrs_msgs/Point2DWithFloat
    float64 x
    float64 y
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImagePointsWithFloatStamped(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.image_height !== undefined) {
      resolved.image_height = msg.image_height;
    }
    else {
      resolved.image_height = 0
    }

    if (msg.image_width !== undefined) {
      resolved.image_width = msg.image_width;
    }
    else {
      resolved.image_width = 0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Point2DWithFloat.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = ImagePointsWithFloatStamped;
