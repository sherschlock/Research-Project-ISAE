// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EstimatorType = require('./EstimatorType.js');
let HeadingType = require('./HeadingType.js');
let AltitudeType = require('./AltitudeType.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class OdometryDiag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.max_altitude = null;
      this.estimator_type = null;
      this.heading_type = null;
      this.altitude_type = null;
      this.available_lat_estimators = null;
      this.available_hdg_estimators = null;
      this.available_alt_estimators = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('max_altitude')) {
        this.max_altitude = initObj.max_altitude
      }
      else {
        this.max_altitude = 0.0;
      }
      if (initObj.hasOwnProperty('estimator_type')) {
        this.estimator_type = initObj.estimator_type
      }
      else {
        this.estimator_type = new EstimatorType();
      }
      if (initObj.hasOwnProperty('heading_type')) {
        this.heading_type = initObj.heading_type
      }
      else {
        this.heading_type = new HeadingType();
      }
      if (initObj.hasOwnProperty('altitude_type')) {
        this.altitude_type = initObj.altitude_type
      }
      else {
        this.altitude_type = new AltitudeType();
      }
      if (initObj.hasOwnProperty('available_lat_estimators')) {
        this.available_lat_estimators = initObj.available_lat_estimators
      }
      else {
        this.available_lat_estimators = [];
      }
      if (initObj.hasOwnProperty('available_hdg_estimators')) {
        this.available_hdg_estimators = initObj.available_hdg_estimators
      }
      else {
        this.available_hdg_estimators = [];
      }
      if (initObj.hasOwnProperty('available_alt_estimators')) {
        this.available_alt_estimators = initObj.available_alt_estimators
      }
      else {
        this.available_alt_estimators = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdometryDiag
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [max_altitude]
    bufferOffset = _serializer.float64(obj.max_altitude, buffer, bufferOffset);
    // Serialize message field [estimator_type]
    bufferOffset = EstimatorType.serialize(obj.estimator_type, buffer, bufferOffset);
    // Serialize message field [heading_type]
    bufferOffset = HeadingType.serialize(obj.heading_type, buffer, bufferOffset);
    // Serialize message field [altitude_type]
    bufferOffset = AltitudeType.serialize(obj.altitude_type, buffer, bufferOffset);
    // Serialize message field [available_lat_estimators]
    bufferOffset = _arraySerializer.string(obj.available_lat_estimators, buffer, bufferOffset, null);
    // Serialize message field [available_hdg_estimators]
    bufferOffset = _arraySerializer.string(obj.available_hdg_estimators, buffer, bufferOffset, null);
    // Serialize message field [available_alt_estimators]
    bufferOffset = _arraySerializer.string(obj.available_alt_estimators, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdometryDiag
    let len;
    let data = new OdometryDiag(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_altitude]
    data.max_altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [estimator_type]
    data.estimator_type = EstimatorType.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_type]
    data.heading_type = HeadingType.deserialize(buffer, bufferOffset);
    // Deserialize message field [altitude_type]
    data.altitude_type = AltitudeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [available_lat_estimators]
    data.available_lat_estimators = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [available_hdg_estimators]
    data.available_hdg_estimators = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [available_alt_estimators]
    data.available_alt_estimators = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += EstimatorType.getMessageSize(object.estimator_type);
    length += HeadingType.getMessageSize(object.heading_type);
    length += AltitudeType.getMessageSize(object.altitude_type);
    object.available_lat_estimators.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.available_hdg_estimators.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.available_alt_estimators.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/OdometryDiag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3eedf113f8464b7a0aafebba055d3cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 max_altitude
    mrs_msgs/EstimatorType estimator_type
    mrs_msgs/HeadingType heading_type
    mrs_msgs/AltitudeType altitude_type
    string[] available_lat_estimators
    string[] available_hdg_estimators
    string[] available_alt_estimators
    
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
    MSG: mrs_msgs/EstimatorType
    uint8 OPTFLOW=0
    uint8 GPS=1
    uint8 OPTFLOWGPS=2
    uint8 RTK=3
    uint8 VIO=4
    uint8 BRICK=5
    uint8 T265=6
    uint8 HECTOR=7
    uint8 BRICKFLOW=8
    uint8 VSLAM=9
    uint8 ICP=10
    uint8 ALOAM=11
    uint8 ALOAMGARM=12
    uint8 ALOAMREP=13
    uint8 LIOSAM=14
    uint8 UWB=15
    
    uint8 TYPE_COUNT=16
    
    string name
    uint8 type
    
    ================================================================================
    MSG: mrs_msgs/HeadingType
    uint8 PIXHAWK=0
    uint8 GYRO=1
    uint8 COMPASS=2
    uint8 OPTFLOW=3
    uint8 HECTOR=4
    uint8 BRICK=5
    uint8 VIO=6
    uint8 VSLAM=7
    uint8 ICP=8
    uint8 BRICKFLOW=9
    uint8 ALOAM=10
    uint8 ALOAMREP=11
    uint8 LIOSAM=12
    
    uint8 TYPE_COUNT=13
    
    string name
    uint8 type
    
    ================================================================================
    MSG: mrs_msgs/AltitudeType
    uint8 HEIGHT=0
    uint8 PLANE=1
    uint8 BRICK=2
    uint8 VIO=3
    uint8 ALOAM=4
    uint8 ALOAMGARM=5
    uint8 ALOAMREP=6
    uint8 BARO=7
    uint8 RTK=8
    uint8 LIOSAM=9
    
    uint8 TYPE_COUNT=10
    
    string name
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdometryDiag(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.max_altitude !== undefined) {
      resolved.max_altitude = msg.max_altitude;
    }
    else {
      resolved.max_altitude = 0.0
    }

    if (msg.estimator_type !== undefined) {
      resolved.estimator_type = EstimatorType.Resolve(msg.estimator_type)
    }
    else {
      resolved.estimator_type = new EstimatorType()
    }

    if (msg.heading_type !== undefined) {
      resolved.heading_type = HeadingType.Resolve(msg.heading_type)
    }
    else {
      resolved.heading_type = new HeadingType()
    }

    if (msg.altitude_type !== undefined) {
      resolved.altitude_type = AltitudeType.Resolve(msg.altitude_type)
    }
    else {
      resolved.altitude_type = new AltitudeType()
    }

    if (msg.available_lat_estimators !== undefined) {
      resolved.available_lat_estimators = msg.available_lat_estimators;
    }
    else {
      resolved.available_lat_estimators = []
    }

    if (msg.available_hdg_estimators !== undefined) {
      resolved.available_hdg_estimators = msg.available_hdg_estimators;
    }
    else {
      resolved.available_hdg_estimators = []
    }

    if (msg.available_alt_estimators !== undefined) {
      resolved.available_alt_estimators = msg.available_alt_estimators;
    }
    else {
      resolved.available_alt_estimators = []
    }

    return resolved;
    }
};

module.exports = OdometryDiag;
