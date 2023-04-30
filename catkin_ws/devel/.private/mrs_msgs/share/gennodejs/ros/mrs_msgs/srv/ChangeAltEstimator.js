// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AltitudeType = require('../msg/AltitudeType.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeAltEstimatorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.estimator_type = null;
    }
    else {
      if (initObj.hasOwnProperty('estimator_type')) {
        this.estimator_type = initObj.estimator_type
      }
      else {
        this.estimator_type = new AltitudeType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeAltEstimatorRequest
    // Serialize message field [estimator_type]
    bufferOffset = AltitudeType.serialize(obj.estimator_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeAltEstimatorRequest
    let len;
    let data = new ChangeAltEstimatorRequest(null);
    // Deserialize message field [estimator_type]
    data.estimator_type = AltitudeType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AltitudeType.getMessageSize(object.estimator_type);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ChangeAltEstimatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5687da120c3e2907f1f997699b971de3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/AltitudeType estimator_type
    
    ================================================================================
    MSG: mrs_msgs/AltitudeType
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
    const resolved = new ChangeAltEstimatorRequest(null);
    if (msg.estimator_type !== undefined) {
      resolved.estimator_type = AltitudeType.Resolve(msg.estimator_type)
    }
    else {
      resolved.estimator_type = new AltitudeType()
    }

    return resolved;
    }
};

class ChangeAltEstimatorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.estimator_type = null;
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
      if (initObj.hasOwnProperty('estimator_type')) {
        this.estimator_type = initObj.estimator_type
      }
      else {
        this.estimator_type = new AltitudeType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeAltEstimatorResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [estimator_type]
    bufferOffset = AltitudeType.serialize(obj.estimator_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeAltEstimatorResponse
    let len;
    let data = new ChangeAltEstimatorResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [estimator_type]
    data.estimator_type = AltitudeType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += AltitudeType.getMessageSize(object.estimator_type);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ChangeAltEstimatorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a942aab46d3e4f0483dd2575ce2a95d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    mrs_msgs/AltitudeType estimator_type
    
    
    ================================================================================
    MSG: mrs_msgs/AltitudeType
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
    const resolved = new ChangeAltEstimatorResponse(null);
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

    if (msg.estimator_type !== undefined) {
      resolved.estimator_type = AltitudeType.Resolve(msg.estimator_type)
    }
    else {
      resolved.estimator_type = new AltitudeType()
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeAltEstimatorRequest,
  Response: ChangeAltEstimatorResponse,
  md5sum() { return 'd44d7ecd4f387249481ad597e7864694'; },
  datatype() { return 'mrs_msgs/ChangeAltEstimator'; }
};
