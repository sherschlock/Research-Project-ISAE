// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SpeedTrackerCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.velocity = null;
      this.acceleration = null;
      this.force = null;
      this.height = null;
      this.heading = null;
      this.heading_rate = null;
      this.use_velocity = null;
      this.use_acceleration = null;
      this.use_force = null;
      this.use_height = null;
      this.use_heading = null;
      this.use_heading_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('heading_rate')) {
        this.heading_rate = initObj.heading_rate
      }
      else {
        this.heading_rate = 0.0;
      }
      if (initObj.hasOwnProperty('use_velocity')) {
        this.use_velocity = initObj.use_velocity
      }
      else {
        this.use_velocity = false;
      }
      if (initObj.hasOwnProperty('use_acceleration')) {
        this.use_acceleration = initObj.use_acceleration
      }
      else {
        this.use_acceleration = false;
      }
      if (initObj.hasOwnProperty('use_force')) {
        this.use_force = initObj.use_force
      }
      else {
        this.use_force = false;
      }
      if (initObj.hasOwnProperty('use_height')) {
        this.use_height = initObj.use_height
      }
      else {
        this.use_height = false;
      }
      if (initObj.hasOwnProperty('use_heading')) {
        this.use_heading = initObj.use_heading
      }
      else {
        this.use_heading = false;
      }
      if (initObj.hasOwnProperty('use_heading_rate')) {
        this.use_heading_rate = initObj.use_heading_rate
      }
      else {
        this.use_heading_rate = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedTrackerCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [heading_rate]
    bufferOffset = _serializer.float64(obj.heading_rate, buffer, bufferOffset);
    // Serialize message field [use_velocity]
    bufferOffset = _serializer.bool(obj.use_velocity, buffer, bufferOffset);
    // Serialize message field [use_acceleration]
    bufferOffset = _serializer.bool(obj.use_acceleration, buffer, bufferOffset);
    // Serialize message field [use_force]
    bufferOffset = _serializer.bool(obj.use_force, buffer, bufferOffset);
    // Serialize message field [use_height]
    bufferOffset = _serializer.bool(obj.use_height, buffer, bufferOffset);
    // Serialize message field [use_heading]
    bufferOffset = _serializer.bool(obj.use_heading, buffer, bufferOffset);
    // Serialize message field [use_heading_rate]
    bufferOffset = _serializer.bool(obj.use_heading_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedTrackerCommand
    let len;
    let data = new SpeedTrackerCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_rate]
    data.heading_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [use_velocity]
    data.use_velocity = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_acceleration]
    data.use_acceleration = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_force]
    data.use_force = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_height]
    data.use_height = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_heading]
    data.use_heading = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_heading_rate]
    data.use_heading_rate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 102;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/SpeedTrackerCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bbd615ad5a88ff6da152b220d857737';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # contains the frame_id = your reference frame of choice
    std_msgs/Header header
    
    # desired velocity [m/s], optional
    geometry_msgs/Vector3 velocity
    
    # desired acceleration [m/s^2], optional
    geometry_msgs/Vector3 acceleration
    
    # desired force [N], optional
    geometry_msgs/Vector3 force
    
    # height above ground, optional
    float64 height
    
    # desired heading and its rate, optional
    # heading is "the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front"
    float64 heading
    float64 heading_rate
    
    # set to "true" if you want to control the state
    bool use_velocity
    bool use_acceleration
    bool use_force
    bool use_height
    bool use_heading
    bool use_heading_rate
    
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
    const resolved = new SpeedTrackerCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.force !== undefined) {
      resolved.force = geometry_msgs.msg.Vector3.Resolve(msg.force)
    }
    else {
      resolved.force = new geometry_msgs.msg.Vector3()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.heading_rate !== undefined) {
      resolved.heading_rate = msg.heading_rate;
    }
    else {
      resolved.heading_rate = 0.0
    }

    if (msg.use_velocity !== undefined) {
      resolved.use_velocity = msg.use_velocity;
    }
    else {
      resolved.use_velocity = false
    }

    if (msg.use_acceleration !== undefined) {
      resolved.use_acceleration = msg.use_acceleration;
    }
    else {
      resolved.use_acceleration = false
    }

    if (msg.use_force !== undefined) {
      resolved.use_force = msg.use_force;
    }
    else {
      resolved.use_force = false
    }

    if (msg.use_height !== undefined) {
      resolved.use_height = msg.use_height;
    }
    else {
      resolved.use_height = false
    }

    if (msg.use_heading !== undefined) {
      resolved.use_heading = msg.use_heading;
    }
    else {
      resolved.use_heading = false
    }

    if (msg.use_heading_rate !== undefined) {
      resolved.use_heading_rate = msg.use_heading_rate;
    }
    else {
      resolved.use_heading_rate = false
    }

    return resolved;
    }
};

module.exports = SpeedTrackerCommand;
