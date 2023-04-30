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

//-----------------------------------------------------------

class Track {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.position_covariance = null;
      this.orientation = null;
      this.orientation_covariance = null;
      this.velocity = null;
      this.velocity_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('position_covariance')) {
        this.position_covariance = initObj.position_covariance
      }
      else {
        this.position_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('orientation_covariance')) {
        this.orientation_covariance = initObj.orientation_covariance
      }
      else {
        this.orientation_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_covariance')) {
        this.velocity_covariance = initObj.velocity_covariance
      }
      else {
        this.velocity_covariance = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Track
    // Serialize message field [id]
    bufferOffset = _serializer.uint64(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Check that the constant length array field [position_covariance] has the right length
    if (obj.position_covariance.length !== 9) {
      throw new Error('Unable to serialize array field position_covariance - length must be 9')
    }
    // Serialize message field [position_covariance]
    bufferOffset = _arraySerializer.float64(obj.position_covariance, buffer, bufferOffset, 9);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Check that the constant length array field [orientation_covariance] has the right length
    if (obj.orientation_covariance.length !== 9) {
      throw new Error('Unable to serialize array field orientation_covariance - length must be 9')
    }
    // Serialize message field [orientation_covariance]
    bufferOffset = _arraySerializer.float64(obj.orientation_covariance, buffer, bufferOffset, 9);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Check that the constant length array field [velocity_covariance] has the right length
    if (obj.velocity_covariance.length !== 9) {
      throw new Error('Unable to serialize array field velocity_covariance - length must be 9')
    }
    // Serialize message field [velocity_covariance]
    bufferOffset = _arraySerializer.float64(obj.velocity_covariance, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Track
    let len;
    let data = new Track(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_covariance]
    data.position_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_covariance]
    data.orientation_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_covariance]
    data.velocity_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    return 304;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Track';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b27c85dc54166a137b9898639a69354';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Track(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.position_covariance !== undefined) {
      resolved.position_covariance = msg.position_covariance;
    }
    else {
      resolved.position_covariance = new Array(9).fill(0)
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.orientation_covariance !== undefined) {
      resolved.orientation_covariance = msg.orientation_covariance;
    }
    else {
      resolved.orientation_covariance = new Array(9).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_covariance !== undefined) {
      resolved.velocity_covariance = msg.velocity_covariance;
    }
    else {
      resolved.velocity_covariance = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = Track;
