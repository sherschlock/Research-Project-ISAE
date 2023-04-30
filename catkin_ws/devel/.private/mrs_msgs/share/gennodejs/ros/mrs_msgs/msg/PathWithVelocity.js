// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReferenceWithVelocity = require('./ReferenceWithVelocity.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PathWithVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.input_id = null;
      this.use_heading = null;
      this.fly_now = null;
      this.stop_at_waypoints = null;
      this.loop = null;
      this.override_constraints = null;
      this.override_max_velocity_horizontal = null;
      this.override_max_acceleration_horizontal = null;
      this.override_max_velocity_vertical = null;
      this.override_max_acceleration_vertical = null;
      this.relax_heading = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('input_id')) {
        this.input_id = initObj.input_id
      }
      else {
        this.input_id = 0;
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
      if (initObj.hasOwnProperty('stop_at_waypoints')) {
        this.stop_at_waypoints = initObj.stop_at_waypoints
      }
      else {
        this.stop_at_waypoints = false;
      }
      if (initObj.hasOwnProperty('loop')) {
        this.loop = initObj.loop
      }
      else {
        this.loop = false;
      }
      if (initObj.hasOwnProperty('override_constraints')) {
        this.override_constraints = initObj.override_constraints
      }
      else {
        this.override_constraints = false;
      }
      if (initObj.hasOwnProperty('override_max_velocity_horizontal')) {
        this.override_max_velocity_horizontal = initObj.override_max_velocity_horizontal
      }
      else {
        this.override_max_velocity_horizontal = 0.0;
      }
      if (initObj.hasOwnProperty('override_max_acceleration_horizontal')) {
        this.override_max_acceleration_horizontal = initObj.override_max_acceleration_horizontal
      }
      else {
        this.override_max_acceleration_horizontal = 0.0;
      }
      if (initObj.hasOwnProperty('override_max_velocity_vertical')) {
        this.override_max_velocity_vertical = initObj.override_max_velocity_vertical
      }
      else {
        this.override_max_velocity_vertical = 0.0;
      }
      if (initObj.hasOwnProperty('override_max_acceleration_vertical')) {
        this.override_max_acceleration_vertical = initObj.override_max_acceleration_vertical
      }
      else {
        this.override_max_acceleration_vertical = 0.0;
      }
      if (initObj.hasOwnProperty('relax_heading')) {
        this.relax_heading = initObj.relax_heading
      }
      else {
        this.relax_heading = false;
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
    // Serializes a message object of type PathWithVelocity
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [input_id]
    bufferOffset = _serializer.int64(obj.input_id, buffer, bufferOffset);
    // Serialize message field [use_heading]
    bufferOffset = _serializer.bool(obj.use_heading, buffer, bufferOffset);
    // Serialize message field [fly_now]
    bufferOffset = _serializer.bool(obj.fly_now, buffer, bufferOffset);
    // Serialize message field [stop_at_waypoints]
    bufferOffset = _serializer.bool(obj.stop_at_waypoints, buffer, bufferOffset);
    // Serialize message field [loop]
    bufferOffset = _serializer.bool(obj.loop, buffer, bufferOffset);
    // Serialize message field [override_constraints]
    bufferOffset = _serializer.bool(obj.override_constraints, buffer, bufferOffset);
    // Serialize message field [override_max_velocity_horizontal]
    bufferOffset = _serializer.float64(obj.override_max_velocity_horizontal, buffer, bufferOffset);
    // Serialize message field [override_max_acceleration_horizontal]
    bufferOffset = _serializer.float64(obj.override_max_acceleration_horizontal, buffer, bufferOffset);
    // Serialize message field [override_max_velocity_vertical]
    bufferOffset = _serializer.float64(obj.override_max_velocity_vertical, buffer, bufferOffset);
    // Serialize message field [override_max_acceleration_vertical]
    bufferOffset = _serializer.float64(obj.override_max_acceleration_vertical, buffer, bufferOffset);
    // Serialize message field [relax_heading]
    bufferOffset = _serializer.bool(obj.relax_heading, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = ReferenceWithVelocity.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathWithVelocity
    let len;
    let data = new PathWithVelocity(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [input_id]
    data.input_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [use_heading]
    data.use_heading = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fly_now]
    data.fly_now = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop_at_waypoints]
    data.stop_at_waypoints = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [loop]
    data.loop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [override_constraints]
    data.override_constraints = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [override_max_velocity_horizontal]
    data.override_max_velocity_horizontal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [override_max_acceleration_horizontal]
    data.override_max_acceleration_horizontal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [override_max_velocity_vertical]
    data.override_max_velocity_vertical = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [override_max_acceleration_vertical]
    data.override_max_acceleration_vertical = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relax_heading]
    data.relax_heading = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = ReferenceWithVelocity.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 57 * object.points.length;
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/PathWithVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcbfefbbc71a86c06377c2c60f2cf152';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64 input_id
    
    bool use_heading
    bool fly_now
    bool stop_at_waypoints
    bool loop
    
    # if this is enabled, the slower velocity between the points and these overrides will be chosen
    bool override_constraints
    float64 override_max_velocity_horizontal
    float64 override_max_acceleration_horizontal
    float64 override_max_velocity_vertical
    float64 override_max_acceleration_vertical
    
    bool relax_heading
    
    ReferenceWithVelocity[] points
    
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
    MSG: mrs_msgs/ReferenceWithVelocity
    # This message defines a control reference with a Position+Heading.
    
    geometry_msgs/Point position
    
    # Heading is atan2() of XY-world projection of the UAV's body X-axis.
    float64 heading
    
    bool enforce_velocity
    geometry_msgs/Vector3 velocity
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new PathWithVelocity(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.input_id !== undefined) {
      resolved.input_id = msg.input_id;
    }
    else {
      resolved.input_id = 0
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

    if (msg.stop_at_waypoints !== undefined) {
      resolved.stop_at_waypoints = msg.stop_at_waypoints;
    }
    else {
      resolved.stop_at_waypoints = false
    }

    if (msg.loop !== undefined) {
      resolved.loop = msg.loop;
    }
    else {
      resolved.loop = false
    }

    if (msg.override_constraints !== undefined) {
      resolved.override_constraints = msg.override_constraints;
    }
    else {
      resolved.override_constraints = false
    }

    if (msg.override_max_velocity_horizontal !== undefined) {
      resolved.override_max_velocity_horizontal = msg.override_max_velocity_horizontal;
    }
    else {
      resolved.override_max_velocity_horizontal = 0.0
    }

    if (msg.override_max_acceleration_horizontal !== undefined) {
      resolved.override_max_acceleration_horizontal = msg.override_max_acceleration_horizontal;
    }
    else {
      resolved.override_max_acceleration_horizontal = 0.0
    }

    if (msg.override_max_velocity_vertical !== undefined) {
      resolved.override_max_velocity_vertical = msg.override_max_velocity_vertical;
    }
    else {
      resolved.override_max_velocity_vertical = 0.0
    }

    if (msg.override_max_acceleration_vertical !== undefined) {
      resolved.override_max_acceleration_vertical = msg.override_max_acceleration_vertical;
    }
    else {
      resolved.override_max_acceleration_vertical = 0.0
    }

    if (msg.relax_heading !== undefined) {
      resolved.relax_heading = msg.relax_heading;
    }
    else {
      resolved.relax_heading = false
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = ReferenceWithVelocity.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = PathWithVelocity;
