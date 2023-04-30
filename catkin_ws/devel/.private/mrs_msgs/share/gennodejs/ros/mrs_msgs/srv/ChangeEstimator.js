// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EstimatorType = require('../msg/EstimatorType.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeEstimatorRequest {
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
        this.estimator_type = new EstimatorType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeEstimatorRequest
    // Serialize message field [estimator_type]
    bufferOffset = EstimatorType.serialize(obj.estimator_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeEstimatorRequest
    let len;
    let data = new ChangeEstimatorRequest(null);
    // Deserialize message field [estimator_type]
    data.estimator_type = EstimatorType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EstimatorType.getMessageSize(object.estimator_type);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ChangeEstimatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3d0fc635555213704e756799d8b5e99';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/EstimatorType estimator_type
    
    ================================================================================
    MSG: mrs_msgs/EstimatorType
    uint8 OPTFLOW=0
    uint8 GPS=1
    uint8 OPTFLOWGPS=2
    uint8 RTK=3
    uint8 VIO=4
    uint8 BRICK=5
    uint8 T265=6
    uint8 HECTOR=7
    uint8 BRICKFLOW=8
    uint8 VSLAM=9
    uint8 ICP=10
    uint8 ALOAM=11
    uint8 ALOAMGARM=12
    uint8 ALOAMREP=13
    uint8 LIOSAM=14
    uint8 UWB=15
    
    uint8 TYPE_COUNT=16
    
    string name
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeEstimatorRequest(null);
    if (msg.estimator_type !== undefined) {
      resolved.estimator_type = EstimatorType.Resolve(msg.estimator_type)
    }
    else {
      resolved.estimator_type = new EstimatorType()
    }

    return resolved;
    }
};

class ChangeEstimatorResponse {
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
        this.estimator_type = new EstimatorType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeEstimatorResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [estimator_type]
    bufferOffset = EstimatorType.serialize(obj.estimator_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeEstimatorResponse
    let len;
    let data = new ChangeEstimatorResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [estimator_type]
    data.estimator_type = EstimatorType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += EstimatorType.getMessageSize(object.estimator_type);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ChangeEstimatorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0104fc1da48f78bdf469d4d408f8817';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    mrs_msgs/EstimatorType estimator_type
    
    
    ================================================================================
    MSG: mrs_msgs/EstimatorType
    uint8 OPTFLOW=0
    uint8 GPS=1
    uint8 OPTFLOWGPS=2
    uint8 RTK=3
    uint8 VIO=4
    uint8 BRICK=5
    uint8 T265=6
    uint8 HECTOR=7
    uint8 BRICKFLOW=8
    uint8 VSLAM=9
    uint8 ICP=10
    uint8 ALOAM=11
    uint8 ALOAMGARM=12
    uint8 ALOAMREP=13
    uint8 LIOSAM=14
    uint8 UWB=15
    
    uint8 TYPE_COUNT=16
    
    string name
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeEstimatorResponse(null);
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
      resolved.estimator_type = EstimatorType.Resolve(msg.estimator_type)
    }
    else {
      resolved.estimator_type = new EstimatorType()
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeEstimatorRequest,
  Response: ChangeEstimatorResponse,
  md5sum() { return '6a9b653bad05a218abe443442564de9a'; },
  datatype() { return 'mrs_msgs/ChangeEstimator'; }
};
