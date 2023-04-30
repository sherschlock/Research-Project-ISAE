// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlannerTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.finish = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('finish')) {
        this.finish = initObj.finish
      }
      else {
        this.finish = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerTaskRequest
    // Check that the constant length array field [start] has the right length
    if (obj.start.length !== 4) {
      throw new Error('Unable to serialize array field start - length must be 4')
    }
    // Serialize message field [start]
    bufferOffset = _arraySerializer.float64(obj.start, buffer, bufferOffset, 4);
    // Check that the constant length array field [finish] has the right length
    if (obj.finish.length !== 4) {
      throw new Error('Unable to serialize array field finish - length must be 4')
    }
    // Serialize message field [finish]
    bufferOffset = _arraySerializer.float64(obj.finish, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerTaskRequest
    let len;
    let data = new PlannerTaskRequest(null);
    // Deserialize message field [start]
    data.start = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [finish]
    data.finish = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/PlannerTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc7a992ce57a87d85ab82f783318094d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[4] start
    float64[4] finish
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerTaskRequest(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = new Array(4).fill(0)
    }

    if (msg.finish !== undefined) {
      resolved.finish = msg.finish;
    }
    else {
      resolved.finish = new Array(4).fill(0)
    }

    return resolved;
    }
};

class PlannerTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerTaskResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerTaskResponse
    let len;
    let data = new PlannerTaskResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/PlannerTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerTaskResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PlannerTaskRequest,
  Response: PlannerTaskResponse,
  md5sum() { return '6dc53075a8451e1b38f8acc478452c9d'; },
  datatype() { return 'mrs_msgs/PlannerTask'; }
};
