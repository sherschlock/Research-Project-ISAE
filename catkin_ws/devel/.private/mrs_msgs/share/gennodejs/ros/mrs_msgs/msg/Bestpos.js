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

class Bestpos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tersus_msg_header = null;
      this.solution_status = null;
      this.position_type = null;
      this.latitude = null;
      this.longitude = null;
      this.height = null;
      this.undulation = null;
      this.datum_id = null;
      this.latitude_std = null;
      this.longitude_std = null;
      this.height_std = null;
      this.base_station_id = null;
      this.diff_age = null;
      this.solution_age = null;
      this.num_satellites_tracked = null;
      this.num_satellites_used_in_solution = null;
      this.num_gps_and_glonass_l1_used_in_solution = null;
      this.num_gps_and_glonass_l1_and_l2_used_in_solution = null;
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
      if (initObj.hasOwnProperty('position_type')) {
        this.position_type = initObj.position_type
      }
      else {
        this.position_type = '';
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('datum_id')) {
        this.datum_id = initObj.datum_id
      }
      else {
        this.datum_id = '';
      }
      if (initObj.hasOwnProperty('latitude_std')) {
        this.latitude_std = initObj.latitude_std
      }
      else {
        this.latitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_std')) {
        this.longitude_std = initObj.longitude_std
      }
      else {
        this.longitude_std = 0.0;
      }
      if (initObj.hasOwnProperty('height_std')) {
        this.height_std = initObj.height_std
      }
      else {
        this.height_std = 0.0;
      }
      if (initObj.hasOwnProperty('base_station_id')) {
        this.base_station_id = initObj.base_station_id
      }
      else {
        this.base_station_id = '';
      }
      if (initObj.hasOwnProperty('diff_age')) {
        this.diff_age = initObj.diff_age
      }
      else {
        this.diff_age = 0.0;
      }
      if (initObj.hasOwnProperty('solution_age')) {
        this.solution_age = initObj.solution_age
      }
      else {
        this.solution_age = 0.0;
      }
      if (initObj.hasOwnProperty('num_satellites_tracked')) {
        this.num_satellites_tracked = initObj.num_satellites_tracked
      }
      else {
        this.num_satellites_tracked = 0;
      }
      if (initObj.hasOwnProperty('num_satellites_used_in_solution')) {
        this.num_satellites_used_in_solution = initObj.num_satellites_used_in_solution
      }
      else {
        this.num_satellites_used_in_solution = 0;
      }
      if (initObj.hasOwnProperty('num_gps_and_glonass_l1_used_in_solution')) {
        this.num_gps_and_glonass_l1_used_in_solution = initObj.num_gps_and_glonass_l1_used_in_solution
      }
      else {
        this.num_gps_and_glonass_l1_used_in_solution = 0;
      }
      if (initObj.hasOwnProperty('num_gps_and_glonass_l1_and_l2_used_in_solution')) {
        this.num_gps_and_glonass_l1_and_l2_used_in_solution = initObj.num_gps_and_glonass_l1_and_l2_used_in_solution
      }
      else {
        this.num_gps_and_glonass_l1_and_l2_used_in_solution = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bestpos
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tersus_msg_header]
    bufferOffset = TersusMessageHeader.serialize(obj.tersus_msg_header, buffer, bufferOffset);
    // Serialize message field [solution_status]
    bufferOffset = _serializer.string(obj.solution_status, buffer, bufferOffset);
    // Serialize message field [position_type]
    bufferOffset = _serializer.string(obj.position_type, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float32(obj.undulation, buffer, bufferOffset);
    // Serialize message field [datum_id]
    bufferOffset = _serializer.string(obj.datum_id, buffer, bufferOffset);
    // Serialize message field [latitude_std]
    bufferOffset = _serializer.float32(obj.latitude_std, buffer, bufferOffset);
    // Serialize message field [longitude_std]
    bufferOffset = _serializer.float32(obj.longitude_std, buffer, bufferOffset);
    // Serialize message field [height_std]
    bufferOffset = _serializer.float32(obj.height_std, buffer, bufferOffset);
    // Serialize message field [base_station_id]
    bufferOffset = _serializer.string(obj.base_station_id, buffer, bufferOffset);
    // Serialize message field [diff_age]
    bufferOffset = _serializer.float32(obj.diff_age, buffer, bufferOffset);
    // Serialize message field [solution_age]
    bufferOffset = _serializer.float32(obj.solution_age, buffer, bufferOffset);
    // Serialize message field [num_satellites_tracked]
    bufferOffset = _serializer.uint8(obj.num_satellites_tracked, buffer, bufferOffset);
    // Serialize message field [num_satellites_used_in_solution]
    bufferOffset = _serializer.uint8(obj.num_satellites_used_in_solution, buffer, bufferOffset);
    // Serialize message field [num_gps_and_glonass_l1_used_in_solution]
    bufferOffset = _serializer.uint8(obj.num_gps_and_glonass_l1_used_in_solution, buffer, bufferOffset);
    // Serialize message field [num_gps_and_glonass_l1_and_l2_used_in_solution]
    bufferOffset = _serializer.uint8(obj.num_gps_and_glonass_l1_and_l2_used_in_solution, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bestpos
    let len;
    let data = new Bestpos(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tersus_msg_header]
    data.tersus_msg_header = TersusMessageHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [solution_status]
    data.solution_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position_type]
    data.position_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [datum_id]
    data.datum_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [latitude_std]
    data.latitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_std]
    data.longitude_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height_std]
    data.height_std = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [base_station_id]
    data.base_station_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [diff_age]
    data.diff_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [solution_age]
    data.solution_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_satellites_tracked]
    data.num_satellites_tracked = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_satellites_used_in_solution]
    data.num_satellites_used_in_solution = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_gps_and_glonass_l1_used_in_solution]
    data.num_gps_and_glonass_l1_used_in_solution = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_gps_and_glonass_l1_and_l2_used_in_solution]
    data.num_gps_and_glonass_l1_and_l2_used_in_solution = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TersusMessageHeader.getMessageSize(object.tersus_msg_header);
    length += _getByteLength(object.solution_status);
    length += _getByteLength(object.position_type);
    length += _getByteLength(object.datum_id);
    length += _getByteLength(object.base_station_id);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Bestpos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '842f440d0b9e96e1173ab70db85161dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is modified version from Novatel
    # For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/BESTPOS.html
    # For Tersus see section 3.1.3 BESTPOS in https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
    # --------------------------------------------------------------------------------------
    
    Header header
    
    # message 42
    TersusMessageHeader tersus_msg_header
    
    string solution_status
    string position_type
    
    float64 latitude  # (degrees) 
    float64 longitude # (degrees) 
    float64 height    # Height above mean sea level (meters)
    
    float32 undulation  # Undulation - the relationship between the geoid and the ellipsoid (m) of the chosen datum
    string datum_id
    
    float32 latitude_std  # Latitude standard deviation (m) 
    float32 longitude_std # Longitude standard deviation (m) 
    float32 height_std    # Height standard deviation (m) 
    
    string base_station_id   # Base station ID
    
    float32 diff_age      # Differential age in seconds
    float32 solution_age  # Solution age in seconds
    
    uint8 num_satellites_tracked                          # Number of satellites tracked
    uint8 num_satellites_used_in_solution                 # Number of satellites used in solution 
    uint8 num_gps_and_glonass_l1_used_in_solution         # Number of satellites with L1/E1/B1 signals used in solution
    uint8 num_gps_and_glonass_l1_and_l2_used_in_solution  # Number of satellites with multi-frequency signals used in solution
    # TODO: define the rest of the message if it is necessary
    
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
    const resolved = new Bestpos(null);
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

    if (msg.position_type !== undefined) {
      resolved.position_type = msg.position_type;
    }
    else {
      resolved.position_type = ''
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.datum_id !== undefined) {
      resolved.datum_id = msg.datum_id;
    }
    else {
      resolved.datum_id = ''
    }

    if (msg.latitude_std !== undefined) {
      resolved.latitude_std = msg.latitude_std;
    }
    else {
      resolved.latitude_std = 0.0
    }

    if (msg.longitude_std !== undefined) {
      resolved.longitude_std = msg.longitude_std;
    }
    else {
      resolved.longitude_std = 0.0
    }

    if (msg.height_std !== undefined) {
      resolved.height_std = msg.height_std;
    }
    else {
      resolved.height_std = 0.0
    }

    if (msg.base_station_id !== undefined) {
      resolved.base_station_id = msg.base_station_id;
    }
    else {
      resolved.base_station_id = ''
    }

    if (msg.diff_age !== undefined) {
      resolved.diff_age = msg.diff_age;
    }
    else {
      resolved.diff_age = 0.0
    }

    if (msg.solution_age !== undefined) {
      resolved.solution_age = msg.solution_age;
    }
    else {
      resolved.solution_age = 0.0
    }

    if (msg.num_satellites_tracked !== undefined) {
      resolved.num_satellites_tracked = msg.num_satellites_tracked;
    }
    else {
      resolved.num_satellites_tracked = 0
    }

    if (msg.num_satellites_used_in_solution !== undefined) {
      resolved.num_satellites_used_in_solution = msg.num_satellites_used_in_solution;
    }
    else {
      resolved.num_satellites_used_in_solution = 0
    }

    if (msg.num_gps_and_glonass_l1_used_in_solution !== undefined) {
      resolved.num_gps_and_glonass_l1_used_in_solution = msg.num_gps_and_glonass_l1_used_in_solution;
    }
    else {
      resolved.num_gps_and_glonass_l1_used_in_solution = 0
    }

    if (msg.num_gps_and_glonass_l1_and_l2_used_in_solution !== undefined) {
      resolved.num_gps_and_glonass_l1_and_l2_used_in_solution = msg.num_gps_and_glonass_l1_and_l2_used_in_solution;
    }
    else {
      resolved.num_gps_and_glonass_l1_and_l2_used_in_solution = 0
    }

    return resolved;
    }
};

module.exports = Bestpos;
