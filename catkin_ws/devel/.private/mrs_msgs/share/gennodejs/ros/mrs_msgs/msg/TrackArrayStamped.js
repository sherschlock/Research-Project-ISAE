// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Track = require('./Track.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrackArrayStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracks')) {
        this.tracks = initObj.tracks
      }
      else {
        this.tracks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackArrayStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracks]
    // Serialize the length for message field [tracks]
    bufferOffset = _serializer.uint32(obj.tracks.length, buffer, bufferOffset);
    obj.tracks.forEach((val) => {
      bufferOffset = Track.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackArrayStamped
    let len;
    let data = new TrackArrayStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracks]
    // Deserialize array length for message field [tracks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracks[i] = Track.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 304 * object.tracks.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/TrackArrayStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0b496542aa3b02d9554e3f84cdfe92e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    mrs_msgs/Track[] tracks
    
    
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
    MSG: mrs_msgs/Track
    # This message represents an object being tracked in a three-dimensional
    # free space by a multi-target tracking algorithm.
    # Each tracked objects has a unique and persistent track ID,
    # a position, orientation and velocity estimate with uncertainties represented
    # by covariance matrices.
    
    # An ID of this track that is unique and persistent for the tracked object.
    uint64 id
    
    # The rest of this message contains the state estimate of the track,
    # including its position, orientation, and velocity and their respective
    # uncertainty covariance matrices. These are all expressed in a coordinate
    # frame, that is given in the header of the meta-message, containing this message.
    
    # Three-dimensional position of the track.
    geometry_msgs/Point position
    
    # Row-major representation of the 3x3 matrix of position covariance.
    # In order, the parameters are:
    # (x, y, z)
    float64[9] position_covariance
    
    # Three-dimensional orientation of the track.
    geometry_msgs/Quaternion orientation
    
    # Row-major representation of the 3x3 matrix of orientation covariance.
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[9] orientation_covariance
    
    # Velocity of the track in free space.
    geometry_msgs/Vector3 velocity
    
    # Row-major representation of the 3x3 matrix of velocity covariance.
    # In order, the parameters are:
    # (dx/dt, dy/dt, dz/dt)
    float64[9] velocity_covariance
    
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
    const resolved = new TrackArrayStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracks !== undefined) {
      resolved.tracks = new Array(msg.tracks.length);
      for (let i = 0; i < resolved.tracks.length; ++i) {
        resolved.tracks[i] = Track.Resolve(msg.tracks[i]);
      }
    }
    else {
      resolved.tracks = []
    }

    return resolved;
    }
};

module.exports = TrackArrayStamped;
