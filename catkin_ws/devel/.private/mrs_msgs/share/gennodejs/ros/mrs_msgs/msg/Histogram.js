// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Histogram {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.unit = null;
      this.bin_size = null;
      this.bin_min = null;
      this.bin_max = null;
      this.bin_mark = null;
      this.bins = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
      if (initObj.hasOwnProperty('bin_size')) {
        this.bin_size = initObj.bin_size
      }
      else {
        this.bin_size = 0.0;
      }
      if (initObj.hasOwnProperty('bin_min')) {
        this.bin_min = initObj.bin_min
      }
      else {
        this.bin_min = 0.0;
      }
      if (initObj.hasOwnProperty('bin_max')) {
        this.bin_max = initObj.bin_max
      }
      else {
        this.bin_max = 0.0;
      }
      if (initObj.hasOwnProperty('bin_mark')) {
        this.bin_mark = initObj.bin_mark
      }
      else {
        this.bin_mark = 0;
      }
      if (initObj.hasOwnProperty('bins')) {
        this.bins = initObj.bins
      }
      else {
        this.bins = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Histogram
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    // Serialize message field [bin_size]
    bufferOffset = _serializer.float64(obj.bin_size, buffer, bufferOffset);
    // Serialize message field [bin_min]
    bufferOffset = _serializer.float64(obj.bin_min, buffer, bufferOffset);
    // Serialize message field [bin_max]
    bufferOffset = _serializer.float64(obj.bin_max, buffer, bufferOffset);
    // Serialize message field [bin_mark]
    bufferOffset = _serializer.uint32(obj.bin_mark, buffer, bufferOffset);
    // Serialize message field [bins]
    bufferOffset = _arraySerializer.float32(obj.bins, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Histogram
    let len;
    let data = new Histogram(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bin_size]
    data.bin_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bin_min]
    data.bin_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bin_max]
    data.bin_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bin_mark]
    data.bin_mark = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bins]
    data.bins = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.unit);
    length += 4 * object.bins.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/Histogram';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd299fa208b702809f19d8557835b7559';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a debug message for the mrs_bumper package.
    # It contains a histogram of depth values from a depthmap
    # image, if the depth sensor is used for obstacle detection.
    
    # Time at which the data in this message was generated, coordinate frame ID.
    std_msgs/Header header
    
    # Unit of distance measurement in the histogram (e.g. "mm" for millimeters").
    string    unit
    
    # Structure of the histogram.
    float64   bin_size
    float64   bin_min
    float64   bin_max
    
    # The mark at which an obstacle was detected (if equal to the number of bins,
    # no obstacle was detected).
    uint32    bin_mark
    
    # Bin values of the histogram.
    float32[] bins
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Histogram(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    if (msg.bin_size !== undefined) {
      resolved.bin_size = msg.bin_size;
    }
    else {
      resolved.bin_size = 0.0
    }

    if (msg.bin_min !== undefined) {
      resolved.bin_min = msg.bin_min;
    }
    else {
      resolved.bin_min = 0.0
    }

    if (msg.bin_max !== undefined) {
      resolved.bin_max = msg.bin_max;
    }
    else {
      resolved.bin_max = 0.0
    }

    if (msg.bin_mark !== undefined) {
      resolved.bin_mark = msg.bin_mark;
    }
    else {
      resolved.bin_mark = 0
    }

    if (msg.bins !== undefined) {
      resolved.bins = msg.bins;
    }
    else {
      resolved.bins = []
    }

    return resolved;
    }
};

module.exports = Histogram;
