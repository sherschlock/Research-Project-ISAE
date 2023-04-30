// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryReference = require('../msg/TrajectoryReference.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TrajectoryReferenceSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new TrajectoryReference();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryReferenceSrvRequest
    // Serialize message field [trajectory]
    bufferOffset = TrajectoryReference.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryReferenceSrvRequest
    let len;
    let data = new TrajectoryReferenceSrvRequest(null);
    // Deserialize message field [trajectory]
    data.trajectory = TrajectoryReference.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TrajectoryReference.getMessageSize(object.trajectory);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/TrajectoryReferenceSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09635c6892c0e6445eaad7a00bcd4711';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrajectoryReferenceSrvRequest(null);
    if (msg.trajectory !== undefined) {
      resolved.trajectory = TrajectoryReference.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new TrajectoryReference()
    }

    return resolved;
    }
};

class TrajectoryReferenceSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.modified = null;
      this.tracker_names = null;
      this.tracker_successes = null;
      this.tracker_messages = null;
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
      if (initObj.hasOwnProperty('modified')) {
        this.modified = initObj.modified
      }
      else {
        this.modified = false;
      }
      if (initObj.hasOwnProperty('tracker_names')) {
        this.tracker_names = initObj.tracker_names
      }
      else {
        this.tracker_names = [];
      }
      if (initObj.hasOwnProperty('tracker_successes')) {
        this.tracker_successes = initObj.tracker_successes
      }
      else {
        this.tracker_successes = [];
      }
      if (initObj.hasOwnProperty('tracker_messages')) {
        this.tracker_messages = initObj.tracker_messages
      }
      else {
        this.tracker_messages = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryReferenceSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [modified]
    bufferOffset = _serializer.bool(obj.modified, buffer, bufferOffset);
    // Serialize message field [tracker_names]
    bufferOffset = _arraySerializer.string(obj.tracker_names, buffer, bufferOffset, null);
    // Serialize message field [tracker_successes]
    bufferOffset = _arraySerializer.bool(obj.tracker_successes, buffer, bufferOffset, null);
    // Serialize message field [tracker_messages]
    bufferOffset = _arraySerializer.string(obj.tracker_messages, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryReferenceSrvResponse
    let len;
    let data = new TrajectoryReferenceSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [modified]
    data.modified = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tracker_names]
    data.tracker_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [tracker_successes]
    data.tracker_successes = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [tracker_messages]
    data.tracker_messages = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.tracker_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += object.tracker_successes.length;
    object.tracker_messages.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/TrajectoryReferenceSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '399a71550ec8fdcd8d1971e2e759f8a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # response of the currently active tracker
    bool success
    string message
    bool modified
    
    # responses of each loaded tracker
    string[] tracker_names
    bool[] tracker_successes
    string[] tracker_messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryReferenceSrvResponse(null);
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

    if (msg.modified !== undefined) {
      resolved.modified = msg.modified;
    }
    else {
      resolved.modified = false
    }

    if (msg.tracker_names !== undefined) {
      resolved.tracker_names = msg.tracker_names;
    }
    else {
      resolved.tracker_names = []
    }

    if (msg.tracker_successes !== undefined) {
      resolved.tracker_successes = msg.tracker_successes;
    }
    else {
      resolved.tracker_successes = []
    }

    if (msg.tracker_messages !== undefined) {
      resolved.tracker_messages = msg.tracker_messages;
    }
    else {
      resolved.tracker_messages = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TrajectoryReferenceSrvRequest,
  Response: TrajectoryReferenceSrvResponse,
  md5sum() { return 'c46e24277d96ed318e50872a694d7abc'; },
  datatype() { return 'mrs_msgs/TrajectoryReferenceSrv'; }
};
