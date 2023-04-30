// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Path = require('../msg/Path.js');

//-----------------------------------------------------------

let TrajectoryReference = require('../msg/TrajectoryReference.js');

//-----------------------------------------------------------

class GetPathSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPathSrvRequest
    // Serialize message field [path]
    bufferOffset = Path.serialize(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPathSrvRequest
    let len;
    let data = new GetPathSrvRequest(null);
    // Deserialize message field [path]
    data.path = Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Path.getMessageSize(object.path);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GetPathSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4b6f288dfb41c7f420ec189461dc5a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/Path path
    
    ================================================================================
    MSG: mrs_msgs/Path
    Header header
    
    int64 input_id
    
    bool use_heading
    bool fly_now
    bool stop_at_waypoints
    bool loop
    
    bool override_constraints
    float64 override_max_velocity_horizontal
    float64 override_max_acceleration_horizontal
    float64 override_max_jerk_horizontal
    float64 override_max_velocity_vertical
    float64 override_max_acceleration_vertical
    float64 override_max_jerk_vertical
    
    bool relax_heading
    
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
    const resolved = new GetPathSrvRequest(null);
    if (msg.path !== undefined) {
      resolved.path = Path.Resolve(msg.path)
    }
    else {
      resolved.path = new Path()
    }

    return resolved;
    }
};

class GetPathSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new TrajectoryReference();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPathSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [trajectory]
    bufferOffset = TrajectoryReference.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPathSrvResponse
    let len;
    let data = new GetPathSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    data.trajectory = TrajectoryReference.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += TrajectoryReference.getMessageSize(object.trajectory);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/GetPathSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82321dcf1fe038ae682bc80ec8b8b92d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    mrs_msgs/TrajectoryReference trajectory
    
    
    ================================================================================
    MSG: mrs_msgs/TrajectoryReference
    # The Trajectory reference that can be supplied to mrs_uav_manager::ControlManager.
    
    Header header
    
    # uniquely identifies the user input
    int64 input_id
    
    # True if the heading part should be tracked, otherwise the tracker should maintain the current heading.
    bool use_heading
    
    # True if the trajectory should start being tracked immediately after receiving it.
    # Beware the header time stamp matters in this case.
    bool fly_now
    
    # True if the trajectory should be looped.
    bool loop
    
    # The time difference between the trajectory samples.
    # It falls back to 0.2 s if left unset.
    float64 dt
    
    # The list of points in the trajectory, spaced by the dt.
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
    const resolved = new GetPathSrvResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = TrajectoryReference.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new TrajectoryReference()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetPathSrvRequest,
  Response: GetPathSrvResponse,
  md5sum() { return '2a60d1d5c00a767af0cb4448e8a7d3af'; },
  datatype() { return 'mrs_msgs/GetPathSrv'; }
};
