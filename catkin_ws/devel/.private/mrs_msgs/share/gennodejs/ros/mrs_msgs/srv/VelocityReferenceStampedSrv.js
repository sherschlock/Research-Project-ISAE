// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VelocityReferenceStamped = require('../msg/VelocityReferenceStamped.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class VelocityReferenceStampedSrvRequest {
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
        this.reference = new VelocityReferenceStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocityReferenceStampedSrvRequest
    // Serialize message field [reference]
    bufferOffset = VelocityReferenceStamped.serialize(obj.reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityReferenceStampedSrvRequest
    let len;
    let data = new VelocityReferenceStampedSrvRequest(null);
    // Deserialize message field [reference]
    data.reference = VelocityReferenceStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += VelocityReferenceStamped.getMessageSize(object.reference);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/VelocityReferenceStampedSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcfebfa00dc7fd48dcce962aeb5aa290';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/VelocityReferenceStamped reference
    
    ================================================================================
    MSG: mrs_msgs/VelocityReferenceStamped
    # contains the frame_id = your reference frame of choice
    std_msgs/Header header
    
    mrs_msgs/VelocityReference reference
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new VelocityReferenceStampedSrvRequest(null);
    if (msg.reference !== undefined) {
      resolved.reference = VelocityReferenceStamped.Resolve(msg.reference)
    }
    else {
      resolved.reference = new VelocityReferenceStamped()
    }

    return resolved;
    }
};

class VelocityReferenceStampedSrvResponse {
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
    // Serializes a message object of type VelocityReferenceStampedSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityReferenceStampedSrvResponse
    let len;
    let data = new VelocityReferenceStampedSrvResponse(null);
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
    return 'mrs_msgs/VelocityReferenceStampedSrvResponse';
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
    const resolved = new VelocityReferenceStampedSrvResponse(null);
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
  Request: VelocityReferenceStampedSrvRequest,
  Response: VelocityReferenceStampedSrvResponse,
  md5sum() { return '2049bed7ddaf936a6b0c045878f5182e'; },
  datatype() { return 'mrs_msgs/VelocityReferenceStampedSrv'; }
};
