# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/TrackStamped.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import mrs_msgs.msg
import std_msgs.msg

class TrackStamped(genpy.Message):
  _md5sum = "c6db0655dd83e0f825aa628f8aa9e353"
  _type = "mrs_msgs/TrackStamped"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
mrs_msgs/Track  track


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
MSG: mrs_msgs/Track
# This message represents an object being tracked in a three-dimensional
# free space by a multi-target tracking algorithm.
# Each tracked objects has a unique and persistent track ID,
# a position, orientation and velocity estimate with uncertainties represented
# by covariance matrices.

# An ID of this track that is unique and persistent for the tracked object.
uint64 id

# The rest of this message contains the state estimate of the track,
# including its position, orientation, and velocity and their respective
# uncertainty covariance matrices. These are all expressed in a coordinate
# frame, that is given in the header of the meta-message, containing this message.

# Three-dimensional position of the track.
geometry_msgs/Point position

# Row-major representation of the 3x3 matrix of position covariance.
# In order, the parameters are:
# (x, y, z)
float64[9] position_covariance

# Three-dimensional orientation of the track.
geometry_msgs/Quaternion orientation

# Row-major representation of the 3x3 matrix of orientation covariance.
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[9] orientation_covariance

# Velocity of the track in free space.
geometry_msgs/Vector3 velocity

# Row-major representation of the 3x3 matrix of velocity covariance.
# In order, the parameters are:
# (dx/dt, dy/dt, dz/dt)
float64[9] velocity_covariance

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['header','track']
  _slot_types = ['std_msgs/Header','mrs_msgs/Track']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,track

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TrackStamped, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.track is None:
        self.track = mrs_msgs.msg.Track()
    else:
      self.header = std_msgs.msg.Header()
      self.track = mrs_msgs.msg.Track()

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
      buff.write(_get_struct_Q3d().pack(_x.track.id, _x.track.position.x, _x.track.position.y, _x.track.position.z))
      buff.write(_get_struct_9d().pack(*self.track.position_covariance))
      _x = self
      buff.write(_get_struct_4d().pack(_x.track.orientation.x, _x.track.orientation.y, _x.track.orientation.z, _x.track.orientation.w))
      buff.write(_get_struct_9d().pack(*self.track.orientation_covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.track.velocity.x, _x.track.velocity.y, _x.track.velocity.z))
      buff.write(_get_struct_9d().pack(*self.track.velocity_covariance))
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
      if self.track is None:
        self.track = mrs_msgs.msg.Track()
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
      end += 32
      (_x.track.id, _x.track.position.x, _x.track.position.y, _x.track.position.z,) = _get_struct_Q3d().unpack(str[start:end])
      start = end
      end += 72
      self.track.position_covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 32
      (_x.track.orientation.x, _x.track.orientation.y, _x.track.orientation.z, _x.track.orientation.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 72
      self.track.orientation_covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.track.velocity.x, _x.track.velocity.y, _x.track.velocity.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.track.velocity_covariance = _get_struct_9d().unpack(str[start:end])
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
      buff.write(_get_struct_Q3d().pack(_x.track.id, _x.track.position.x, _x.track.position.y, _x.track.position.z))
      buff.write(self.track.position_covariance.tostring())
      _x = self
      buff.write(_get_struct_4d().pack(_x.track.orientation.x, _x.track.orientation.y, _x.track.orientation.z, _x.track.orientation.w))
      buff.write(self.track.orientation_covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.track.velocity.x, _x.track.velocity.y, _x.track.velocity.z))
      buff.write(self.track.velocity_covariance.tostring())
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
      if self.track is None:
        self.track = mrs_msgs.msg.Track()
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
      end += 32
      (_x.track.id, _x.track.position.x, _x.track.position.y, _x.track.position.z,) = _get_struct_Q3d().unpack(str[start:end])
      start = end
      end += 72
      self.track.position_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 32
      (_x.track.orientation.x, _x.track.orientation.y, _x.track.orientation.z, _x.track.orientation.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 72
      self.track.orientation_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.track.velocity.x, _x.track.velocity.y, _x.track.velocity.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.track.velocity_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
_struct_Q3d = None
def _get_struct_Q3d():
    global _struct_Q3d
    if _struct_Q3d is None:
        _struct_Q3d = struct.Struct("<Q3d")
    return _struct_Q3d
