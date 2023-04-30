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

class TarotGimbalState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gimbal_tilt = null;
      this.gimbal_pan = null;
      this.is_on = null;
      this.fpv_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gimbal_tilt')) {
        this.gimbal_tilt = initObj.gimbal_tilt
      }
      else {
        this.gimbal_tilt = 0;
      }
      if (initObj.hasOwnProperty('gimbal_pan')) {
        this.gimbal_pan = initObj.gimbal_pan
      }
      else {
        this.gimbal_pan = 0;
      }
      if (initObj.hasOwnProperty('is_on')) {
        this.is_on = initObj.is_on
      }
      else {
        this.is_on = false;
      }
      if (initObj.hasOwnProperty('fpv_mode')) {
        this.fpv_mode = initObj.fpv_mode
      }
      else {
        this.fpv_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TarotGimbalState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gimbal_tilt]
    bufferOffset = _serializer.uint16(obj.gimbal_tilt, buffer, bufferOffset);
    // Serialize message field [gimbal_pan]
    bufferOffset = _serializer.uint16(obj.gimbal_pan, buffer, bufferOffset);
    // Serialize message field [is_on]
    bufferOffset = _serializer.bool(obj.is_on, buffer, bufferOffset);
    // Serialize message field [fpv_mode]
    bufferOffset = _serializer.bool(obj.fpv_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TarotGimbalState
    let len;
    let data = new TarotGimbalState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gimbal_tilt]
    data.gimbal_tilt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gimbal_pan]
    data.gimbal_pan = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [is_on]
    data.is_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fpv_mode]
    data.fpv_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/TarotGimbalState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de0150cd7cbfca812804963fee3d23ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    uint16 gimbal_tilt
    uint16 gimbal_pan
    
    bool is_on
    bool fpv_mode
    
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
    const resolved = new TarotGimbalState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gimbal_tilt !== undefined) {
      resolved.gimbal_tilt = msg.gimbal_tilt;
    }
    else {
      resolved.gimbal_tilt = 0
    }

    if (msg.gimbal_pan !== undefined) {
      resolved.gimbal_pan = msg.gimbal_pan;
    }
    else {
      resolved.gimbal_pan = 0
    }

    if (msg.is_on !== undefined) {
      resolved.is_on = msg.is_on;
    }
    else {
      resolved.is_on = false
    }

    if (msg.fpv_mode !== undefined) {
      resolved.fpv_mode = msg.fpv_mode;
    }
    else {
      resolved.fpv_mode = false
    }

    return resolved;
    }
};

module.exports = TarotGimbalState;
