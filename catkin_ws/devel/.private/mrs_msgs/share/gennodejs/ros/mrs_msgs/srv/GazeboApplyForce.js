// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GazeboApplyForceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_name = null;
      this.link_name = null;
      this.force = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('model_name')) {
        this.model_name = initObj.model_name
      }
      else {
        this.model_name = '';
      }
      if (initObj.hasOwnProperty('link_name')) {
        this.link_name = initObj.link_name
      }
      else {
        this.link_name = '';
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GazeboApplyForceRequest
    // Serialize message field [model_name]
    bufferOffset = _serializer.string(obj.model_name, buffer, bufferOffset);
    // Serialize message field [link_name]
    bufferOffset = _serializer.string(obj.link_name, buffer, bufferOffset);
    // Check that the constant length array field [force] has the right length
    if (obj.force.length !== 3) {
      throw new Error('Unable to serialize array field force - length must be 3')
    }
    // Serialize message field [force]
    bufferOffset = _arraySerializer.float64(obj.force, buffer, bufferOffset, 3);
    // Check that the constant length array field [torque] has the right length
    if (obj.torque.length !== 3) {
      throw new Error('Unable to serialize array field torque - length must be 3')
    }
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.float64(obj.torque, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GazeboApplyForceRequest
    let len;
    let data = new GazeboApplyForceRequest(null);
    // Deserialize message field [model_name]
    data.model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_name]
    data.link_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.model_name);
    length += _getByteLength(object.link_name);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GazeboApplyForceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '051c4d5b49061f38e55bd8c694132fb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A service to apply a force and/or torque to a link in a Gazebo simulation
    # using the mrs_gazebo_ros_interface package.
    
    # Name of the model, containing the link to apply the force/torque to.
    string model_name
    
    # Name of the link to apply the force/torque to.
    string link_name
    
    # The force vector to apply (in the Gazebo global coordinate system).
    float64[3] force
    
    # The torque vector to apply (in the Gazebo global coordinate system).
    float64[3] torque
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GazeboApplyForceRequest(null);
    if (msg.model_name !== undefined) {
      resolved.model_name = msg.model_name;
    }
    else {
      resolved.model_name = ''
    }

    if (msg.link_name !== undefined) {
      resolved.link_name = msg.link_name;
    }
    else {
      resolved.link_name = ''
    }

    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = new Array(3).fill(0)
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = new Array(3).fill(0)
    }

    return resolved;
    }
};

class GazeboApplyForceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GazeboApplyForceResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GazeboApplyForceResponse
    let len;
    let data = new GazeboApplyForceResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GazeboApplyForceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # Indicates whether the requested operation was carried out successfully.
    bool ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GazeboApplyForceResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GazeboApplyForceRequest,
  Response: GazeboApplyForceResponse,
  md5sum() { return '77ac0ae8a686941daaff7f70c849280e'; },
  datatype() { return 'mrs_msgs/GazeboApplyForce'; }
};
