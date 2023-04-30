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
let RangeInformation = require('./RangeInformation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Range {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tersus_msg_header = null;
      this.numb_of_observ = null;
      this.info = null;
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
      if (initObj.hasOwnProperty('numb_of_observ')) {
        this.numb_of_observ = initObj.numb_of_observ
      }
      else {
        this.numb_of_observ = 0;
      }
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Range
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tersus_msg_header]
    bufferOffset = TersusMessageHeader.serialize(obj.tersus_msg_header, buffer, bufferOffset);
    // Serialize message field [numb_of_observ]
    bufferOffset = _serializer.int32(obj.numb_of_observ, buffer, bufferOffset);
    // Serialize message field [info]
    // Serialize the length for message field [info]
    bufferOffset = _serializer.uint32(obj.info.length, buffer, bufferOffset);
    obj.info.forEach((val) => {
      bufferOffset = RangeInformation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Range
    let len;
    let data = new Range(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tersus_msg_header]
    data.tersus_msg_header = TersusMessageHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [numb_of_observ]
    data.numb_of_observ = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [info]
    // Deserialize array length for message field [info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.info[i] = RangeInformation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TersusMessageHeader.getMessageSize(object.tersus_msg_header);
    length += 44 * object.info.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Range';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f8bff0e61f983e7883647ba50e7b66d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Satellite Range information from Tersus receiver
    
    Header header
    
    TersusMessageHeader tersus_msg_header
    
    #number of observations
    int32 numb_of_observ
    
    #range information for the observed 
    RangeInformation[] info
    
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
    
    ================================================================================
    MSG: mrs_msgs/RangeInformation
    #Satellite Range information structure used in range messages
    
    #Satelite PRN number of range measurement
    uint16 prn_number
    
    #GLONASS Frequency
    uint16 glofreq
    
    #Pseudorange measurement(m)
    float64 psr
    
    #Pseudorange measurement standard deviation(m)
    float32 psr_std
    
    #Carrier phase, in cycles
    float64 adr
    
    #Estimated carrier phase standard deviation(cycles)
    float32 adr_std
    
    #Instantaneous carrier Doppler frequency(Hz)
    float32 dopp
    
    #Carrier to noise density ratio
    float32 noise_density_ratio
    
    ## of seconds of continous tracking
    float32 locktime
    
    #Tracking status
    uint32 tracking_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Range(null);
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

    if (msg.numb_of_observ !== undefined) {
      resolved.numb_of_observ = msg.numb_of_observ;
    }
    else {
      resolved.numb_of_observ = 0
    }

    if (msg.info !== undefined) {
      resolved.info = new Array(msg.info.length);
      for (let i = 0; i < resolved.info.length; ++i) {
        resolved.info[i] = RangeInformation.Resolve(msg.info[i]);
      }
    }
    else {
      resolved.info = []
    }

    return resolved;
    }
};

module.exports = Range;
