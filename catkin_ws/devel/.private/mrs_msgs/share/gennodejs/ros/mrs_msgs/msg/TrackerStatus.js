// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReferenceStamped = require('./ReferenceStamped.js');

//-----------------------------------------------------------

class TrackerStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.active = null;
      this.callbacks_enabled = null;
      this.have_goal = null;
      this.tracking_trajectory = null;
      this.trajectory_length = null;
      this.trajectory_idx = null;
      this.trajectory_reference = null;
    }
    else {
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
      if (initObj.hasOwnProperty('callbacks_enabled')) {
        this.callbacks_enabled = initObj.callbacks_enabled
      }
      else {
        this.callbacks_enabled = false;
      }
      if (initObj.hasOwnProperty('have_goal')) {
        this.have_goal = initObj.have_goal
      }
      else {
        this.have_goal = false;
      }
      if (initObj.hasOwnProperty('tracking_trajectory')) {
        this.tracking_trajectory = initObj.tracking_trajectory
      }
      else {
        this.tracking_trajectory = false;
      }
      if (initObj.hasOwnProperty('trajectory_length')) {
        this.trajectory_length = initObj.trajectory_length
      }
      else {
        this.trajectory_length = 0;
      }
      if (initObj.hasOwnProperty('trajectory_idx')) {
        this.trajectory_idx = initObj.trajectory_idx
      }
      else {
        this.trajectory_idx = 0;
      }
      if (initObj.hasOwnProperty('trajectory_reference')) {
        this.trajectory_reference = initObj.trajectory_reference
      }
      else {
        this.trajectory_reference = new ReferenceStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackerStatus
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    // Serialize message field [callbacks_enabled]
    bufferOffset = _serializer.bool(obj.callbacks_enabled, buffer, bufferOffset);
    // Serialize message field [have_goal]
    bufferOffset = _serializer.bool(obj.have_goal, buffer, bufferOffset);
    // Serialize message field [tracking_trajectory]
    bufferOffset = _serializer.bool(obj.tracking_trajectory, buffer, bufferOffset);
    // Serialize message field [trajectory_length]
    bufferOffset = _serializer.int32(obj.trajectory_length, buffer, bufferOffset);
    // Serialize message field [trajectory_idx]
    bufferOffset = _serializer.int32(obj.trajectory_idx, buffer, bufferOffset);
    // Serialize message field [trajectory_reference]
    bufferOffset = ReferenceStamped.serialize(obj.trajectory_reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackerStatus
    let len;
    let data = new TrackerStatus(null);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [callbacks_enabled]
    data.callbacks_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [have_goal]
    data.have_goal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tracking_trajectory]
    data.tracking_trajectory = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trajectory_length]
    data.trajectory_length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trajectory_idx]
    data.trajectory_idx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trajectory_reference]
    data.trajectory_reference = ReferenceStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ReferenceStamped.getMessageSize(object.trajectory_reference);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/TrackerStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b7beb41d4138c0f4dea92d6c49a50c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool active
    bool callbacks_enabled
    
    # is true whenever the tracker is doing something
    # in other words, not idling
    bool have_goal
    
    # is true only then a trajectory is being tracked
    bool tracking_trajectory
    
    int32 trajectory_length
    int32 trajectory_idx
    
    # only when following trajectory
    # the current reference in the trajectory UNINTERPOLATED
    mrs_msgs/ReferenceStamped trajectory_reference
    
    ================================================================================
    MSG: mrs_msgs/ReferenceStamped
    # A Positon+Heading reference with a header.
    
    std_msgs/Header header
    mrs_msgs/Reference reference
    
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
    const resolved = new TrackerStatus(null);
    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    if (msg.callbacks_enabled !== undefined) {
      resolved.callbacks_enabled = msg.callbacks_enabled;
    }
    else {
      resolved.callbacks_enabled = false
    }

    if (msg.have_goal !== undefined) {
      resolved.have_goal = msg.have_goal;
    }
    else {
      resolved.have_goal = false
    }

    if (msg.tracking_trajectory !== undefined) {
      resolved.tracking_trajectory = msg.tracking_trajectory;
    }
    else {
      resolved.tracking_trajectory = false
    }

    if (msg.trajectory_length !== undefined) {
      resolved.trajectory_length = msg.trajectory_length;
    }
    else {
      resolved.trajectory_length = 0
    }

    if (msg.trajectory_idx !== undefined) {
      resolved.trajectory_idx = msg.trajectory_idx;
    }
    else {
      resolved.trajectory_idx = 0
    }

    if (msg.trajectory_reference !== undefined) {
      resolved.trajectory_reference = ReferenceStamped.Resolve(msg.trajectory_reference)
    }
    else {
      resolved.trajectory_reference = new ReferenceStamped()
    }

    return resolved;
    }
};

module.exports = TrackerStatus;
