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

class CustomTopic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic_name = null;
      this.topic_hz = null;
      this.topic_color = null;
    }
    else {
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('topic_hz')) {
        this.topic_hz = initObj.topic_hz
      }
      else {
        this.topic_hz = 0.0;
      }
      if (initObj.hasOwnProperty('topic_color')) {
        this.topic_color = initObj.topic_color
      }
      else {
        this.topic_color = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomTopic
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [topic_hz]
    bufferOffset = _serializer.float32(obj.topic_hz, buffer, bufferOffset);
    // Serialize message field [topic_color]
    bufferOffset = _serializer.int16(obj.topic_color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomTopic
    let len;
    let data = new CustomTopic(null);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topic_hz]
    data.topic_hz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [topic_color]
    data.topic_color = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic_name);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/CustomTopic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb521c01a11f857100125253e2150a98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic_name
    float32 topic_hz
    int16 topic_color
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomTopic(null);
    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.topic_hz !== undefined) {
      resolved.topic_hz = msg.topic_hz;
    }
    else {
      resolved.topic_hz = 0.0
    }

    if (msg.topic_color !== undefined) {
      resolved.topic_color = msg.topic_color;
    }
    else {
      resolved.topic_color = 0
    }

    return resolved;
    }
};

module.exports = CustomTopic;
