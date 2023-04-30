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

class Se3Gains {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kpxy = null;
      this.kvxy = null;
      this.kaxy = null;
      this.kpz = null;
      this.kvz = null;
      this.kaz = null;
      this.kqxy = null;
      this.kibxy = null;
      this.kibxy_lim = null;
      this.kiwxy = null;
      this.kiwxy_lim = null;
      this.kqz = null;
      this.km = null;
      this.km_lim = null;
    }
    else {
      if (initObj.hasOwnProperty('kpxy')) {
        this.kpxy = initObj.kpxy
      }
      else {
        this.kpxy = 0.0;
      }
      if (initObj.hasOwnProperty('kvxy')) {
        this.kvxy = initObj.kvxy
      }
      else {
        this.kvxy = 0.0;
      }
      if (initObj.hasOwnProperty('kaxy')) {
        this.kaxy = initObj.kaxy
      }
      else {
        this.kaxy = 0.0;
      }
      if (initObj.hasOwnProperty('kpz')) {
        this.kpz = initObj.kpz
      }
      else {
        this.kpz = 0.0;
      }
      if (initObj.hasOwnProperty('kvz')) {
        this.kvz = initObj.kvz
      }
      else {
        this.kvz = 0.0;
      }
      if (initObj.hasOwnProperty('kaz')) {
        this.kaz = initObj.kaz
      }
      else {
        this.kaz = 0.0;
      }
      if (initObj.hasOwnProperty('kqxy')) {
        this.kqxy = initObj.kqxy
      }
      else {
        this.kqxy = 0.0;
      }
      if (initObj.hasOwnProperty('kibxy')) {
        this.kibxy = initObj.kibxy
      }
      else {
        this.kibxy = 0.0;
      }
      if (initObj.hasOwnProperty('kibxy_lim')) {
        this.kibxy_lim = initObj.kibxy_lim
      }
      else {
        this.kibxy_lim = 0.0;
      }
      if (initObj.hasOwnProperty('kiwxy')) {
        this.kiwxy = initObj.kiwxy
      }
      else {
        this.kiwxy = 0.0;
      }
      if (initObj.hasOwnProperty('kiwxy_lim')) {
        this.kiwxy_lim = initObj.kiwxy_lim
      }
      else {
        this.kiwxy_lim = 0.0;
      }
      if (initObj.hasOwnProperty('kqz')) {
        this.kqz = initObj.kqz
      }
      else {
        this.kqz = 0.0;
      }
      if (initObj.hasOwnProperty('km')) {
        this.km = initObj.km
      }
      else {
        this.km = 0.0;
      }
      if (initObj.hasOwnProperty('km_lim')) {
        this.km_lim = initObj.km_lim
      }
      else {
        this.km_lim = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Se3Gains
    // Serialize message field [kpxy]
    bufferOffset = _serializer.float64(obj.kpxy, buffer, bufferOffset);
    // Serialize message field [kvxy]
    bufferOffset = _serializer.float64(obj.kvxy, buffer, bufferOffset);
    // Serialize message field [kaxy]
    bufferOffset = _serializer.float64(obj.kaxy, buffer, bufferOffset);
    // Serialize message field [kpz]
    bufferOffset = _serializer.float64(obj.kpz, buffer, bufferOffset);
    // Serialize message field [kvz]
    bufferOffset = _serializer.float64(obj.kvz, buffer, bufferOffset);
    // Serialize message field [kaz]
    bufferOffset = _serializer.float64(obj.kaz, buffer, bufferOffset);
    // Serialize message field [kqxy]
    bufferOffset = _serializer.float64(obj.kqxy, buffer, bufferOffset);
    // Serialize message field [kibxy]
    bufferOffset = _serializer.float64(obj.kibxy, buffer, bufferOffset);
    // Serialize message field [kibxy_lim]
    bufferOffset = _serializer.float64(obj.kibxy_lim, buffer, bufferOffset);
    // Serialize message field [kiwxy]
    bufferOffset = _serializer.float64(obj.kiwxy, buffer, bufferOffset);
    // Serialize message field [kiwxy_lim]
    bufferOffset = _serializer.float64(obj.kiwxy_lim, buffer, bufferOffset);
    // Serialize message field [kqz]
    bufferOffset = _serializer.float64(obj.kqz, buffer, bufferOffset);
    // Serialize message field [km]
    bufferOffset = _serializer.float64(obj.km, buffer, bufferOffset);
    // Serialize message field [km_lim]
    bufferOffset = _serializer.float64(obj.km_lim, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Se3Gains
    let len;
    let data = new Se3Gains(null);
    // Deserialize message field [kpxy]
    data.kpxy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kvxy]
    data.kvxy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kaxy]
    data.kaxy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kpz]
    data.kpz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kvz]
    data.kvz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kaz]
    data.kaz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kqxy]
    data.kqxy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kibxy]
    data.kibxy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kibxy_lim]
    data.kibxy_lim = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kiwxy]
    data.kiwxy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kiwxy_lim]
    data.kiwxy_lim = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kqz]
    data.kqz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [km]
    data.km = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [km_lim]
    data.km_lim = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Se3Gains';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f0afd0f6c3244e7db3d1f6e5db85f04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This a set of gains for the SE(3) controller.
    
    # Horizontal position gain.
    float64 kpxy
    
    # Horizontal velocity gain.
    float64 kvxy
    
    # Horizontal acceleration gain.
    float64 kaxy
    
    # Vertical position gain.
    float64 kpz
    
    # Vertical velocity gain.
    float64 kvz
    
    # Vertical acceleration gain.
    float64 kaz
    
    # Roll+pitch attitude gain.
    float64 kqxy
    
    # Body disturbance gain.
    float64 kibxy
    
    # Body disturbance estimator limit ([N]).
    float64 kibxy_lim
    
    # World disturbance gain.
    float64 kiwxy
    
    # World disturbance estimator limit  ([N]).
    float64 kiwxy_lim
    
    # Yaw attitude gain.
    float64 kqz
    
    # Mass estimator gain.
    float64 km
    
    # Mass estimator limit ([m]).
    float64 km_lim
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Se3Gains(null);
    if (msg.kpxy !== undefined) {
      resolved.kpxy = msg.kpxy;
    }
    else {
      resolved.kpxy = 0.0
    }

    if (msg.kvxy !== undefined) {
      resolved.kvxy = msg.kvxy;
    }
    else {
      resolved.kvxy = 0.0
    }

    if (msg.kaxy !== undefined) {
      resolved.kaxy = msg.kaxy;
    }
    else {
      resolved.kaxy = 0.0
    }

    if (msg.kpz !== undefined) {
      resolved.kpz = msg.kpz;
    }
    else {
      resolved.kpz = 0.0
    }

    if (msg.kvz !== undefined) {
      resolved.kvz = msg.kvz;
    }
    else {
      resolved.kvz = 0.0
    }

    if (msg.kaz !== undefined) {
      resolved.kaz = msg.kaz;
    }
    else {
      resolved.kaz = 0.0
    }

    if (msg.kqxy !== undefined) {
      resolved.kqxy = msg.kqxy;
    }
    else {
      resolved.kqxy = 0.0
    }

    if (msg.kibxy !== undefined) {
      resolved.kibxy = msg.kibxy;
    }
    else {
      resolved.kibxy = 0.0
    }

    if (msg.kibxy_lim !== undefined) {
      resolved.kibxy_lim = msg.kibxy_lim;
    }
    else {
      resolved.kibxy_lim = 0.0
    }

    if (msg.kiwxy !== undefined) {
      resolved.kiwxy = msg.kiwxy;
    }
    else {
      resolved.kiwxy = 0.0
    }

    if (msg.kiwxy_lim !== undefined) {
      resolved.kiwxy_lim = msg.kiwxy_lim;
    }
    else {
      resolved.kiwxy_lim = 0.0
    }

    if (msg.kqz !== undefined) {
      resolved.kqz = msg.kqz;
    }
    else {
      resolved.kqz = 0.0
    }

    if (msg.km !== undefined) {
      resolved.km = msg.km;
    }
    else {
      resolved.km = 0.0
    }

    if (msg.km_lim !== undefined) {
      resolved.km_lim = msg.km_lim;
    }
    else {
      resolved.km_lim = 0.0
    }

    return resolved;
    }
};

module.exports = Se3Gains;
