// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TersusMessageHeader = require('./TersusMessageHeader.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Bestvel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tersus_msg_header = null;
      this.solution_status = null;
      this.velocity_type = null;
      this.latency = null;
      this.age = null;
      this.horizontal_speed = null;
      this.track_ground = null;
      this.vertical_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tersus_msg_header')) {
        this.tersus_msg_header = initObj.tersus_msg_header
      }
      else {
        this.tersus_msg_header = new TersusMessageHeader();
      }
      if (initObj.hasOwnProperty('solution_status')) {
        this.solution_status = initObj.solution_status
      }
      else {
        this.solution_status = '';
      }
      if (initObj.hasOwnProperty('velocity_type')) {
        this.velocity_type = initObj.velocity_type
      }
      else {
        this.velocity_type = '';
      }
      if (initObj.hasOwnProperty('latency')) {
        this.latency = initObj.latency
      }
      else {
        this.latency = 0.0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0.0;
      }
      if (initObj.hasOwnProperty('horizontal_speed')) {
        this.horizontal_speed = initObj.horizontal_speed
      }
      else {
        this.horizontal_speed = 0.0;
      }
      if (initObj.hasOwnProperty('track_ground')) {
        this.track_ground = initObj.track_ground
      }
      else {
        this.track_ground = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_speed')) {
        this.vertical_speed = initObj.vertical_speed
      }
      else {
        this.vertical_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bestvel
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tersus_msg_header]
    bufferOffset = TersusMessageHeader.serialize(obj.tersus_msg_header, buffer, bufferOffset);
    // Serialize message field [solution_status]
    bufferOffset = _serializer.string(obj.solution_status, buffer, bufferOffset);
    // Serialize message field [velocity_type]
    bufferOffset = _serializer.string(obj.velocity_type, buffer, bufferOffset);
    // Serialize message field [latency]
    bufferOffset = _serializer.float32(obj.latency, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.float32(obj.age, buffer, bufferOffset);
    // Serialize message field [horizontal_speed]
    bufferOffset = _serializer.float64(obj.horizontal_speed, buffer, bufferOffset);
    // Serialize message field [track_ground]
    bufferOffset = _serializer.float64(obj.track_ground, buffer, bufferOffset);
    // Serialize message field [vertical_speed]
    bufferOffset = _serializer.float64(obj.vertical_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bestvel
    let len;
    let data = new Bestvel(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tersus_msg_header]
    data.tersus_msg_header = TersusMessageHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [solution_status]
    data.solution_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [velocity_type]
    data.velocity_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latency]
    data.latency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [horizontal_speed]
    data.horizontal_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track_ground]
    data.track_ground = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_speed]
    data.vertical_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TersusMessageHeader.getMessageSize(object.tersus_msg_header);
    length += _getByteLength(object.solution_status);
    length += _getByteLength(object.velocity_type);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Bestvel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02a85bdf86c56792843f3c24e6d61e43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # See section 3.1.4 BESTVEL in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
    # --------------------------------------------------------------------------------------
    
    Header header
    
    # message 99
    TersusMessageHeader tersus_msg_header
    
    string solution_status
    string velocity_type
    
    # A measure of the latency in the velocity time tag in seconds.
    float32 latency
    
    # Differential age in seconds
    float32 age
    
    # Horizontal speed over ground, meters/second
    float64 horizontal_speed
    
    # Direction of motion over ground with respect to true North, degrees
    float64 track_ground
    
    # Vertical speed, where positive values correspond to increasing altitude, meters/second
    float64 vertical_speed
    
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
    MSG: mrs_msgs/TersusMessageHeader
    # This is modified version from Novatel
    # For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html
    # For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
    # See section 1.5 in the Tersus manual.
    # --------------------------------------------------------------------------------------
    
    # On the wire, this header is preceeded by three sync bytes,
    # which are 0xAA 0x44 0x12, and a uint8 which is the header length.
    
    # Measurement source, format, response bit.
    string message_name
    
    string port_address
    
    uint16 sequence
    
    float32 idle_time
    
    # Table 1 in the Tersus manual.
    string time_status
    
    uint16 gps_week
    float32 gps_week_seconds
    
    uint32 receiver_status
    uint16 software_version
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bestvel(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tersus_msg_header !== undefined) {
      resolved.tersus_msg_header = TersusMessageHeader.Resolve(msg.tersus_msg_header)
    }
    else {
      resolved.tersus_msg_header = new TersusMessageHeader()
    }

    if (msg.solution_status !== undefined) {
      resolved.solution_status = msg.solution_status;
    }
    else {
      resolved.solution_status = ''
    }

    if (msg.velocity_type !== undefined) {
      resolved.velocity_type = msg.velocity_type;
    }
    else {
      resolved.velocity_type = ''
    }

    if (msg.latency !== undefined) {
      resolved.latency = msg.latency;
    }
    else {
      resolved.latency = 0.0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0.0
    }

    if (msg.horizontal_speed !== undefined) {
      resolved.horizontal_speed = msg.horizontal_speed;
    }
    else {
      resolved.horizontal_speed = 0.0
    }

    if (msg.track_ground !== undefined) {
      resolved.track_ground = msg.track_ground;
    }
    else {
      resolved.track_ground = 0.0
    }

    if (msg.vertical_speed !== undefined) {
      resolved.vertical_speed = msg.vertical_speed;
    }
    else {
      resolved.vertical_speed = 0.0
    }

    return resolved;
    }
};

module.exports = Bestvel;
