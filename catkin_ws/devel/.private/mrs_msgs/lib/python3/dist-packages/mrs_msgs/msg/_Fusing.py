# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/Fusing.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mrs_msgs.msg

class Fusing(genpy.Message):
  _md5sum = "140fb768711cb5688a03db600c114f3f"
  _type = "mrs_msgs/Fusing"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """mrs_msgs/ModelState model_state
bool is_fusing
float64 covariance

================================================================================
MSG: mrs_msgs/ModelState
uint8 TILT=5
uint8 ACCELERATION=3
uint8 VELOCITY=1
uint8 POSITION=0
uint8 state
"""
  __slots__ = ['model_state','is_fusing','covariance']
  _slot_types = ['mrs_msgs/ModelState','bool','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       model_state,is_fusing,covariance

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Fusing, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.model_state is None:
        self.model_state = mrs_msgs.msg.ModelState()
      if self.is_fusing is None:
        self.is_fusing = False
      if self.covariance is None:
        self.covariance = 0.
    else:
      self.model_state = mrs_msgs.msg.ModelState()
      self.is_fusing = False
      self.covariance = 0.

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
      buff.write(_get_struct_2Bd().pack(_x.model_state.state, _x.is_fusing, _x.covariance))
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
      if self.model_state is None:
        self.model_state = mrs_msgs.msg.ModelState()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.model_state.state, _x.is_fusing, _x.covariance,) = _get_struct_2Bd().unpack(str[start:end])
      self.is_fusing = bool(self.is_fusing)
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
      buff.write(_get_struct_2Bd().pack(_x.model_state.state, _x.is_fusing, _x.covariance))
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
      if self.model_state is None:
        self.model_state = mrs_msgs.msg.ModelState()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.model_state.state, _x.is_fusing, _x.covariance,) = _get_struct_2Bd().unpack(str[start:end])
      self.is_fusing = bool(self.is_fusing)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Bd = None
def _get_struct_2Bd():
    global _struct_2Bd
    if _struct_2Bd is None:
        _struct_2Bd = struct.Struct("<2Bd")
    return _struct_2Bd