// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImageLabeled = require('./ImageLabeled.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImageLabeledArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.imgs_labeled = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('imgs_labeled')) {
        this.imgs_labeled = initObj.imgs_labeled
      }
      else {
        this.imgs_labeled = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageLabeledArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [imgs_labeled]
    // Serialize the length for message field [imgs_labeled]
    bufferOffset = _serializer.uint32(obj.imgs_labeled.length, buffer, bufferOffset);
    obj.imgs_labeled.forEach((val) => {
      bufferOffset = ImageLabeled.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageLabeledArray
    let len;
    let data = new ImageLabeledArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [imgs_labeled]
    // Deserialize array length for message field [imgs_labeled]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.imgs_labeled = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.imgs_labeled[i] = ImageLabeled.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.imgs_labeled.forEach((val) => {
      length += ImageLabeled.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ImageLabeledArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3994e4c6237f0873af89ad4ed9eb17f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents an Image and corresponding camera label
    # Can be suitable for any multi camera setup as UVDar or stereo pair
    # to synchronise all images on a ROS level (check all timestamps and
    # collect them in one array with one timestamp)
    
    Header header
    mrs_msgs/ImageLabeled[] imgs_labeled
    
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
    MSG: mrs_msgs/ImageLabeled
    string label
    sensor_msgs/Image img
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageLabeledArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.imgs_labeled !== undefined) {
      resolved.imgs_labeled = new Array(msg.imgs_labeled.length);
      for (let i = 0; i < resolved.imgs_labeled.length; ++i) {
        resolved.imgs_labeled[i] = ImageLabeled.Resolve(msg.imgs_labeled[i]);
      }
    }
    else {
      resolved.imgs_labeled = []
    }

    return resolved;
    }
};

module.exports = ImageLabeledArray;
