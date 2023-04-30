// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VelocityReference = require('../msg/VelocityReference.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class VelocityReferenceSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reference = null;
    }
    else {
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = new VelocityReference();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocityReferenceSrvRequest
    // Serialize message field [reference]
    bufferOffset = VelocityReference.serialize(obj.reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityReferenceSrvRequest
    let len;
    let data = new VelocityReferenceSrvRequest(null);
    // Deserialize message field [reference]
    data.reference = VelocityReference.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/VelocityReferenceSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5bc0a64824b83305b7328853e63ee04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/VelocityReference reference
    
    ================================================================================
    MSG: mrs_msgs/VelocityReference
    # desired velocity [m/s]
    geometry_msgs/Vector3 velocity
    
    # altitude
    float64 altitude
    
    # desired heading and its rate, optional
    # heading is "the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front"
    float64 heading
    float64 heading_rate
    
    # overrides vertical velocity
    bool use_altitude
    
    bool use_heading
    
    # overrides heading
    bool use_heading_rate
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelocityReferenceSrvRequest(null);
    if (msg.reference !== undefined) {
      resolved.reference = VelocityReference.Resolve(msg.reference)
    }
    else {
      resolved.reference = new VelocityReference()
    }

    return resolved;
    }
};

class VelocityReferenceSrvResponse {
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
    // Serializes a message object of type VelocityReferenceSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityReferenceSrvResponse
    let len;
    let data = new VelocityReferenceSrvResponse(null);
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
    return 'mrs_msgs/VelocityReferenceSrvResponse';
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
    const resolved = new VelocityReferenceSrvResponse(null);
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
  Request: VelocityReferenceSrvRequest,
  Response: VelocityReferenceSrvResponse,
  md5sum() { return '0cfa385329ffcd17cfb0ba49845e356c'; },
  datatype() { return 'mrs_msgs/VelocityReferenceSrv'; }
};
