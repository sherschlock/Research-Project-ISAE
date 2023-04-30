// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VelocityReference = require('./VelocityReference.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VelocityReferenceStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.reference = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = new VelocityReference();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelocityReferenceStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [reference]
    bufferOffset = VelocityReference.serialize(obj.reference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityReferenceStamped
    let len;
    let data = new VelocityReferenceStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference]
    data.reference = VelocityReference.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/VelocityReferenceStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9dc32c82b2b9ffd6f16c8bf17c42baad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # contains the frame_id = your reference frame of choice
    std_msgs/Header header
    
    mrs_msgs/VelocityReference reference
    
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
    MSG: mrs_msgs/VelocityReference
    # desired velocity [m/s]
    geometry_msgs/Vector3 velocity
    
    # altitude
    float64 altitude
    
    # desired heading and its rate, optional
    # heading is "the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front"
    float64 heading
    float64 heading_rate
    
    # overrides vertical velocity
    bool use_altitude
    
    bool use_heading
    
    # overrides heading
    bool use_heading_rate
    
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
    const resolved = new VelocityReferenceStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.reference !== undefined) {
      resolved.reference = VelocityReference.Resolve(msg.reference)
    }
    else {
      resolved.reference = new VelocityReference()
    }

    return resolved;
    }
};

module.exports = VelocityReferenceStamped;
