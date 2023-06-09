# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/Gpvtg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Gpvtg(genpy.Message):
  _md5sum = "0b69a1dd6c8e499d5fb746b8067a62d9"
  _type = "mrs_msgs/Gpvtg"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

string message_id

float64 track_true
string track_true_indicator

float64 track_mag
string track_mag_indicator

float64 speed_knots
string speed_knots_indicator

float64 speed_kmh
string speed_kmh_indicator

string mode_indicator

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
"""
  __slots__ = ['header','message_id','track_true','track_true_indicator','track_mag','track_mag_indicator','speed_knots','speed_knots_indicator','speed_kmh','speed_kmh_indicator','mode_indicator']
  _slot_types = ['std_msgs/Header','string','float64','string','float64','string','float64','string','float64','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,message_id,track_true,track_true_indicator,track_mag,track_mag_indicator,speed_knots,speed_knots_indicator,speed_kmh,speed_kmh_indicator,mode_indicator

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Gpvtg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.message_id is None:
        self.message_id = ''
      if self.track_true is None:
        self.track_true = 0.
      if self.track_true_indicator is None:
        self.track_true_indicator = ''
      if self.track_mag is None:
        self.track_mag = 0.
      if self.track_mag_indicator is None:
        self.track_mag_indicator = ''
      if self.speed_knots is None:
        self.speed_knots = 0.
      if self.speed_knots_indicator is None:
        self.speed_knots_indicator = ''
      if self.speed_kmh is None:
        self.speed_kmh = 0.
      if self.speed_kmh_indicator is None:
        self.speed_kmh_indicator = ''
      if self.mode_indicator is None:
        self.mode_indicator = ''
    else:
      self.header = std_msgs.msg.Header()
      self.message_id = ''
      self.track_true = 0.
      self.track_true_indicator = ''
      self.track_mag = 0.
      self.track_mag_indicator = ''
      self.speed_knots = 0.
      self.speed_knots_indicator = ''
      self.speed_kmh = 0.
      self.speed_kmh_indicator = ''
      self.mode_indicator = ''

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
      _x = self.message_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.track_true
      buff.write(_get_struct_d().pack(_x))
      _x = self.track_true_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.track_mag
      buff.write(_get_struct_d().pack(_x))
      _x = self.track_mag_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.speed_knots
      buff.write(_get_struct_d().pack(_x))
      _x = self.speed_knots_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.speed_kmh
      buff.write(_get_struct_d().pack(_x))
      _x = self.speed_kmh_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mode_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message_id = str[start:end]
      start = end
      end += 8
      (self.track_true,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.track_true_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.track_true_indicator = str[start:end]
      start = end
      end += 8
      (self.track_mag,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.track_mag_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.track_mag_indicator = str[start:end]
      start = end
      end += 8
      (self.speed_knots,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed_knots_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.speed_knots_indicator = str[start:end]
      start = end
      end += 8
      (self.speed_kmh,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed_kmh_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.speed_kmh_indicator = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mode_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mode_indicator = str[start:end]
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
      _x = self.message_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.track_true
      buff.write(_get_struct_d().pack(_x))
      _x = self.track_true_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.track_mag
      buff.write(_get_struct_d().pack(_x))
      _x = self.track_mag_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.speed_knots
      buff.write(_get_struct_d().pack(_x))
      _x = self.speed_knots_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.speed_kmh
      buff.write(_get_struct_d().pack(_x))
      _x = self.speed_kmh_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mode_indicator
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message_id = str[start:end]
      start = end
      end += 8
      (self.track_true,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.track_true_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.track_true_indicator = str[start:end]
      start = end
      end += 8
      (self.track_mag,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.track_mag_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.track_mag_indicator = str[start:end]
      start = end
      end += 8
      (self.speed_knots,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed_knots_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.speed_knots_indicator = str[start:end]
      start = end
      end += 8
      (self.speed_kmh,) = _get_struct_d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed_kmh_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.speed_kmh_indicator = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mode_indicator = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mode_indicator = str[start:end]
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
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
