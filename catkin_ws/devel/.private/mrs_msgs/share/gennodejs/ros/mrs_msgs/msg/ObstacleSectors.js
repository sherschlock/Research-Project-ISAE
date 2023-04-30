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

class ObstacleSectors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.n_horizontal_sectors = null;
      this.sectors_vertical_fov = null;
      this.sectors = null;
      this.sector_sensors = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('n_horizontal_sectors')) {
        this.n_horizontal_sectors = initObj.n_horizontal_sectors
      }
      else {
        this.n_horizontal_sectors = 0;
      }
      if (initObj.hasOwnProperty('sectors_vertical_fov')) {
        this.sectors_vertical_fov = initObj.sectors_vertical_fov
      }
      else {
        this.sectors_vertical_fov = 0.0;
      }
      if (initObj.hasOwnProperty('sectors')) {
        this.sectors = initObj.sectors
      }
      else {
        this.sectors = [];
      }
      if (initObj.hasOwnProperty('sector_sensors')) {
        this.sector_sensors = initObj.sector_sensors
      }
      else {
        this.sector_sensors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleSectors
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [n_horizontal_sectors]
    bufferOffset = _serializer.uint32(obj.n_horizontal_sectors, buffer, bufferOffset);
    // Serialize message field [sectors_vertical_fov]
    bufferOffset = _serializer.float64(obj.sectors_vertical_fov, buffer, bufferOffset);
    // Serialize message field [sectors]
    bufferOffset = _arraySerializer.float64(obj.sectors, buffer, bufferOffset, null);
    // Serialize message field [sector_sensors]
    bufferOffset = _arraySerializer.int8(obj.sector_sensors, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleSectors
    let len;
    let data = new ObstacleSectors(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [n_horizontal_sectors]
    data.n_horizontal_sectors = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sectors_vertical_fov]
    data.sectors_vertical_fov = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sectors]
    data.sectors = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sector_sensors]
    data.sector_sensors = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.sectors.length;
    length += object.sector_sensors.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mrs_msgs/ObstacleSectors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b30315b35f44636daa49d3ef18ea3c4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message represents the output from the mrs_bumper package.
    #
    # The *sectors* variable contains information about obstacles in the horizontal,
    # bottom and up sectors. Horizontal sectors take up the first part of the array.
    # Bottom and up sectors are the second and first elements from the end of the array:
    # sectors[0, 1, ..., n_horizontal_sectors-1] -> horizontal sectors
    # sectors[n_horizontal_sectors]              -> bottom sector
    # sectors[n_horizontal_sectors+1]            -> top sector
    #
    # The horizontal sectors are indexed counterclockwise, starting from the front facing
    # sector, relative to the MAV orientation (see picture below). The last two
    # elements of the *sectors* variable are the above and below sectors, respectively.
    #
    #         TOP VIEW
    #         --------
    #
    #        \         /
    #         \   0   /   (forward)
    #          \     /        x 
    #                         ^
    #            O O          |
    #        1    X    3   <--* z
    #            O O       y
    #                
    #          /     \
    #         /   2   \
    #        /         \
    
    # Time at which the data in this message was generated, coordinate frame ID.
    std_msgs/Header header
    
    # Number of horizontal bumper sectors (total number of sectors -2).
    uint32    n_horizontal_sectors
    
    # Vertical FOV of the individual horizontal sectors.
    float64   sectors_vertical_fov
    
    # Distance to closest detected obstacle in each sector.
    float64[] sectors
    
    # Sensor ID of the sensor, which was used for obstacle detection in each sector.
    int8[]    sector_sensors
    
    ## Obstacle distance special values.
    float64 OBSTACLE_NOT_DETECTED=-1
    float64 OBSTACLE_NO_DATA=-2
    
    ## Sensor types enum.
    int8 SENSOR_NONE=-1
    int8 SENSOR_DEPTH=0
    int8 SENSOR_LIDAR1D=1
    int8 SENSOR_LIDAR2D=2
    int8 SENSOR_LIDAR3D=3
    
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
    const resolved = new ObstacleSectors(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.n_horizontal_sectors !== undefined) {
      resolved.n_horizontal_sectors = msg.n_horizontal_sectors;
    }
    else {
      resolved.n_horizontal_sectors = 0
    }

    if (msg.sectors_vertical_fov !== undefined) {
      resolved.sectors_vertical_fov = msg.sectors_vertical_fov;
    }
    else {
      resolved.sectors_vertical_fov = 0.0
    }

    if (msg.sectors !== undefined) {
      resolved.sectors = msg.sectors;
    }
    else {
      resolved.sectors = []
    }

    if (msg.sector_sensors !== undefined) {
      resolved.sector_sensors = msg.sector_sensors;
    }
    else {
      resolved.sector_sensors = []
    }

    return resolved;
    }
};

// Constants for message
ObstacleSectors.Constants = {
  OBSTACLE_NOT_DETECTED: -1.0,
  OBSTACLE_NO_DATA: -2.0,
  SENSOR_NONE: -1,
  SENSOR_DEPTH: 0,
  SENSOR_LIDAR1D: 1,
  SENSOR_LIDAR2D: 2,
  SENSOR_LIDAR3D: 3,
}

module.exports = ObstacleSectors;
