# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/ImagePointsWithFloatStamped.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import mrs_msgs.msg

class ImagePointsWithFloatStamped(genpy.Message):
  _md5sum = "2f80394ba17236fe2f5a874f644ea3a5"
  _type = "mrs_msgs/ImagePointsWithFloatStamped"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp
uint32 image_height
uint32 image_width
mrs_msgs/Point2DWithFloat[] points

================================================================================
MSG: mrs_msgs/Point2DWithFloat
float64 x
float64 y
float64 value
"""
  __slots__ = ['stamp','image_height','image_width','points']
  _slot_types = ['time','uint32','uint32','mrs_msgs/Point2DWithFloat[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,image_height,image_width,points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ImagePointsWithFloatStamped, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.image_height is None:
        self.image_height = 0
      if self.image_width is None:
        self.image_width = 0
      if self.points is None:
        self.points = []
    else:
      self.stamp = genpy.Time()
      self.image_height = 0
      self.image_width = 0
      self.points = []

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
      buff.write(_get_struct_4I().pack(_x.stamp.secs, _x.stamp.nsecs, _x.image_height, _x.image_width))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.value))
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
      if self.points is None:
        self.points = None
      end = 0
      _x = self
      start = end
      end += 16
      (_x.stamp.secs, _x.stamp.nsecs, _x.image_height, _x.image_width,) = _get_struct_4I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = mrs_msgs.msg.Point2DWithFloat()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.value,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
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
      buff.write(_get_struct_4I().pack(_x.stamp.secs, _x.stamp.nsecs, _x.image_height, _x.image_width))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.value))
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
      if self.points is None:
        self.points = None
      end = 0
      _x = self
      start = end
      end += 16
      (_x.stamp.secs, _x.stamp.nsecs, _x.image_height, _x.image_width,) = _get_struct_4I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = mrs_msgs.msg.Point2DWithFloat()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.value,) = _get_struct_3d().unpack(str[start:end])
        self.points.append(val1)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4I = None
def _get_struct_4I():
    global _struct_4I
    if _struct_4I is None:
        _struct_4I = struct.Struct("<4I")
    return _struct_4I
