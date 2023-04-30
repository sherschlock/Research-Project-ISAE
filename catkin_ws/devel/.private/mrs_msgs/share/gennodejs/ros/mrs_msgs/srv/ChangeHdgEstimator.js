// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HeadingType = require('../msg/HeadingType.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeHdgEstimatorRequest {
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
        this.estimator_type = new HeadingType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeHdgEstimatorRequest
    // Serialize message field [estimator_type]
    bufferOffset = HeadingType.serialize(obj.estimator_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeHdgEstimatorRequest
    let len;
    let data = new ChangeHdgEstimatorRequest(null);
    // Deserialize message field [estimator_type]
    data.estimator_type = HeadingType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += HeadingType.getMessageSize(object.estimator_type);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ChangeHdgEstimatorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf627e7d643f627937770174d86844fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/HeadingType estimator_type
    
    ================================================================================
    MSG: mrs_msgs/HeadingType
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
    const resolved = new ChangeHdgEstimatorRequest(null);
    if (msg.estimator_type !== undefined) {
      resolved.estimator_type = HeadingType.Resolve(msg.estimator_type)
    }
    else {
      resolved.estimator_type = new HeadingType()
    }

    return resolved;
    }
};

class ChangeHdgEstimatorResponse {
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
        this.estimator_type = new HeadingType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeHdgEstimatorResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [estimator_type]
    bufferOffset = HeadingType.serialize(obj.estimator_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeHdgEstimatorResponse
    let len;
    let data = new ChangeHdgEstimatorResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [estimator_type]
    data.estimator_type = HeadingType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += HeadingType.getMessageSize(object.estimator_type);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ChangeHdgEstimatorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4056afb672e230aa2ebd138745c5a5a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    mrs_msgs/HeadingType estimator_type
    
    
    ================================================================================
    MSG: mrs_msgs/HeadingType
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
    const resolved = new ChangeHdgEstimatorResponse(null);
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
      resolved.estimator_type = HeadingType.Resolve(msg.estimator_type)
    }
    else {
      resolved.estimator_type = new HeadingType()
    }

    return resolved;
    }
};

module.exports = {
  Request: ChangeHdgEstimatorRequest,
  Response: ChangeHdgEstimatorResponse,
  md5sum() { return '96e3923e6e8cb71c18fdec0035178d67'; },
  datatype() { return 'mrs_msgs/ChangeHdgEstimator'; }
};
