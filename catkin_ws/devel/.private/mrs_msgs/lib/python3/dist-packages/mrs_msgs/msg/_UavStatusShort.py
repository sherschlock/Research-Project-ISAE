# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/UavStatusShort.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UavStatusShort(genpy.Message):
  _md5sum = "799c7489ad9979eb43be3571ef53b456"
  _type = "mrs_msgs/UavStatusShort"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 odom_hz
int16 odom_color
float32 odom_x
float32 odom_y
float32 odom_z
float32 odom_hdg

float32 cmd_x
float32 cmd_y
float32 cmd_z
float32 cmd_hdg
"""
  __slots__ = ['odom_hz','odom_color','odom_x','odom_y','odom_z','odom_hdg','cmd_x','cmd_y','cmd_z','cmd_hdg']
  _slot_types = ['float32','int16','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       odom_hz,odom_color,odom_x,odom_y,odom_z,odom_hdg,cmd_x,cmd_y,cmd_z,cmd_hdg

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UavStatusShort, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.odom_hz is None:
        self.odom_hz = 0.
      if self.odom_color is None:
        self.odom_color = 0
      if self.odom_x is None:
        self.odom_x = 0.
      if self.odom_y is None:
        self.odom_y = 0.
      if self.odom_z is None:
        self.odom_z = 0.
      if self.odom_hdg is None:
        self.odom_hdg = 0.
      if self.cmd_x is None:
        self.cmd_x = 0.
      if self.cmd_y is None:
        self.cmd_y = 0.
      if self.cmd_z is None:
        self.cmd_z = 0.
      if self.cmd_hdg is None:
        self.cmd_hdg = 0.
    else:
      self.odom_hz = 0.
      self.odom_color = 0
      self.odom_x = 0.
      self.odom_y = 0.
      self.odom_z = 0.
      self.odom_hdg = 0.
      self.cmd_x = 0.
      self.cmd_y = 0.
      self.cmd_z = 0.
      self.cmd_hdg = 0.

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
      buff.write(_get_struct_fh8f().pack(_x.odom_hz, _x.odom_color, _x.odom_x, _x.odom_y, _x.odom_z, _x.odom_hdg, _x.cmd_x, _x.cmd_y, _x.cmd_z, _x.cmd_hdg))
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
      end = 0
      _x = self
      start = end
      end += 38
      (_x.odom_hz, _x.odom_color, _x.odom_x, _x.odom_y, _x.odom_z, _x.odom_hdg, _x.cmd_x, _x.cmd_y, _x.cmd_z, _x.cmd_hdg,) = _get_struct_fh8f().unpack(str[start:end])
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
      buff.write(_get_struct_fh8f().pack(_x.odom_hz, _x.odom_color, _x.odom_x, _x.odom_y, _x.odom_z, _x.odom_hdg, _x.cmd_x, _x.cmd_y, _x.cmd_z, _x.cmd_hdg))
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
      end = 0
      _x = self
      start = end
      end += 38
      (_x.odom_hz, _x.odom_color, _x.odom_x, _x.odom_y, _x.odom_z, _x.odom_hdg, _x.cmd_x, _x.cmd_y, _x.cmd_z, _x.cmd_hdg,) = _get_struct_fh8f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fh8f = None
def _get_struct_fh8f():
    global _struct_fh8f
    if _struct_fh8f is None:
        _struct_fh8f = struct.Struct("<fh8f")
    return _struct_fh8f
