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

class VelocityReference {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.velocity = null;
      this.altitude = null;
      this.heading = null;
      this.heading_rate = null;
      this.use_altitude = null;
      this.use_heading = null;
      this.use_heading_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
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
      if (initObj.hasOwnProperty('use_altitude')) {
        this.use_altitude = initObj.use_altitude
      }
      else {
        this.use_altitude = false;
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
    // Serializes a message object of type VelocityReference
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [heading_rate]
    bufferOffset = _serializer.float64(obj.heading_rate, buffer, bufferOffset);
    // Serialize message field [use_altitude]
    bufferOffset = _serializer.bool(obj.use_altitude, buffer, bufferOffset);
    // Serialize message field [use_heading]
    bufferOffset = _serializer.bool(obj.use_heading, buffer, bufferOffset);
    // Serialize message field [use_heading_rate]
    bufferOffset = _serializer.bool(obj.use_heading_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelocityReference
    let len;
    let data = new VelocityReference(null);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_rate]
    data.heading_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [use_altitude]
    data.use_altitude = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_heading]
    data.use_heading = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_heading_rate]
    data.use_heading_rate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/VelocityReference';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2348b640862acc25f552bfe7973e0390';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new VelocityReference(null);
    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
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

    if (msg.use_altitude !== undefined) {
      resolved.use_altitude = msg.use_altitude;
    }
    else {
      resolved.use_altitude = false
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

module.exports = VelocityReference;
