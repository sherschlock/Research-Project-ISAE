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
let AltitudeType = require('./AltitudeType.js');
let HeadingType = require('./HeadingType.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UavState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.child_frame_id = null;
      this.estimator_horizontal = null;
      this.estimator_vertical = null;
      this.estimator_heading = null;
      this.estimator_iteration = null;
      this.pose = null;
      this.velocity = null;
      this.acceleration = null;
      this.acceleration_disturbance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('child_frame_id')) {
        this.child_frame_id = initObj.child_frame_id
      }
      else {
        this.child_frame_id = '';
      }
      if (initObj.hasOwnProperty('estimator_horizontal')) {
        this.estimator_horizontal = initObj.estimator_horizontal
      }
      else {
        this.estimator_horizontal = new EstimatorType();
      }
      if (initObj.hasOwnProperty('estimator_vertical')) {
        this.estimator_vertical = initObj.estimator_vertical
      }
      else {
        this.estimator_vertical = new AltitudeType();
      }
      if (initObj.hasOwnProperty('estimator_heading')) {
        this.estimator_heading = initObj.estimator_heading
      }
      else {
        this.estimator_heading = new HeadingType();
      }
      if (initObj.hasOwnProperty('estimator_iteration')) {
        this.estimator_iteration = initObj.estimator_iteration
      }
      else {
        this.estimator_iteration = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('acceleration_disturbance')) {
        this.acceleration_disturbance = initObj.acceleration_disturbance
      }
      else {
        this.acceleration_disturbance = new geometry_msgs.msg.Accel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UavState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [child_frame_id]
    bufferOffset = _serializer.string(obj.child_frame_id, buffer, bufferOffset);
    // Serialize message field [estimator_horizontal]
    bufferOffset = EstimatorType.serialize(obj.estimator_horizontal, buffer, bufferOffset);
    // Serialize message field [estimator_vertical]
    bufferOffset = AltitudeType.serialize(obj.estimator_vertical, buffer, bufferOffset);
    // Serialize message field [estimator_heading]
    bufferOffset = HeadingType.serialize(obj.estimator_heading, buffer, bufferOffset);
    // Serialize message field [estimator_iteration]
    bufferOffset = _serializer.uint32(obj.estimator_iteration, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [acceleration_disturbance]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.acceleration_disturbance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UavState
    let len;
    let data = new UavState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [estimator_horizontal]
    data.estimator_horizontal = EstimatorType.deserialize(buffer, bufferOffset);
    // Deserialize message field [estimator_vertical]
    data.estimator_vertical = AltitudeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [estimator_heading]
    data.estimator_heading = HeadingType.deserialize(buffer, bufferOffset);
    // Deserialize message field [estimator_iteration]
    data.estimator_iteration = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_disturbance]
    data.acceleration_disturbance = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.child_frame_id);
    length += EstimatorType.getMessageSize(object.estimator_horizontal);
    length += AltitudeType.getMessageSize(object.estimator_vertical);
    length += HeadingType.getMessageSize(object.estimator_heading);
    return length + 208;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/UavState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1503d21903aa0842a248ee0ea90f32c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string child_frame_id
    
    # text names of the used estimators
    mrs_msgs/EstimatorType estimator_horizontal
    mrs_msgs/AltitudeType estimator_vertical
    mrs_msgs/HeadingType estimator_heading
    
    # initiated with 0
    # increases if any estimator changes frame of reference
    # or if any estimator is resetted
    uint32 estimator_iteration
    
    geometry_msgs/Pose pose
    geometry_msgs/Twist velocity
    geometry_msgs/Accel acceleration
    geometry_msgs/Accel acceleration_disturbance
    
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
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UavState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.child_frame_id !== undefined) {
      resolved.child_frame_id = msg.child_frame_id;
    }
    else {
      resolved.child_frame_id = ''
    }

    if (msg.estimator_horizontal !== undefined) {
      resolved.estimator_horizontal = EstimatorType.Resolve(msg.estimator_horizontal)
    }
    else {
      resolved.estimator_horizontal = new EstimatorType()
    }

    if (msg.estimator_vertical !== undefined) {
      resolved.estimator_vertical = AltitudeType.Resolve(msg.estimator_vertical)
    }
    else {
      resolved.estimator_vertical = new AltitudeType()
    }

    if (msg.estimator_heading !== undefined) {
      resolved.estimator_heading = HeadingType.Resolve(msg.estimator_heading)
    }
    else {
      resolved.estimator_heading = new HeadingType()
    }

    if (msg.estimator_iteration !== undefined) {
      resolved.estimator_iteration = msg.estimator_iteration;
    }
    else {
      resolved.estimator_iteration = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Accel.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Accel()
    }

    if (msg.acceleration_disturbance !== undefined) {
      resolved.acceleration_disturbance = geometry_msgs.msg.Accel.Resolve(msg.acceleration_disturbance)
    }
    else {
      resolved.acceleration_disturbance = new geometry_msgs.msg.Accel()
    }

    return resolved;
    }
};

module.exports = UavState;
