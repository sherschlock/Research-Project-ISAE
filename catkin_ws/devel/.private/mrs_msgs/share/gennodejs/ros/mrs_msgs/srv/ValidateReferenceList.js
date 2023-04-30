// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ReferenceList = require('../msg/ReferenceList.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ValidateReferenceListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.list = null;
    }
    else {
      if (initObj.hasOwnProperty('list')) {
        this.list = initObj.list
      }
      else {
        this.list = new ReferenceList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ValidateReferenceListRequest
    // Serialize message field [list]
    bufferOffset = ReferenceList.serialize(obj.list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ValidateReferenceListRequest
    let len;
    let data = new ValidateReferenceListRequest(null);
    // Deserialize message field [list]
    data.list = ReferenceList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ReferenceList.getMessageSize(object.list);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ValidateReferenceListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1970fbb134b0c597ae73fed14084253';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mrs_msgs/ReferenceList list
    
    ================================================================================
    MSG: mrs_msgs/ReferenceList
    # A list of references.
    
    std_msgs/Header header
    mrs_msgs/Reference[] list
    
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
    MSG: mrs_msgs/Reference
    # This message defines a control reference with a Position+Heading.
    
    geometry_msgs/Point position
    
    # Heading is atan2() of XY-world projection of the UAV's body X-axis.
    float64 heading
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new ValidateReferenceListRequest(null);
    if (msg.list !== undefined) {
      resolved.list = ReferenceList.Resolve(msg.list)
    }
    else {
      resolved.list = new ReferenceList()
    }

    return resolved;
    }
};

class ValidateReferenceListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = [];
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ValidateReferenceListResponse
    // Serialize message field [success]
    bufferOffset = _arraySerializer.bool(obj.success, buffer, bufferOffset, null);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ValidateReferenceListResponse
    let len;
    let data = new ValidateReferenceListResponse(null);
    // Deserialize message field [success]
    data.success = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.success.length;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/ValidateReferenceListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9cda1e460b0cb7ddbcf255af79cd1d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ValidateReferenceListResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = []
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ValidateReferenceListRequest,
  Response: ValidateReferenceListResponse,
  md5sum() { return '816d5618f8279774a4a676445fc80658'; },
  datatype() { return 'mrs_msgs/ValidateReferenceList'; }
};
