# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/Trackstat.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mrs_msgs.msg
import std_msgs.msg

class Trackstat(genpy.Message):
  _md5sum = "10e52c1ea54daca4de3c8cdda3a79817"
  _type = "mrs_msgs/Trackstat"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# Channel tracking status information for each of the receiver parallel channels

Header header

string solution_status
string position_type

# Tracking elevation cutff-off angle
float32 cutoff

TrackstatChannel[] channels

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
MSG: mrs_msgs/TrackstatChannel
# A submessage of Trackstat that contains all of the data about a single hardware channel

# Satellite PRN number
int16 prn

# GLONASS Frequency +7
int16 glofreq

# Channel tracking status
uint32 ch_tr_status

# Pseudorange (m)
float64 psr

# Doppler frequency (Hz)
float32 doppler

# Carrier to noise density ratio (dB-Hz)
float32 c_no

# Number of seconds of continuous tracking (no cycle slips)
float32 locktime

# Pseudorange residual from pseudorange filter (m)
float32 psr_res

# Range reject code from pseudorange filter
string reject

# Pseudorange filter weighting
float32 psr_weight
"""
  __slots__ = ['header','solution_status','position_type','cutoff','channels']
  _slot_types = ['std_msgs/Header','string','string','float32','mrs_msgs/TrackstatChannel[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,solution_status,position_type,cutoff,channels

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Trackstat, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.solution_status is None:
        self.solution_status = ''
      if self.position_type is None:
        self.position_type = ''
      if self.cutoff is None:
        self.cutoff = 0.
      if self.channels is None:
        self.channels = []
    else:
      self.header = std_msgs.msg.Header()
      self.solution_status = ''
      self.position_type = ''
      self.cutoff = 0.
      self.channels = []

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
      _x = self.solution_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.position_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.cutoff
      buff.write(_get_struct_f().pack(_x))
      length = len(self.channels)
      buff.write(_struct_I.pack(length))
      for val1 in self.channels:
        _x = val1
        buff.write(_get_struct_2hId4f().pack(_x.prn, _x.glofreq, _x.ch_tr_status, _x.psr, _x.doppler, _x.c_no, _x.locktime, _x.psr_res))
        _x = val1.reject
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.psr_weight
        buff.write(_get_struct_f().pack(_x))
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
      if self.channels is None:
        self.channels = None
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
        self.solution_status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.solution_status = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.position_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.position_type = str[start:end]
      start = end
      end += 4
      (self.cutoff,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.channels = []
      for i in range(0, length):
        val1 = mrs_msgs.msg.TrackstatChannel()
        _x = val1
        start = end
        end += 32
        (_x.prn, _x.glofreq, _x.ch_tr_status, _x.psr, _x.doppler, _x.c_no, _x.locktime, _x.psr_res,) = _get_struct_2hId4f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.reject = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.reject = str[start:end]
        start = end
        end += 4
        (val1.psr_weight,) = _get_struct_f().unpack(str[start:end])
        self.channels.append(val1)
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
      _x = self.solution_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.position_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.cutoff
      buff.write(_get_struct_f().pack(_x))
      length = len(self.channels)
      buff.write(_struct_I.pack(length))
      for val1 in self.channels:
        _x = val1
        buff.write(_get_struct_2hId4f().pack(_x.prn, _x.glofreq, _x.ch_tr_status, _x.psr, _x.doppler, _x.c_no, _x.locktime, _x.psr_res))
        _x = val1.reject
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.psr_weight
        buff.write(_get_struct_f().pack(_x))
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
      if self.channels is None:
        self.channels = None
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
        self.solution_status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.solution_status = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.position_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.position_type = str[start:end]
      start = end
      end += 4
      (self.cutoff,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.channels = []
      for i in range(0, length):
        val1 = mrs_msgs.msg.TrackstatChannel()
        _x = val1
        start = end
        end += 32
        (_x.prn, _x.glofreq, _x.ch_tr_status, _x.psr, _x.doppler, _x.c_no, _x.locktime, _x.psr_res,) = _get_struct_2hId4f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.reject = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.reject = str[start:end]
        start = end
        end += 4
        (val1.psr_weight,) = _get_struct_f().unpack(str[start:end])
        self.channels.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2hId4f = None
def _get_struct_2hId4f():
    global _struct_2hId4f
    if _struct_2hId4f is None:
        _struct_2hId4f = struct.Struct("<2hId4f")
    return _struct_2hId4f
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f