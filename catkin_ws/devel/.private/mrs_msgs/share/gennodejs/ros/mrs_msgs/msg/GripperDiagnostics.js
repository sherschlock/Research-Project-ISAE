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

class GripperDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.gripper_on = null;
      this.gripping_object = null;
      this.has_hall = null;
      this.hall1_debug = null;
      this.hall2_debug = null;
      this.has_ultrasonic = null;
      this.ultrasonic1_debug = null;
      this.ultrasonic2_debug = null;
      this.has_proximity = null;
      this.proximity1_debug = null;
      this.proximity2_debug = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('gripper_on')) {
        this.gripper_on = initObj.gripper_on
      }
      else {
        this.gripper_on = false;
      }
      if (initObj.hasOwnProperty('gripping_object')) {
        this.gripping_object = initObj.gripping_object
      }
      else {
        this.gripping_object = false;
      }
      if (initObj.hasOwnProperty('has_hall')) {
        this.has_hall = initObj.has_hall
      }
      else {
        this.has_hall = false;
      }
      if (initObj.hasOwnProperty('hall1_debug')) {
        this.hall1_debug = initObj.hall1_debug
      }
      else {
        this.hall1_debug = 0;
      }
      if (initObj.hasOwnProperty('hall2_debug')) {
        this.hall2_debug = initObj.hall2_debug
      }
      else {
        this.hall2_debug = 0;
      }
      if (initObj.hasOwnProperty('has_ultrasonic')) {
        this.has_ultrasonic = initObj.has_ultrasonic
      }
      else {
        this.has_ultrasonic = false;
      }
      if (initObj.hasOwnProperty('ultrasonic1_debug')) {
        this.ultrasonic1_debug = initObj.ultrasonic1_debug
      }
      else {
        this.ultrasonic1_debug = 0;
      }
      if (initObj.hasOwnProperty('ultrasonic2_debug')) {
        this.ultrasonic2_debug = initObj.ultrasonic2_debug
      }
      else {
        this.ultrasonic2_debug = 0;
      }
      if (initObj.hasOwnProperty('has_proximity')) {
        this.has_proximity = initObj.has_proximity
      }
      else {
        this.has_proximity = false;
      }
      if (initObj.hasOwnProperty('proximity1_debug')) {
        this.proximity1_debug = initObj.proximity1_debug
      }
      else {
        this.proximity1_debug = 0;
      }
      if (initObj.hasOwnProperty('proximity2_debug')) {
        this.proximity2_debug = initObj.proximity2_debug
      }
      else {
        this.proximity2_debug = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperDiagnostics
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [gripper_on]
    bufferOffset = _serializer.bool(obj.gripper_on, buffer, bufferOffset);
    // Serialize message field [gripping_object]
    bufferOffset = _serializer.bool(obj.gripping_object, buffer, bufferOffset);
    // Serialize message field [has_hall]
    bufferOffset = _serializer.bool(obj.has_hall, buffer, bufferOffset);
    // Serialize message field [hall1_debug]
    bufferOffset = _serializer.int32(obj.hall1_debug, buffer, bufferOffset);
    // Serialize message field [hall2_debug]
    bufferOffset = _serializer.int32(obj.hall2_debug, buffer, bufferOffset);
    // Serialize message field [has_ultrasonic]
    bufferOffset = _serializer.bool(obj.has_ultrasonic, buffer, bufferOffset);
    // Serialize message field [ultrasonic1_debug]
    bufferOffset = _serializer.int32(obj.ultrasonic1_debug, buffer, bufferOffset);
    // Serialize message field [ultrasonic2_debug]
    bufferOffset = _serializer.int32(obj.ultrasonic2_debug, buffer, bufferOffset);
    // Serialize message field [has_proximity]
    bufferOffset = _serializer.bool(obj.has_proximity, buffer, bufferOffset);
    // Serialize message field [proximity1_debug]
    bufferOffset = _serializer.int32(obj.proximity1_debug, buffer, bufferOffset);
    // Serialize message field [proximity2_debug]
    bufferOffset = _serializer.int32(obj.proximity2_debug, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperDiagnostics
    let len;
    let data = new GripperDiagnostics(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [gripper_on]
    data.gripper_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gripping_object]
    data.gripping_object = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [has_hall]
    data.has_hall = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hall1_debug]
    data.hall1_debug = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hall2_debug]
    data.hall2_debug = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [has_ultrasonic]
    data.has_ultrasonic = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ultrasonic1_debug]
    data.ultrasonic1_debug = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ultrasonic2_debug]
    data.ultrasonic2_debug = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [has_proximity]
    data.has_proximity = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [proximity1_debug]
    data.proximity1_debug = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [proximity2_debug]
    data.proximity2_debug = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/GripperDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5887bc2d50f46b0d8949991277fb8b45';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    
    bool gripper_on
    bool gripping_object
    
    bool has_hall
    int32 hall1_debug
    int32 hall2_debug
    
    bool has_ultrasonic
    int32 ultrasonic1_debug
    int32 ultrasonic2_debug
    
    bool has_proximity
    int32 proximity1_debug
    int32 proximity2_debug
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperDiagnostics(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.gripper_on !== undefined) {
      resolved.gripper_on = msg.gripper_on;
    }
    else {
      resolved.gripper_on = false
    }

    if (msg.gripping_object !== undefined) {
      resolved.gripping_object = msg.gripping_object;
    }
    else {
      resolved.gripping_object = false
    }

    if (msg.has_hall !== undefined) {
      resolved.has_hall = msg.has_hall;
    }
    else {
      resolved.has_hall = false
    }

    if (msg.hall1_debug !== undefined) {
      resolved.hall1_debug = msg.hall1_debug;
    }
    else {
      resolved.hall1_debug = 0
    }

    if (msg.hall2_debug !== undefined) {
      resolved.hall2_debug = msg.hall2_debug;
    }
    else {
      resolved.hall2_debug = 0
    }

    if (msg.has_ultrasonic !== undefined) {
      resolved.has_ultrasonic = msg.has_ultrasonic;
    }
    else {
      resolved.has_ultrasonic = false
    }

    if (msg.ultrasonic1_debug !== undefined) {
      resolved.ultrasonic1_debug = msg.ultrasonic1_debug;
    }
    else {
      resolved.ultrasonic1_debug = 0
    }

    if (msg.ultrasonic2_debug !== undefined) {
      resolved.ultrasonic2_debug = msg.ultrasonic2_debug;
    }
    else {
      resolved.ultrasonic2_debug = 0
    }

    if (msg.has_proximity !== undefined) {
      resolved.has_proximity = msg.has_proximity;
    }
    else {
      resolved.has_proximity = false
    }

    if (msg.proximity1_debug !== undefined) {
      resolved.proximity1_debug = msg.proximity1_debug;
    }
    else {
      resolved.proximity1_debug = 0
    }

    if (msg.proximity2_debug !== undefined) {
      resolved.proximity2_debug = msg.proximity2_debug;
    }
    else {
      resolved.proximity2_debug = 0
    }

    return resolved;
    }
};

module.exports = GripperDiagnostics;
