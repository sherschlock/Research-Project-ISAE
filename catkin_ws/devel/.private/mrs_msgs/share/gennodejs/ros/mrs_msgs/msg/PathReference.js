// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Reference = require('./Reference.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PathReference {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.use_heading = null;
      this.fly_now = null;
      this.loop = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('use_heading')) {
        this.use_heading = initObj.use_heading
      }
      else {
        this.use_heading = false;
      }
      if (initObj.hasOwnProperty('fly_now')) {
        this.fly_now = initObj.fly_now
      }
      else {
        this.fly_now = false;
      }
      if (initObj.hasOwnProperty('loop')) {
        this.loop = initObj.loop
      }
      else {
        this.loop = false;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathReference
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [use_heading]
    bufferOffset = _serializer.bool(obj.use_heading, buffer, bufferOffset);
    // Serialize message field [fly_now]
    bufferOffset = _serializer.bool(obj.fly_now, buffer, bufferOffset);
    // Serialize message field [loop]
    bufferOffset = _serializer.bool(obj.loop, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = Reference.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathReference
    let len;
    let data = new PathReference(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [use_heading]
    data.use_heading = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fly_now]
    data.fly_now = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [loop]
    data.loop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = Reference.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 32 * object.points.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/PathReference';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b50abfb428c8f5152bf8e3026a07dc49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Path reference
    
    Header header
    
    # True if the heading part should be tracked, otherwise the tracker should maintain the current heading.
    bool use_heading
    
    # True if a planner should start being tracked immediately after receiving it.
    # Beware the header time stamp matters in this case.
    bool fly_now
    
    # True if the path should be looped.
    bool loop
    
    # The list of points in the path.
    Reference[] points 
    
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
    MSG: mrs_msgs/Reference
    # This message defines a control reference with a Position+Heading.
    
    geometry_msgs/Point position
    
    # Heading is atan2() of XY-world projection of the UAV's body X-axis.
    float64 heading
    
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
    const resolved = new PathReference(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.use_heading !== undefined) {
      resolved.use_heading = msg.use_heading;
    }
    else {
      resolved.use_heading = false
    }

    if (msg.fly_now !== undefined) {
      resolved.fly_now = msg.fly_now;
    }
    else {
      resolved.fly_now = false
    }

    if (msg.loop !== undefined) {
      resolved.loop = msg.loop;
    }
    else {
      resolved.loop = false
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = Reference.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = PathReference;
