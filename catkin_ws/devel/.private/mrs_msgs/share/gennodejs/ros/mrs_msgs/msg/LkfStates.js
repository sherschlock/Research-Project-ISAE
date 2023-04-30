// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LkfStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pos = null;
      this.vel = null;
      this.acc = null;
      this.acc_i = null;
      this.acc_d = null;
      this.tilt = null;
      this.covariance = null;
      this.eigenvalues = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('acc_i')) {
        this.acc_i = initObj.acc_i
      }
      else {
        this.acc_i = 0.0;
      }
      if (initObj.hasOwnProperty('acc_d')) {
        this.acc_d = initObj.acc_d
      }
      else {
        this.acc_d = 0.0;
      }
      if (initObj.hasOwnProperty('tilt')) {
        this.tilt = initObj.tilt
      }
      else {
        this.tilt = 0.0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('eigenvalues')) {
        this.eigenvalues = initObj.eigenvalues
      }
      else {
        this.eigenvalues = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LkfStates
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _serializer.float64(obj.pos, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float64(obj.acc, buffer, bufferOffset);
    // Serialize message field [acc_i]
    bufferOffset = _serializer.float64(obj.acc_i, buffer, bufferOffset);
    // Serialize message field [acc_d]
    bufferOffset = _serializer.float64(obj.acc_d, buffer, bufferOffset);
    // Serialize message field [tilt]
    bufferOffset = _serializer.float64(obj.tilt, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 6) {
      throw new Error('Unable to serialize array field covariance - length must be 6')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 6);
    // Check that the constant length array field [eigenvalues] has the right length
    if (obj.eigenvalues.length !== 6) {
      throw new Error('Unable to serialize array field eigenvalues - length must be 6')
    }
    // Serialize message field [eigenvalues]
    bufferOffset = _arraySerializer.float64(obj.eigenvalues, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LkfStates
    let len;
    let data = new LkfStates(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_i]
    data.acc_i = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_d]
    data.acc_d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tilt]
    data.tilt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [eigenvalues]
    data.eigenvalues = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/LkfStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14d93260f53a181dfa1b6786648828c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 pos
    float64 vel
    float64 acc
    float64 acc_i
    float64 acc_d
    float64 tilt
    float64[6] covariance
    float64[6] eigenvalues
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LkfStates(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.acc_i !== undefined) {
      resolved.acc_i = msg.acc_i;
    }
    else {
      resolved.acc_i = 0.0
    }

    if (msg.acc_d !== undefined) {
      resolved.acc_d = msg.acc_d;
    }
    else {
      resolved.acc_d = 0.0
    }

    if (msg.tilt !== undefined) {
      resolved.tilt = msg.tilt;
    }
    else {
      resolved.tilt = 0.0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(6).fill(0)
    }

    if (msg.eigenvalues !== undefined) {
      resolved.eigenvalues = msg.eigenvalues;
    }
    else {
      resolved.eigenvalues = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = LkfStates;
