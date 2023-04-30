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

class GazeboAttachTypedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_name_1 = null;
      this.link_name_1 = null;
      this.model_name_2 = null;
      this.link_name_2 = null;
      this.joint_type = null;
    }
    else {
      if (initObj.hasOwnProperty('model_name_1')) {
        this.model_name_1 = initObj.model_name_1
      }
      else {
        this.model_name_1 = '';
      }
      if (initObj.hasOwnProperty('link_name_1')) {
        this.link_name_1 = initObj.link_name_1
      }
      else {
        this.link_name_1 = '';
      }
      if (initObj.hasOwnProperty('model_name_2')) {
        this.model_name_2 = initObj.model_name_2
      }
      else {
        this.model_name_2 = '';
      }
      if (initObj.hasOwnProperty('link_name_2')) {
        this.link_name_2 = initObj.link_name_2
      }
      else {
        this.link_name_2 = '';
      }
      if (initObj.hasOwnProperty('joint_type')) {
        this.joint_type = initObj.joint_type
      }
      else {
        this.joint_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GazeboAttachTypedRequest
    // Serialize message field [model_name_1]
    bufferOffset = _serializer.string(obj.model_name_1, buffer, bufferOffset);
    // Serialize message field [link_name_1]
    bufferOffset = _serializer.string(obj.link_name_1, buffer, bufferOffset);
    // Serialize message field [model_name_2]
    bufferOffset = _serializer.string(obj.model_name_2, buffer, bufferOffset);
    // Serialize message field [link_name_2]
    bufferOffset = _serializer.string(obj.link_name_2, buffer, bufferOffset);
    // Serialize message field [joint_type]
    bufferOffset = _serializer.string(obj.joint_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GazeboAttachTypedRequest
    let len;
    let data = new GazeboAttachTypedRequest(null);
    // Deserialize message field [model_name_1]
    data.model_name_1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_name_1]
    data.link_name_1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_name_2]
    data.model_name_2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_name_2]
    data.link_name_2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_type]
    data.joint_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.model_name_1);
    length += _getByteLength(object.link_name_1);
    length += _getByteLength(object.model_name_2);
    length += _getByteLength(object.link_name_2);
    length += _getByteLength(object.joint_type);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GazeboAttachTypedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f71ab065e7816263cf291f9ab0527af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A service to apply a force and/or torque to a link in a Gazebo simulation
    # using the mrs_gazebo_ros_interface package.
    
    # Name of the model, containing the first link to be joined.
    string model_name_1
    
    # Name the first link to be joined.
    string link_name_1
    
    # Name of the model, containing the second link to be joined.
    string model_name_2
    
    # Name of the second link to be joined.
    string link_name_2
    
    # Type of the joint to be created.
    # This should be one of the following values:
    # "revolute"
    # "ball"
    # "gearbox"
    # "prismatic"
    # "revolute2"
    # "universal"
    # "piston"
    # "fixed"
    string joint_type
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GazeboAttachTypedRequest(null);
    if (msg.model_name_1 !== undefined) {
      resolved.model_name_1 = msg.model_name_1;
    }
    else {
      resolved.model_name_1 = ''
    }

    if (msg.link_name_1 !== undefined) {
      resolved.link_name_1 = msg.link_name_1;
    }
    else {
      resolved.link_name_1 = ''
    }

    if (msg.model_name_2 !== undefined) {
      resolved.model_name_2 = msg.model_name_2;
    }
    else {
      resolved.model_name_2 = ''
    }

    if (msg.link_name_2 !== undefined) {
      resolved.link_name_2 = msg.link_name_2;
    }
    else {
      resolved.link_name_2 = ''
    }

    if (msg.joint_type !== undefined) {
      resolved.joint_type = msg.joint_type;
    }
    else {
      resolved.joint_type = ''
    }

    return resolved;
    }
};

class GazeboAttachTypedResponse {
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
    // Serializes a message object of type GazeboAttachTypedResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GazeboAttachTypedResponse
    let len;
    let data = new GazeboAttachTypedResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GazeboAttachTypedResponse';
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
    const resolved = new GazeboAttachTypedResponse(null);
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
  Request: GazeboAttachTypedRequest,
  Response: GazeboAttachTypedResponse,
  md5sum() { return 'c8a200edf35f852bddb91566c6d0dc97'; },
  datatype() { return 'mrs_msgs/GazeboAttachTyped'; }
};
