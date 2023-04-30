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

class PathfinderDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.idle = null;
      this.desired_reference = null;
      this.best_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('idle')) {
        this.idle = initObj.idle
      }
      else {
        this.idle = false;
      }
      if (initObj.hasOwnProperty('desired_reference')) {
        this.desired_reference = initObj.desired_reference
      }
      else {
        this.desired_reference = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('best_goal')) {
        this.best_goal = initObj.best_goal
      }
      else {
        this.best_goal = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathfinderDiagnostics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [idle]
    bufferOffset = _serializer.bool(obj.idle, buffer, bufferOffset);
    // Serialize message field [desired_reference]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.desired_reference, buffer, bufferOffset);
    // Serialize message field [best_goal]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.best_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathfinderDiagnostics
    let len;
    let data = new PathfinderDiagnostics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [idle]
    data.idle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [desired_reference]
    data.desired_reference = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [best_goal]
    data.best_goal = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 49;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/PathfinderDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d93eea4b3519478cd470e5b07e11263';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool idle
    geometry_msgs/Point desired_reference
    geometry_msgs/Point best_goal
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new PathfinderDiagnostics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.idle !== undefined) {
      resolved.idle = msg.idle;
    }
    else {
      resolved.idle = false
    }

    if (msg.desired_reference !== undefined) {
      resolved.desired_reference = geometry_msgs.msg.Point.Resolve(msg.desired_reference)
    }
    else {
      resolved.desired_reference = new geometry_msgs.msg.Point()
    }

    if (msg.best_goal !== undefined) {
      resolved.best_goal = geometry_msgs.msg.Point.Resolve(msg.best_goal)
    }
    else {
      resolved.best_goal = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = PathfinderDiagnostics;
