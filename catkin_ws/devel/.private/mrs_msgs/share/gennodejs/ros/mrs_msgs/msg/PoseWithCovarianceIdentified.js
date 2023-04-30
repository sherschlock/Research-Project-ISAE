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

class PoseWithCovarianceIdentified {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pose = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(36).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseWithCovarianceIdentified
    // Serialize message field [id]
    bufferOffset = _serializer.uint64(obj.id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 36) {
      throw new Error('Unable to serialize array field covariance - length must be 36')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseWithCovarianceIdentified
    let len;
    let data = new PoseWithCovarianceIdentified(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    return 352;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/PoseWithCovarianceIdentified';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dcebff621732fb590dbf67c491184e03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 id
    geometry_msgs/Pose pose
    float64[36] covariance
    
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
    const resolved = new PoseWithCovarianceIdentified(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(36).fill(0)
    }

    return resolved;
    }
};

module.exports = PoseWithCovarianceIdentified;
