// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModelState = require('./ModelState.js');

//-----------------------------------------------------------

class Fusing {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_state = null;
      this.is_fusing = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('model_state')) {
        this.model_state = initObj.model_state
      }
      else {
        this.model_state = new ModelState();
      }
      if (initObj.hasOwnProperty('is_fusing')) {
        this.is_fusing = initObj.is_fusing
      }
      else {
        this.is_fusing = false;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Fusing
    // Serialize message field [model_state]
    bufferOffset = ModelState.serialize(obj.model_state, buffer, bufferOffset);
    // Serialize message field [is_fusing]
    bufferOffset = _serializer.bool(obj.is_fusing, buffer, bufferOffset);
    // Serialize message field [covariance]
    bufferOffset = _serializer.float64(obj.covariance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Fusing
    let len;
    let data = new Fusing(null);
    // Deserialize message field [model_state]
    data.model_state = ModelState.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_fusing]
    data.is_fusing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Fusing';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '140fb768711cb5688a03db600c114f3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/ModelState model_state
    bool is_fusing
    float64 covariance
    
    ================================================================================
    MSG: mrs_msgs/ModelState
    uint8 TILT=5
    uint8 ACCELERATION=3
    uint8 VELOCITY=1
    uint8 POSITION=0
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Fusing(null);
    if (msg.model_state !== undefined) {
      resolved.model_state = ModelState.Resolve(msg.model_state)
    }
    else {
      resolved.model_state = new ModelState()
    }

    if (msg.is_fusing !== undefined) {
      resolved.is_fusing = msg.is_fusing;
    }
    else {
      resolved.is_fusing = false
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = 0.0
    }

    return resolved;
    }
};

module.exports = Fusing;
