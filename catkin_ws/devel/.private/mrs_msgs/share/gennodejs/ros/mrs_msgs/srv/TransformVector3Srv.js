// Auto-generated. Do not edit!

// (in-package mrs_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TransformVector3SrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.vector = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('vector')) {
        this.vector = initObj.vector
      }
      else {
        this.vector = new geometry_msgs.msg.Vector3Stamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransformVector3SrvRequest
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [vector]
    bufferOffset = geometry_msgs.msg.Vector3Stamped.serialize(obj.vector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransformVector3SrvRequest
    let len;
    let data = new TransformVector3SrvRequest(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vector]
    data.vector = geometry_msgs.msg.Vector3Stamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    length += geometry_msgs.msg.Vector3Stamped.getMessageSize(object.vector);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/TransformVector3SrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a3504d21c79a1b4fa271983ddb50834';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string frame_id
    geometry_msgs/Vector3Stamped vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
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
    const resolved = new TransformVector3SrvRequest(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.vector !== undefined) {
      resolved.vector = geometry_msgs.msg.Vector3Stamped.Resolve(msg.vector)
    }
    else {
      resolved.vector = new geometry_msgs.msg.Vector3Stamped()
    }

    return resolved;
    }
};

class TransformVector3SrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.vector = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('vector')) {
        this.vector = initObj.vector
      }
      else {
        this.vector = new geometry_msgs.msg.Vector3Stamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransformVector3SrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [vector]
    bufferOffset = geometry_msgs.msg.Vector3Stamped.serialize(obj.vector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransformVector3SrvResponse
    let len;
    let data = new TransformVector3SrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vector]
    data.vector = geometry_msgs.msg.Vector3Stamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += geometry_msgs.msg.Vector3Stamped.getMessageSize(object.vector);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mrs_msgs/TransformVector3SrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '065556523f7781899747c0928cceb2c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    geometry_msgs/Vector3Stamped vector
    
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
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
    const resolved = new TransformVector3SrvResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.vector !== undefined) {
      resolved.vector = geometry_msgs.msg.Vector3Stamped.Resolve(msg.vector)
    }
    else {
      resolved.vector = new geometry_msgs.msg.Vector3Stamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: TransformVector3SrvRequest,
  Response: TransformVector3SrvResponse,
  md5sum() { return '997fb77f6976e071a4e765fdba14bb92'; },
  datatype() { return 'mrs_msgs/TransformVector3Srv'; }
};
