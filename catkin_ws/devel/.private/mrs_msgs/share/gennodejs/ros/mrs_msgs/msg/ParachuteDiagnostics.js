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

class ParachuteDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.alive = null;
      this.armed = null;
      this.fired = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('alive')) {
        this.alive = initObj.alive
      }
      else {
        this.alive = false;
      }
      if (initObj.hasOwnProperty('armed')) {
        this.armed = initObj.armed
      }
      else {
        this.armed = false;
      }
      if (initObj.hasOwnProperty('fired')) {
        this.fired = initObj.fired
      }
      else {
        this.fired = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParachuteDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [alive]
    bufferOffset = _serializer.bool(obj.alive, buffer, bufferOffset);
    // Serialize message field [armed]
    bufferOffset = _serializer.bool(obj.armed, buffer, bufferOffset);
    // Serialize message field [fired]
    bufferOffset = _serializer.bool(obj.fired, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParachuteDiagnostics
    let len;
    let data = new ParachuteDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [alive]
    data.alive = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armed]
    data.armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fired]
    data.fired = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ParachuteDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '432cf17f44e8b7c1519f8ae5a6317641';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    
    # If this value is false, the low level driver is not responding and parachute will not work
    bool alive
    
    # Parachute is armed and ready to be fired
    bool armed 
    
    # Parachute has been already fired
    bool fired 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParachuteDiagnostics(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.alive !== undefined) {
      resolved.alive = msg.alive;
    }
    else {
      resolved.alive = false
    }

    if (msg.armed !== undefined) {
      resolved.armed = msg.armed;
    }
    else {
      resolved.armed = false
    }

    if (msg.fired !== undefined) {
      resolved.fired = msg.fired;
    }
    else {
      resolved.fired = false
    }

    return resolved;
    }
};

module.exports = ParachuteDiagnostics;
