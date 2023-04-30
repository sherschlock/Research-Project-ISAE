# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/Gprmc.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mrs_msgs.msg
import std_msgs.msg

class Gprmc(genpy.Message):
  _md5sum = "141c762d606ff599c6f6b036906b68bb"
  _type = "mrs_msgs/Gprmc"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# Message from GPRMC NMEA String
Header header

string message_id

float64 utc_seconds
GpsStatus position_status

float64 latitude
float64 longitude

string latitude_dir
string longitude_dir

float32 speed  # in metres per second
float32 track
string date
float32 mag_var
string mag_var_direction

string mode_indicator
string MODE_INDICATIOR_AUTONOMOUS=A
string MODE_INDICATIOR_DIFFERENTIAL=D
string MODE_INDICATIOR_ESTIMATED=E
string MODE_INDICATIOR_MANUAL=M
string MODE_INDICATIOR_DATA_NOT_VALID=N

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
MSG: mrs_msgs/GpsStatus
uint32 quality
uint32 GPS_QUALITY_NO_FIX=0
uint32 GPS_QUALITY_SIGLE_POINT=1
uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2
uint32 GPS_QUALITY_RTK_FIX=4
uint32 GPS_QUALITY_RTK_FLOAT=5
"""
  # Pseudo-constants
  MODE_INDICATIOR_AUTONOMOUS = 'A'
  MODE_INDICATIOR_DIFFERENTIAL = 'D'
  MODE_INDICATIOR_ESTIMATED = 'E'
  MODE_INDICATIOR_MANUAL = 'M'
  MODE_INDICATIOR_DATA_NOT_VALID = 'N'

  __slots__ = ['header','message_id','utc_seconds','position_status','latitude','longitude','latitude_dir','longitude_dir','speed','track','date','mag_var','mag_var_direction','mode_indicator']
  _slot_types = ['std_msgs/Header','string','float64','mrs_msgs/GpsStatus','float64','float64','string','string','float32','float32','string','float32','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,message_id,utc_seconds,position_status,latitude,longitude,latitude_dir,longitude_dir,speed,track,date,mag_var,mag_var_direction,mode_indicator

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Gprmc, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.message_id is None:
        self.message_id = ''
      if self.utc_seconds is None:
        self.utc_seconds = 0.
      if self.position_status is None:
        self.position_status = mrs_msgs.msg.GpsStatus()
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.latitude_dir is None:
        self.latitude_dir = ''
      if self.longitude_dir is None:
        self.longitude_dir = ''
      if self.speed is None:
        self.speed = 0.
      if self.track is None:
        self.track = 0.
      if self.date is None:
        self.date = ''
      if self.mag_var is None:
        self.mag_var = 0.
      if self.mag_var_direction is None:
        self.mag_var_direction = ''
      if self.mode_indicator is None:
        self.mode_indicator = ''
    else:
      self.header = std_msgs.msg.Header()
      self.message_id = ''
      self.utc_seconds = 0.
      self.position_status = mrs_msgs.msg.GpsStatus()
      self.latitude = 0.
      self.longitude = 0.
      self.latitude_dir = ''
      self.longitude_dir = ''
      self.speed = 0.
      self.track = 0.
      self.date = ''
      self.mag_var = 0.
      self.mag_var_direction = ''
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
      _x = self
      buff.write(_get_struct_dI2d().pack(_x.utc_seconds, _x.position_status.quality, _x.latitude, _x.longitude))
      _x = self.latitude_dir
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.longitude_dir
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f().pack(_x.speed, _x.track))
      _x = self.date
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mag_var
      buff.write(_get_struct_f().pack(_x))
      _x = self.mag_var_direction
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
      if self.position_status is None:
        self.position_status = mrs_msgs.msg.GpsStatus()
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
      _x = self
      start = end
      end += 28
      (_x.utc_seconds, _x.position_status.quality, _x.latitude, _x.longitude,) = _get_struct_dI2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.latitude_dir = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.latitude_dir = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.longitude_dir = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.longitude_dir = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.speed, _x.track,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.date = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.date = str[start:end]
      start = end
      end += 4
      (self.mag_var,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mag_var_direction = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mag_var_direction = str[start:end]
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
      _x = self
      buff.write(_get_struct_dI2d().pack(_x.utc_seconds, _x.position_status.quality, _x.latitude, _x.longitude))
      _x = self.latitude_dir
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.longitude_dir
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2f().pack(_x.speed, _x.track))
      _x = self.date
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.mag_var
      buff.write(_get_struct_f().pack(_x))
      _x = self.mag_var_direction
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
      if self.position_status is None:
        self.position_status = mrs_msgs.msg.GpsStatus()
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
      _x = self
      start = end
      end += 28
      (_x.utc_seconds, _x.position_status.quality, _x.latitude, _x.longitude,) = _get_struct_dI2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.latitude_dir = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.latitude_dir = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.longitude_dir = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.longitude_dir = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.speed, _x.track,) = _get_struct_2f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.date = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.date = str[start:end]
      start = end
      end += 4
      (self.mag_var,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mag_var_direction = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.mag_var_direction = str[start:end]
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
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_dI2d = None
def _get_struct_dI2d():
    global _struct_dI2d
    if _struct_dI2d is None:
        _struct_dI2d = struct.Struct("<dI2d")
    return _struct_dI2d
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
