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

class MpcPredictionFullState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.input_id = null;
      this.stamps = null;
      this.position = null;
      this.velocity = null;
      this.acceleration = null;
      this.jerk = null;
      this.heading = null;
      this.heading_rate = null;
      this.heading_acceleration = null;
      this.heading_jerk = null;
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
      if (initObj.hasOwnProperty('stamps')) {
        this.stamps = initObj.stamps
      }
      else {
        this.stamps = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = [];
      }
      if (initObj.hasOwnProperty('jerk')) {
        this.jerk = initObj.jerk
      }
      else {
        this.jerk = [];
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = [];
      }
      if (initObj.hasOwnProperty('heading_rate')) {
        this.heading_rate = initObj.heading_rate
      }
      else {
        this.heading_rate = [];
      }
      if (initObj.hasOwnProperty('heading_acceleration')) {
        this.heading_acceleration = initObj.heading_acceleration
      }
      else {
        this.heading_acceleration = [];
      }
      if (initObj.hasOwnProperty('heading_jerk')) {
        this.heading_jerk = initObj.heading_jerk
      }
      else {
        this.heading_jerk = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MpcPredictionFullState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [input_id]
    bufferOffset = _serializer.int64(obj.input_id, buffer, bufferOffset);
    // Serialize message field [stamps]
    bufferOffset = _arraySerializer.time(obj.stamps, buffer, bufferOffset, null);
    // Serialize message field [position]
    // Serialize the length for message field [position]
    bufferOffset = _serializer.uint32(obj.position.length, buffer, bufferOffset);
    obj.position.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocity]
    // Serialize the length for message field [velocity]
    bufferOffset = _serializer.uint32(obj.velocity.length, buffer, bufferOffset);
    obj.velocity.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [acceleration]
    // Serialize the length for message field [acceleration]
    bufferOffset = _serializer.uint32(obj.acceleration.length, buffer, bufferOffset);
    obj.acceleration.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [jerk]
    // Serialize the length for message field [jerk]
    bufferOffset = _serializer.uint32(obj.jerk.length, buffer, bufferOffset);
    obj.jerk.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [heading]
    bufferOffset = _arraySerializer.float64(obj.heading, buffer, bufferOffset, null);
    // Serialize message field [heading_rate]
    bufferOffset = _arraySerializer.float64(obj.heading_rate, buffer, bufferOffset, null);
    // Serialize message field [heading_acceleration]
    bufferOffset = _arraySerializer.float64(obj.heading_acceleration, buffer, bufferOffset, null);
    // Serialize message field [heading_jerk]
    bufferOffset = _arraySerializer.float64(obj.heading_jerk, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MpcPredictionFullState
    let len;
    let data = new MpcPredictionFullState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [input_id]
    data.input_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [stamps]
    data.stamps = _arrayDeserializer.time(buffer, bufferOffset, null)
    // Deserialize message field [position]
    // Deserialize array length for message field [position]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.position = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.position[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocity]
    // Deserialize array length for message field [velocity]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.velocity = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.velocity[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [acceleration]
    // Deserialize array length for message field [acceleration]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.acceleration = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.acceleration[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [jerk]
    // Deserialize array length for message field [jerk]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.jerk = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.jerk[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [heading]
    data.heading = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [heading_rate]
    data.heading_rate = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [heading_acceleration]
    data.heading_acceleration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [heading_jerk]
    data.heading_jerk = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.stamps.length;
    length += 24 * object.position.length;
    length += 24 * object.velocity.length;
    length += 24 * object.acceleration.length;
    length += 24 * object.jerk.length;
    length += 8 * object.heading.length;
    length += 8 * object.heading_rate.length;
    length += 8 * object.heading_acceleration.length;
    length += 8 * object.heading_jerk.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/MpcPredictionFullState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5995e9f2a99f717a78b7d7961123a9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int64 input_id
    
    time[] stamps
    
    geometry_msgs/Point[] position
    geometry_msgs/Vector3[] velocity
    geometry_msgs/Vector3[] acceleration
    geometry_msgs/Vector3[] jerk
    
    float64[] heading
    float64[] heading_rate
    float64[] heading_acceleration
    float64[] heading_jerk
    
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
    const resolved = new MpcPredictionFullState(null);
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

    if (msg.stamps !== undefined) {
      resolved.stamps = msg.stamps;
    }
    else {
      resolved.stamps = []
    }

    if (msg.position !== undefined) {
      resolved.position = new Array(msg.position.length);
      for (let i = 0; i < resolved.position.length; ++i) {
        resolved.position[i] = geometry_msgs.msg.Point.Resolve(msg.position[i]);
      }
    }
    else {
      resolved.position = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = new Array(msg.velocity.length);
      for (let i = 0; i < resolved.velocity.length; ++i) {
        resolved.velocity[i] = geometry_msgs.msg.Vector3.Resolve(msg.velocity[i]);
      }
    }
    else {
      resolved.velocity = []
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = new Array(msg.acceleration.length);
      for (let i = 0; i < resolved.acceleration.length; ++i) {
        resolved.acceleration[i] = geometry_msgs.msg.Vector3.Resolve(msg.acceleration[i]);
      }
    }
    else {
      resolved.acceleration = []
    }

    if (msg.jerk !== undefined) {
      resolved.jerk = new Array(msg.jerk.length);
      for (let i = 0; i < resolved.jerk.length; ++i) {
        resolved.jerk[i] = geometry_msgs.msg.Vector3.Resolve(msg.jerk[i]);
      }
    }
    else {
      resolved.jerk = []
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = []
    }

    if (msg.heading_rate !== undefined) {
      resolved.heading_rate = msg.heading_rate;
    }
    else {
      resolved.heading_rate = []
    }

    if (msg.heading_acceleration !== undefined) {
      resolved.heading_acceleration = msg.heading_acceleration;
    }
    else {
      resolved.heading_acceleration = []
    }

    if (msg.heading_jerk !== undefined) {
      resolved.heading_jerk = msg.heading_jerk;
    }
    else {
      resolved.heading_jerk = []
    }

    return resolved;
    }
};

module.exports = MpcPredictionFullState;
