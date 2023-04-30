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

class GazeboAttachRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.model_name_1 = null;
      this.link_name_1 = null;
      this.model_name_2 = null;
      this.link_name_2 = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GazeboAttachRequest
    // Serialize message field [model_name_1]
    bufferOffset = _serializer.string(obj.model_name_1, buffer, bufferOffset);
    // Serialize message field [link_name_1]
    bufferOffset = _serializer.string(obj.link_name_1, buffer, bufferOffset);
    // Serialize message field [model_name_2]
    bufferOffset = _serializer.string(obj.model_name_2, buffer, bufferOffset);
    // Serialize message field [link_name_2]
    bufferOffset = _serializer.string(obj.link_name_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GazeboAttachRequest
    let len;
    let data = new GazeboAttachRequest(null);
    // Deserialize message field [model_name_1]
    data.model_name_1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_name_1]
    data.link_name_1 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model_name_2]
    data.model_name_2 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [link_name_2]
    data.link_name_2 = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.model_name_1);
    length += _getByteLength(object.link_name_1);
    length += _getByteLength(object.model_name_2);
    length += _getByteLength(object.link_name_2);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GazeboAttachRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff39d0bc8e054b10e21a2f298cb7fb05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A service to apply a force and/or torque to a link in a Gazebo simulation
    # using the mrs_gazebo_ros_interface package. The links will be joined
    # by a revolute joint type.
    
    # Name of the model, containing the first link to be joined.
    string model_name_1
    
    # Name the first link to be joined.
    string link_name_1
    
    # Name of the model, containing the second link to be joined.
    string model_name_2
    
    # Name of the second link to be joined.
    string link_name_2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GazeboAttachRequest(null);
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

    return resolved;
    }
};

class GazeboAttachResponse {
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
    // Serializes a message object of type GazeboAttachResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GazeboAttachResponse
    let len;
    let data = new GazeboAttachResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GazeboAttachResponse';
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
    const resolved = new GazeboAttachResponse(null);
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
  Request: GazeboAttachRequest,
  Response: GazeboAttachResponse,
  md5sum() { return 'c91fb3be70ce66d19130d40294cf4bd5'; },
  datatype() { return 'mrs_msgs/GazeboAttach'; }
};
