// Auto-generated. Do not edit!

// (in-package mrs_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GpsData = require('./GpsData.js');
let RtkFixType = require('./RtkFixType.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class RtkGps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gps = null;
      this.pose = null;
      this.twist = null;
      this.status = null;
      this.fix_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gps')) {
        this.gps = initObj.gps
      }
      else {
        this.gps = new GpsData();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.TwistWithCovariance();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new sensor_msgs.msg.NavSatStatus();
      }
      if (initObj.hasOwnProperty('fix_type')) {
        this.fix_type = initObj.fix_type
      }
      else {
        this.fix_type = new RtkFixType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RtkGps
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gps]
    bufferOffset = GpsData.serialize(obj.gps, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = sensor_msgs.msg.NavSatStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [fix_type]
    bufferOffset = RtkFixType.serialize(obj.fix_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RtkGps
    let len;
    let data = new RtkGps(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gps]
    data.gps = GpsData.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = sensor_msgs.msg.NavSatStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [fix_type]
    data.fix_type = RtkFixType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 780;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/RtkGps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5dee1255adc6ec2f5748e9b9ee61cff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    mrs_msgs/GpsData gps
    geometry_msgs/PoseWithCovariance pose
    geometry_msgs/TwistWithCovariance twist
    sensor_msgs/NavSatStatus status
    mrs_msgs/RtkFixType fix_type
    
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
    MSG: mrs_msgs/GpsData
    float64 latitude
    float64 longitude
    float64 altitude
    float64[9] covariance
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    ================================================================================
    MSG: sensor_msgs/NavSatStatus
    # Navigation Satellite fix status for any Global Navigation Satellite System
    
    # Whether to output an augmented fix is determined by both the fix
    # type and the last time differential corrections were received.  A
    # fix is valid when status >= STATUS_FIX.
    
    int8 STATUS_NO_FIX =  -1        # unable to fix position
    int8 STATUS_FIX =      0        # unaugmented fix
    int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
    int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation
    
    int8 status
    
    # Bits defining which Global Navigation Satellite System signals were
    # used by the receiver.
    
    uint16 SERVICE_GPS =     1
    uint16 SERVICE_GLONASS = 2
    uint16 SERVICE_COMPASS = 4      # includes BeiDou.
    uint16 SERVICE_GALILEO = 8
    
    uint16 service
    
    ================================================================================
    MSG: mrs_msgs/RtkFixType
    uint8 RTK_FIX=5
    uint8 RTK_FLOAT=4
    uint8 UNKNOWN=3
    uint8 DGPS=2
    uint8 SPS=1
    uint8 NO_FIX=0
    uint8 fix_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RtkGps(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gps !== undefined) {
      resolved.gps = GpsData.Resolve(msg.gps)
    }
    else {
      resolved.gps = new GpsData()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.TwistWithCovariance()
    }

    if (msg.status !== undefined) {
      resolved.status = sensor_msgs.msg.NavSatStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new sensor_msgs.msg.NavSatStatus()
    }

    if (msg.fix_type !== undefined) {
      resolved.fix_type = RtkFixType.Resolve(msg.fix_type)
    }
    else {
      resolved.fix_type = new RtkFixType()
    }

    return resolved;
    }
};

module.exports = RtkGps;
