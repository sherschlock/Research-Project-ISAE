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

class EspOdometry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.posx = null;
      this.posy = null;
      this.posz = null;
      this.velx = null;
      this.vely = null;
      this.velz = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('posx')) {
        this.posx = initObj.posx
      }
      else {
        this.posx = 0.0;
      }
      if (initObj.hasOwnProperty('posy')) {
        this.posy = initObj.posy
      }
      else {
        this.posy = 0.0;
      }
      if (initObj.hasOwnProperty('posz')) {
        this.posz = initObj.posz
      }
      else {
        this.posz = 0.0;
      }
      if (initObj.hasOwnProperty('velx')) {
        this.velx = initObj.velx
      }
      else {
        this.velx = 0.0;
      }
      if (initObj.hasOwnProperty('vely')) {
        this.vely = initObj.vely
      }
      else {
        this.vely = 0.0;
      }
      if (initObj.hasOwnProperty('velz')) {
        this.velz = initObj.velz
      }
      else {
        this.velz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EspOdometry
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [posx]
    bufferOffset = _serializer.float32(obj.posx, buffer, bufferOffset);
    // Serialize message field [posy]
    bufferOffset = _serializer.float32(obj.posy, buffer, bufferOffset);
    // Serialize message field [posz]
    bufferOffset = _serializer.float32(obj.posz, buffer, bufferOffset);
    // Serialize message field [velx]
    bufferOffset = _serializer.float32(obj.velx, buffer, bufferOffset);
    // Serialize message field [vely]
    bufferOffset = _serializer.float32(obj.vely, buffer, bufferOffset);
    // Serialize message field [velz]
    bufferOffset = _serializer.float32(obj.velz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EspOdometry
    let len;
    let data = new EspOdometry(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [posx]
    data.posx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posy]
    data.posy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posz]
    data.posz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velx]
    data.velx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vely]
    data.vely = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velz]
    data.velz = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/EspOdometry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f7d12bb5cb403c9fb6fccc4c9c047a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float32 posx
    float32 posy
    float32 posz
    float32 velx
    float32 vely
    float32 velz
    
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
    const resolved = new EspOdometry(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.posx !== undefined) {
      resolved.posx = msg.posx;
    }
    else {
      resolved.posx = 0.0
    }

    if (msg.posy !== undefined) {
      resolved.posy = msg.posy;
    }
    else {
      resolved.posy = 0.0
    }

    if (msg.posz !== undefined) {
      resolved.posz = msg.posz;
    }
    else {
      resolved.posz = 0.0
    }

    if (msg.velx !== undefined) {
      resolved.velx = msg.velx;
    }
    else {
      resolved.velx = 0.0
    }

    if (msg.vely !== undefined) {
      resolved.vely = msg.vely;
    }
    else {
      resolved.vely = 0.0
    }

    if (msg.velz !== undefined) {
      resolved.velz = msg.velz;
    }
    else {
      resolved.velz = 0.0
    }

    return resolved;
    }
};

module.exports = EspOdometry;
