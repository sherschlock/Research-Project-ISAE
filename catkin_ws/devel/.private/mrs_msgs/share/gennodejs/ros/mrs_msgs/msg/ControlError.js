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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ControlError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position_errors = null;
      this.total_position_error = null;
      this.yaw_error = null;
      this.position_eland_threshold = null;
      this.position_failsafe_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position_errors')) {
        this.position_errors = initObj.position_errors
      }
      else {
        this.position_errors = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('total_position_error')) {
        this.total_position_error = initObj.total_position_error
      }
      else {
        this.total_position_error = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_error')) {
        this.yaw_error = initObj.yaw_error
      }
      else {
        this.yaw_error = 0.0;
      }
      if (initObj.hasOwnProperty('position_eland_threshold')) {
        this.position_eland_threshold = initObj.position_eland_threshold
      }
      else {
        this.position_eland_threshold = 0.0;
      }
      if (initObj.hasOwnProperty('position_failsafe_threshold')) {
        this.position_failsafe_threshold = initObj.position_failsafe_threshold
      }
      else {
        this.position_failsafe_threshold = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlError
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [position_errors]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position_errors, buffer, bufferOffset);
    // Serialize message field [total_position_error]
    bufferOffset = _serializer.float64(obj.total_position_error, buffer, bufferOffset);
    // Serialize message field [yaw_error]
    bufferOffset = _serializer.float64(obj.yaw_error, buffer, bufferOffset);
    // Serialize message field [position_eland_threshold]
    bufferOffset = _serializer.float64(obj.position_eland_threshold, buffer, bufferOffset);
    // Serialize message field [position_failsafe_threshold]
    bufferOffset = _serializer.float64(obj.position_failsafe_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlError
    let len;
    let data = new ControlError(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_errors]
    data.position_errors = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [total_position_error]
    data.total_position_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_error]
    data.yaw_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_eland_threshold]
    data.position_eland_threshold = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_failsafe_threshold]
    data.position_failsafe_threshold = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ControlError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c8117673f8dcffcc00963fa1c71ee72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    geometry_msgs/Vector3 position_errors
    float64 total_position_error
    float64 yaw_error
    
    float64 position_eland_threshold
    float64 position_failsafe_threshold
    
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
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlError(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position_errors !== undefined) {
      resolved.position_errors = geometry_msgs.msg.Vector3.Resolve(msg.position_errors)
    }
    else {
      resolved.position_errors = new geometry_msgs.msg.Vector3()
    }

    if (msg.total_position_error !== undefined) {
      resolved.total_position_error = msg.total_position_error;
    }
    else {
      resolved.total_position_error = 0.0
    }

    if (msg.yaw_error !== undefined) {
      resolved.yaw_error = msg.yaw_error;
    }
    else {
      resolved.yaw_error = 0.0
    }

    if (msg.position_eland_threshold !== undefined) {
      resolved.position_eland_threshold = msg.position_eland_threshold;
    }
    else {
      resolved.position_eland_threshold = 0.0
    }

    if (msg.position_failsafe_threshold !== undefined) {
      resolved.position_failsafe_threshold = msg.position_failsafe_threshold;
    }
    else {
      resolved.position_failsafe_threshold = 0.0
    }

    return resolved;
    }
};

module.exports = ControlError;
