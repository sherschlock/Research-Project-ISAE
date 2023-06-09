# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/BumperStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class BumperStatus(genpy.Message):
  _md5sum = "61b2690b519e811c0a533b0dc63657c3"
  _type = "mrs_msgs/BumperStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp
bool repulsing
bool modifying_reference
"""
  __slots__ = ['stamp','repulsing','modifying_reference']
  _slot_types = ['time','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,repulsing,modifying_reference

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BumperStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.repulsing is None:
        self.repulsing = False
      if self.modifying_reference is None:
        self.modifying_reference = False
    else:
      self.stamp = genpy.Time()
      self.repulsing = False
      self.modifying_reference = False

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
      buff.write(_get_struct_2I2B().pack(_x.stamp.secs, _x.stamp.nsecs, _x.repulsing, _x.modifying_reference))
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
      if self.stamp is None:
        self.stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.stamp.secs, _x.stamp.nsecs, _x.repulsing, _x.modifying_reference,) = _get_struct_2I2B().unpack(str[start:end])
      self.repulsing = bool(self.repulsing)
      self.modifying_reference = bool(self.modifying_reference)
      self.stamp.canon()
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
      buff.write(_get_struct_2I2B().pack(_x.stamp.secs, _x.stamp.nsecs, _x.repulsing, _x.modifying_reference))
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
      if self.stamp is None:
        self.stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.stamp.secs, _x.stamp.nsecs, _x.repulsing, _x.modifying_reference,) = _get_struct_2I2B().unpack(str[start:end])
      self.repulsing = bool(self.repulsing)
      self.modifying_reference = bool(self.modifying_reference)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I2B = None
def _get_struct_2I2B():
    global _struct_2I2B
    if _struct_2I2B is None:
        _struct_2I2B = struct.Struct("<2I2B")
    return _struct_2I2B
