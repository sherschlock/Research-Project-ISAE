# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/PositionCommand.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class PositionCommand(genpy.Message):
  _md5sum = "4d8e95e3ee792c1a5ce3afe2d9f2396a"
  _type = "mrs_msgs/PositionCommand"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# This represents the output of the currently active Tracker (mrs_uav_manager::Tracker).
# This message is returned from a tracker by means of the update() function, called by the mrs_uav_manager::ControlManager.

std_msgs/Header header

# The desired position.
geometry_msgs/Point position

# The desired velocity.
geometry_msgs/Vector3 velocity

# The desired acceleration.
geometry_msgs/Vector3 acceleration

# The desired jerk.
geometry_msgs/Vector3 jerk

# The desired snap.
geometry_msgs/Vector3 snap

# The desired orientation and attitude rate.
# It is mutually exclusive to heading+heading_rate.
geometry_msgs/Quaternion orientation
geometry_msgs/Point attitude_rate

# when used, it will override the thrust output of the controller
float64 thrust

# The desired heading and heading rate.
# It is mutually exclusive to orientation+attitude_rate.
float64 heading
float64 heading_rate
float64 heading_acceleration
float64 heading_jerk

# Whether the controller should mute its position feedback.
# Useful, e.g., during takeoff or in situations where sudden control
# error is expected but not immediately required to be fixed.
bool disable_position_gains

# Whether the controller should disable its antiwindups
bool disable_antiwindups

# Flags defining whether the XY or Z position reference was filled in.
# If not, the controllers should pay no attention to it and to the corresponding control error.
uint8 use_position_horizontal
uint8 use_position_vertical

# Flags defining whether the XY or Z velocity reference was filled in.
# If not, the controllers should pay no attention to it and to the corresponding control error.
uint8 use_velocity_horizontal
uint8 use_velocity_vertical

# Flags defining which references were filled in.
# If not, the controllers should pay no attention to them and to the corresponding control errors.
uint8 use_acceleration
uint8 use_jerk
uint8 use_snap
uint8 use_attitude_rate
uint8 use_heading
uint8 use_heading_rate
uint8 use_heading_acceleration
uint8 use_heading_jerk
uint8 use_orientation
uint8 use_thrust

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['header','position','velocity','acceleration','jerk','snap','orientation','attitude_rate','thrust','heading','heading_rate','heading_acceleration','heading_jerk','disable_position_gains','disable_antiwindups','use_position_horizontal','use_position_vertical','use_velocity_horizontal','use_velocity_vertical','use_acceleration','use_jerk','use_snap','use_attitude_rate','use_heading','use_heading_rate','use_heading_acceleration','use_heading_jerk','use_orientation','use_thrust']
  _slot_types = ['std_msgs/Header','geometry_msgs/Point','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Quaternion','geometry_msgs/Point','float64','float64','float64','float64','float64','bool','bool','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,position,velocity,acceleration,jerk,snap,orientation,attitude_rate,thrust,heading,heading_rate,heading_acceleration,heading_jerk,disable_position_gains,disable_antiwindups,use_position_horizontal,use_position_vertical,use_velocity_horizontal,use_velocity_vertical,use_acceleration,use_jerk,use_snap,use_attitude_rate,use_heading,use_heading_rate,use_heading_acceleration,use_heading_jerk,use_orientation,use_thrust

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PositionCommand, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.velocity is None:
        self.velocity = geometry_msgs.msg.Vector3()
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Vector3()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Vector3()
      if self.snap is None:
        self.snap = geometry_msgs.msg.Vector3()
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      if self.attitude_rate is None:
        self.attitude_rate = geometry_msgs.msg.Point()
      if self.thrust is None:
        self.thrust = 0.
      if self.heading is None:
        self.heading = 0.
      if self.heading_rate is None:
        self.heading_rate = 0.
      if self.heading_acceleration is None:
        self.heading_acceleration = 0.
      if self.heading_jerk is None:
        self.heading_jerk = 0.
      if self.disable_position_gains is None:
        self.disable_position_gains = False
      if self.disable_antiwindups is None:
        self.disable_antiwindups = False
      if self.use_position_horizontal is None:
        self.use_position_horizontal = 0
      if self.use_position_vertical is None:
        self.use_position_vertical = 0
      if self.use_velocity_horizontal is None:
        self.use_velocity_horizontal = 0
      if self.use_velocity_vertical is None:
        self.use_velocity_vertical = 0
      if self.use_acceleration is None:
        self.use_acceleration = 0
      if self.use_jerk is None:
        self.use_jerk = 0
      if self.use_snap is None:
        self.use_snap = 0
      if self.use_attitude_rate is None:
        self.use_attitude_rate = 0
      if self.use_heading is None:
        self.use_heading = 0
      if self.use_heading_rate is None:
        self.use_heading_rate = 0
      if self.use_heading_acceleration is None:
        self.use_heading_acceleration = 0
      if self.use_heading_jerk is None:
        self.use_heading_jerk = 0
      if self.use_orientation is None:
        self.use_orientation = 0
      if self.use_thrust is None:
        self.use_thrust = 0
    else:
      self.header = std_msgs.msg.Header()
      self.position = geometry_msgs.msg.Point()
      self.velocity = geometry_msgs.msg.Vector3()
      self.acceleration = geometry_msgs.msg.Vector3()
      self.jerk = geometry_msgs.msg.Vector3()
      self.snap = geometry_msgs.msg.Vector3()
      self.orientation = geometry_msgs.msg.Quaternion()
      self.attitude_rate = geometry_msgs.msg.Point()
      self.thrust = 0.
      self.heading = 0.
      self.heading_rate = 0.
      self.heading_acceleration = 0.
      self.heading_jerk = 0.
      self.disable_position_gains = False
      self.disable_antiwindups = False
      self.use_position_horizontal = 0
      self.use_position_vertical = 0
      self.use_velocity_horizontal = 0
      self.use_velocity_vertical = 0
      self.use_acceleration = 0
      self.use_jerk = 0
      self.use_snap = 0
      self.use_attitude_rate = 0
      self.use_heading = 0
      self.use_heading_rate = 0
      self.use_heading_acceleration = 0
      self.use_heading_jerk = 0
      self.use_orientation = 0
      self.use_thrust = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_27d16B().pack(_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.snap.x, _x.snap.y, _x.snap.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.attitude_rate.x, _x.attitude_rate.y, _x.attitude_rate.z, _x.thrust, _x.heading, _x.heading_rate, _x.heading_acceleration, _x.heading_jerk, _x.disable_position_gains, _x.disable_antiwindups, _x.use_position_horizontal, _x.use_position_vertical, _x.use_velocity_horizontal, _x.use_velocity_vertical, _x.use_acceleration, _x.use_jerk, _x.use_snap, _x.use_attitude_rate, _x.use_heading, _x.use_heading_rate, _x.use_heading_acceleration, _x.use_heading_jerk, _x.use_orientation, _x.use_thrust))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.velocity is None:
        self.velocity = geometry_msgs.msg.Vector3()
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Vector3()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Vector3()
      if self.snap is None:
        self.snap = geometry_msgs.msg.Vector3()
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      if self.attitude_rate is None:
        self.attitude_rate = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 232
      (_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.snap.x, _x.snap.y, _x.snap.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.attitude_rate.x, _x.attitude_rate.y, _x.attitude_rate.z, _x.thrust, _x.heading, _x.heading_rate, _x.heading_acceleration, _x.heading_jerk, _x.disable_position_gains, _x.disable_antiwindups, _x.use_position_horizontal, _x.use_position_vertical, _x.use_velocity_horizontal, _x.use_velocity_vertical, _x.use_acceleration, _x.use_jerk, _x.use_snap, _x.use_attitude_rate, _x.use_heading, _x.use_heading_rate, _x.use_heading_acceleration, _x.use_heading_jerk, _x.use_orientation, _x.use_thrust,) = _get_struct_27d16B().unpack(str[start:end])
      self.disable_position_gains = bool(self.disable_position_gains)
      self.disable_antiwindups = bool(self.disable_antiwindups)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_27d16B().pack(_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.snap.x, _x.snap.y, _x.snap.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.attitude_rate.x, _x.attitude_rate.y, _x.attitude_rate.z, _x.thrust, _x.heading, _x.heading_rate, _x.heading_acceleration, _x.heading_jerk, _x.disable_position_gains, _x.disable_antiwindups, _x.use_position_horizontal, _x.use_position_vertical, _x.use_velocity_horizontal, _x.use_velocity_vertical, _x.use_acceleration, _x.use_jerk, _x.use_snap, _x.use_attitude_rate, _x.use_heading, _x.use_heading_rate, _x.use_heading_acceleration, _x.use_heading_jerk, _x.use_orientation, _x.use_thrust))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.position is None:
        self.position = geometry_msgs.msg.Point()
      if self.velocity is None:
        self.velocity = geometry_msgs.msg.Vector3()
      if self.acceleration is None:
        self.acceleration = geometry_msgs.msg.Vector3()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Vector3()
      if self.snap is None:
        self.snap = geometry_msgs.msg.Vector3()
      if self.orientation is None:
        self.orientation = geometry_msgs.msg.Quaternion()
      if self.attitude_rate is None:
        self.attitude_rate = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 232
      (_x.position.x, _x.position.y, _x.position.z, _x.velocity.x, _x.velocity.y, _x.velocity.z, _x.acceleration.x, _x.acceleration.y, _x.acceleration.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.snap.x, _x.snap.y, _x.snap.z, _x.orientation.x, _x.orientation.y, _x.orientation.z, _x.orientation.w, _x.attitude_rate.x, _x.attitude_rate.y, _x.attitude_rate.z, _x.thrust, _x.heading, _x.heading_rate, _x.heading_acceleration, _x.heading_jerk, _x.disable_position_gains, _x.disable_antiwindups, _x.use_position_horizontal, _x.use_position_vertical, _x.use_velocity_horizontal, _x.use_velocity_vertical, _x.use_acceleration, _x.use_jerk, _x.use_snap, _x.use_attitude_rate, _x.use_heading, _x.use_heading_rate, _x.use_heading_acceleration, _x.use_heading_jerk, _x.use_orientation, _x.use_thrust,) = _get_struct_27d16B().unpack(str[start:end])
      self.disable_position_gains = bool(self.disable_position_gains)
      self.disable_antiwindups = bool(self.disable_antiwindups)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_27d16B = None
def _get_struct_27d16B():
    global _struct_27d16B
    if _struct_27d16B is None:
        _struct_27d16B = struct.Struct("<27d16B")
    return _struct_27d16B
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
