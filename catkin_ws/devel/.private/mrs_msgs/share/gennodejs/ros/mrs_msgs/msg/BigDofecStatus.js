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

class BigDofecStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.mes_vbat = null;
      this.mes_24v = null;
      this.mes_varm = null;
      this.mes_19v = null;
      this.mes_5v = null;
      this.pwm_enabled = null;
      this.pwm1_val = null;
      this.pwm2_val = null;
      this.pwm3_val = null;
      this.pwm4_val = null;
      this.pwm5_val = null;
      this.pwm6_val = null;
      this.solenoids_armed = null;
      this.launched_ch1 = null;
      this.launched_ch2 = null;
      this.launched_ch3 = null;
      this.launched_ch4 = null;
      this.launched_ch5 = null;
      this.launched_ch6 = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('mes_vbat')) {
        this.mes_vbat = initObj.mes_vbat
      }
      else {
        this.mes_vbat = 0.0;
      }
      if (initObj.hasOwnProperty('mes_24v')) {
        this.mes_24v = initObj.mes_24v
      }
      else {
        this.mes_24v = 0.0;
      }
      if (initObj.hasOwnProperty('mes_varm')) {
        this.mes_varm = initObj.mes_varm
      }
      else {
        this.mes_varm = 0.0;
      }
      if (initObj.hasOwnProperty('mes_19v')) {
        this.mes_19v = initObj.mes_19v
      }
      else {
        this.mes_19v = 0.0;
      }
      if (initObj.hasOwnProperty('mes_5v')) {
        this.mes_5v = initObj.mes_5v
      }
      else {
        this.mes_5v = 0.0;
      }
      if (initObj.hasOwnProperty('pwm_enabled')) {
        this.pwm_enabled = initObj.pwm_enabled
      }
      else {
        this.pwm_enabled = false;
      }
      if (initObj.hasOwnProperty('pwm1_val')) {
        this.pwm1_val = initObj.pwm1_val
      }
      else {
        this.pwm1_val = 0;
      }
      if (initObj.hasOwnProperty('pwm2_val')) {
        this.pwm2_val = initObj.pwm2_val
      }
      else {
        this.pwm2_val = 0;
      }
      if (initObj.hasOwnProperty('pwm3_val')) {
        this.pwm3_val = initObj.pwm3_val
      }
      else {
        this.pwm3_val = 0;
      }
      if (initObj.hasOwnProperty('pwm4_val')) {
        this.pwm4_val = initObj.pwm4_val
      }
      else {
        this.pwm4_val = 0;
      }
      if (initObj.hasOwnProperty('pwm5_val')) {
        this.pwm5_val = initObj.pwm5_val
      }
      else {
        this.pwm5_val = 0;
      }
      if (initObj.hasOwnProperty('pwm6_val')) {
        this.pwm6_val = initObj.pwm6_val
      }
      else {
        this.pwm6_val = 0;
      }
      if (initObj.hasOwnProperty('solenoids_armed')) {
        this.solenoids_armed = initObj.solenoids_armed
      }
      else {
        this.solenoids_armed = false;
      }
      if (initObj.hasOwnProperty('launched_ch1')) {
        this.launched_ch1 = initObj.launched_ch1
      }
      else {
        this.launched_ch1 = false;
      }
      if (initObj.hasOwnProperty('launched_ch2')) {
        this.launched_ch2 = initObj.launched_ch2
      }
      else {
        this.launched_ch2 = false;
      }
      if (initObj.hasOwnProperty('launched_ch3')) {
        this.launched_ch3 = initObj.launched_ch3
      }
      else {
        this.launched_ch3 = false;
      }
      if (initObj.hasOwnProperty('launched_ch4')) {
        this.launched_ch4 = initObj.launched_ch4
      }
      else {
        this.launched_ch4 = false;
      }
      if (initObj.hasOwnProperty('launched_ch5')) {
        this.launched_ch5 = initObj.launched_ch5
      }
      else {
        this.launched_ch5 = false;
      }
      if (initObj.hasOwnProperty('launched_ch6')) {
        this.launched_ch6 = initObj.launched_ch6
      }
      else {
        this.launched_ch6 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BigDofecStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [mes_vbat]
    bufferOffset = _serializer.float32(obj.mes_vbat, buffer, bufferOffset);
    // Serialize message field [mes_24v]
    bufferOffset = _serializer.float32(obj.mes_24v, buffer, bufferOffset);
    // Serialize message field [mes_varm]
    bufferOffset = _serializer.float32(obj.mes_varm, buffer, bufferOffset);
    // Serialize message field [mes_19v]
    bufferOffset = _serializer.float32(obj.mes_19v, buffer, bufferOffset);
    // Serialize message field [mes_5v]
    bufferOffset = _serializer.float32(obj.mes_5v, buffer, bufferOffset);
    // Serialize message field [pwm_enabled]
    bufferOffset = _serializer.bool(obj.pwm_enabled, buffer, bufferOffset);
    // Serialize message field [pwm1_val]
    bufferOffset = _serializer.uint16(obj.pwm1_val, buffer, bufferOffset);
    // Serialize message field [pwm2_val]
    bufferOffset = _serializer.uint16(obj.pwm2_val, buffer, bufferOffset);
    // Serialize message field [pwm3_val]
    bufferOffset = _serializer.uint16(obj.pwm3_val, buffer, bufferOffset);
    // Serialize message field [pwm4_val]
    bufferOffset = _serializer.uint16(obj.pwm4_val, buffer, bufferOffset);
    // Serialize message field [pwm5_val]
    bufferOffset = _serializer.uint16(obj.pwm5_val, buffer, bufferOffset);
    // Serialize message field [pwm6_val]
    bufferOffset = _serializer.uint16(obj.pwm6_val, buffer, bufferOffset);
    // Serialize message field [solenoids_armed]
    bufferOffset = _serializer.bool(obj.solenoids_armed, buffer, bufferOffset);
    // Serialize message field [launched_ch1]
    bufferOffset = _serializer.bool(obj.launched_ch1, buffer, bufferOffset);
    // Serialize message field [launched_ch2]
    bufferOffset = _serializer.bool(obj.launched_ch2, buffer, bufferOffset);
    // Serialize message field [launched_ch3]
    bufferOffset = _serializer.bool(obj.launched_ch3, buffer, bufferOffset);
    // Serialize message field [launched_ch4]
    bufferOffset = _serializer.bool(obj.launched_ch4, buffer, bufferOffset);
    // Serialize message field [launched_ch5]
    bufferOffset = _serializer.bool(obj.launched_ch5, buffer, bufferOffset);
    // Serialize message field [launched_ch6]
    bufferOffset = _serializer.bool(obj.launched_ch6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BigDofecStatus
    let len;
    let data = new BigDofecStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [mes_vbat]
    data.mes_vbat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mes_24v]
    data.mes_24v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mes_varm]
    data.mes_varm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mes_19v]
    data.mes_19v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mes_5v]
    data.mes_5v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pwm_enabled]
    data.pwm_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pwm1_val]
    data.pwm1_val = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm2_val]
    data.pwm2_val = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm3_val]
    data.pwm3_val = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm4_val]
    data.pwm4_val = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm5_val]
    data.pwm5_val = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pwm6_val]
    data.pwm6_val = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [solenoids_armed]
    data.solenoids_armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [launched_ch1]
    data.launched_ch1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [launched_ch2]
    data.launched_ch2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [launched_ch3]
    data.launched_ch3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [launched_ch4]
    data.launched_ch4 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [launched_ch5]
    data.launched_ch5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [launched_ch6]
    data.launched_ch6 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/BigDofecStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a01dab5c749eae33ffb0f9ef6c3cb54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    
    float32 mes_vbat
    float32 mes_24v
    float32 mes_varm
    float32 mes_19v
    float32 mes_5v
    
    bool pwm_enabled
    uint16 pwm1_val
    uint16 pwm2_val
    uint16 pwm3_val
    uint16 pwm4_val
    uint16 pwm5_val
    uint16 pwm6_val
    
    bool solenoids_armed
    bool launched_ch1
    bool launched_ch2
    bool launched_ch3
    bool launched_ch4
    bool launched_ch5
    bool launched_ch6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BigDofecStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.mes_vbat !== undefined) {
      resolved.mes_vbat = msg.mes_vbat;
    }
    else {
      resolved.mes_vbat = 0.0
    }

    if (msg.mes_24v !== undefined) {
      resolved.mes_24v = msg.mes_24v;
    }
    else {
      resolved.mes_24v = 0.0
    }

    if (msg.mes_varm !== undefined) {
      resolved.mes_varm = msg.mes_varm;
    }
    else {
      resolved.mes_varm = 0.0
    }

    if (msg.mes_19v !== undefined) {
      resolved.mes_19v = msg.mes_19v;
    }
    else {
      resolved.mes_19v = 0.0
    }

    if (msg.mes_5v !== undefined) {
      resolved.mes_5v = msg.mes_5v;
    }
    else {
      resolved.mes_5v = 0.0
    }

    if (msg.pwm_enabled !== undefined) {
      resolved.pwm_enabled = msg.pwm_enabled;
    }
    else {
      resolved.pwm_enabled = false
    }

    if (msg.pwm1_val !== undefined) {
      resolved.pwm1_val = msg.pwm1_val;
    }
    else {
      resolved.pwm1_val = 0
    }

    if (msg.pwm2_val !== undefined) {
      resolved.pwm2_val = msg.pwm2_val;
    }
    else {
      resolved.pwm2_val = 0
    }

    if (msg.pwm3_val !== undefined) {
      resolved.pwm3_val = msg.pwm3_val;
    }
    else {
      resolved.pwm3_val = 0
    }

    if (msg.pwm4_val !== undefined) {
      resolved.pwm4_val = msg.pwm4_val;
    }
    else {
      resolved.pwm4_val = 0
    }

    if (msg.pwm5_val !== undefined) {
      resolved.pwm5_val = msg.pwm5_val;
    }
    else {
      resolved.pwm5_val = 0
    }

    if (msg.pwm6_val !== undefined) {
      resolved.pwm6_val = msg.pwm6_val;
    }
    else {
      resolved.pwm6_val = 0
    }

    if (msg.solenoids_armed !== undefined) {
      resolved.solenoids_armed = msg.solenoids_armed;
    }
    else {
      resolved.solenoids_armed = false
    }

    if (msg.launched_ch1 !== undefined) {
      resolved.launched_ch1 = msg.launched_ch1;
    }
    else {
      resolved.launched_ch1 = false
    }

    if (msg.launched_ch2 !== undefined) {
      resolved.launched_ch2 = msg.launched_ch2;
    }
    else {
      resolved.launched_ch2 = false
    }

    if (msg.launched_ch3 !== undefined) {
      resolved.launched_ch3 = msg.launched_ch3;
    }
    else {
      resolved.launched_ch3 = false
    }

    if (msg.launched_ch4 !== undefined) {
      resolved.launched_ch4 = msg.launched_ch4;
    }
    else {
      resolved.launched_ch4 = false
    }

    if (msg.launched_ch5 !== undefined) {
      resolved.launched_ch5 = msg.launched_ch5;
    }
    else {
      resolved.launched_ch5 = false
    }

    if (msg.launched_ch6 !== undefined) {
      resolved.launched_ch6 = msg.launched_ch6;
    }
    else {
      resolved.launched_ch6 = false
    }

    return resolved;
    }
};

module.exports = BigDofecStatus;
