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

class MpcTrackerDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.uav_name = null;
      this.active = null;
      this.collision_avoidance_active = null;
      this.avoiding_collision = null;
      this.avoidance_active_uavs = null;
      this.setpoint = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('uav_name')) {
        this.uav_name = initObj.uav_name
      }
      else {
        this.uav_name = '';
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('collision_avoidance_active')) {
        this.collision_avoidance_active = initObj.collision_avoidance_active
      }
      else {
        this.collision_avoidance_active = false;
      }
      if (initObj.hasOwnProperty('avoiding_collision')) {
        this.avoiding_collision = initObj.avoiding_collision
      }
      else {
        this.avoiding_collision = false;
      }
      if (initObj.hasOwnProperty('avoidance_active_uavs')) {
        this.avoidance_active_uavs = initObj.avoidance_active_uavs
      }
      else {
        this.avoidance_active_uavs = [];
      }
      if (initObj.hasOwnProperty('setpoint')) {
        this.setpoint = initObj.setpoint
      }
      else {
        this.setpoint = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MpcTrackerDiagnostics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [uav_name]
    bufferOffset = _serializer.string(obj.uav_name, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [collision_avoidance_active]
    bufferOffset = _serializer.bool(obj.collision_avoidance_active, buffer, bufferOffset);
    // Serialize message field [avoiding_collision]
    bufferOffset = _serializer.bool(obj.avoiding_collision, buffer, bufferOffset);
    // Serialize message field [avoidance_active_uavs]
    bufferOffset = _arraySerializer.string(obj.avoidance_active_uavs, buffer, bufferOffset, null);
    // Serialize message field [setpoint]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.setpoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MpcTrackerDiagnostics
    let len;
    let data = new MpcTrackerDiagnostics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [uav_name]
    data.uav_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collision_avoidance_active]
    data.collision_avoidance_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [avoiding_collision]
    data.avoiding_collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [avoidance_active_uavs]
    data.avoidance_active_uavs = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [setpoint]
    data.setpoint = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.uav_name);
    object.avoidance_active_uavs.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 67;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/MpcTrackerDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fcb4d421dc34e3a114f4a7a3e1f6ee8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string uav_name
    bool active
    bool collision_avoidance_active
    bool avoiding_collision
    string[] avoidance_active_uavs
    geometry_msgs/Pose setpoint
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MpcTrackerDiagnostics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.uav_name !== undefined) {
      resolved.uav_name = msg.uav_name;
    }
    else {
      resolved.uav_name = ''
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.collision_avoidance_active !== undefined) {
      resolved.collision_avoidance_active = msg.collision_avoidance_active;
    }
    else {
      resolved.collision_avoidance_active = false
    }

    if (msg.avoiding_collision !== undefined) {
      resolved.avoiding_collision = msg.avoiding_collision;
    }
    else {
      resolved.avoiding_collision = false
    }

    if (msg.avoidance_active_uavs !== undefined) {
      resolved.avoidance_active_uavs = msg.avoidance_active_uavs;
    }
    else {
      resolved.avoidance_active_uavs = []
    }

    if (msg.setpoint !== undefined) {
      resolved.setpoint = geometry_msgs.msg.Pose.Resolve(msg.setpoint)
    }
    else {
      resolved.setpoint = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = MpcTrackerDiagnostics;
