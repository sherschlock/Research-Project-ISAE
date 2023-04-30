# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/TersusMessageHeader.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class TersusMessageHeader(genpy.Message):
  _md5sum = "551bdd4abfba94b9393d89735daa6fe7"
  _type = "mrs_msgs/TersusMessageHeader"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This is modified version from Novatel
# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html
# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf
# See section 1.5 in the Tersus manual.
# --------------------------------------------------------------------------------------

# On the wire, this header is preceeded by three sync bytes,
# which are 0xAA 0x44 0x12, and a uint8 which is the header length.

# Measurement source, format, response bit.
string message_name

string port_address

uint16 sequence

float32 idle_time

# Table 1 in the Tersus manual.
string time_status

uint16 gps_week
float32 gps_week_seconds

uint32 receiver_status
uint16 software_version
"""
  __slots__ = ['message_name','port_address','sequence','idle_time','time_status','gps_week','gps_week_seconds','receiver_status','software_version']
  _slot_types = ['string','string','uint16','float32','string','uint16','float32','uint32','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       message_name,port_address,sequence,idle_time,time_status,gps_week,gps_week_seconds,receiver_status,software_version

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TersusMessageHeader, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.message_name is None:
        self.message_name = ''
      if self.port_address is None:
        self.port_address = ''
      if self.sequence is None:
        self.sequence = 0
      if self.idle_time is None:
        self.idle_time = 0.
      if self.time_status is None:
        self.time_status = ''
      if self.gps_week is None:
        self.gps_week = 0
      if self.gps_week_seconds is None:
        self.gps_week_seconds = 0.
      if self.receiver_status is None:
        self.receiver_status = 0
      if self.software_version is None:
        self.software_version = 0
    else:
      self.message_name = ''
      self.port_address = ''
      self.sequence = 0
      self.idle_time = 0.
      self.time_status = ''
      self.gps_week = 0
      self.gps_week_seconds = 0.
      self.receiver_status = 0
      self.software_version = 0

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
      _x = self.message_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.port_address
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_Hf().pack(_x.sequence, _x.idle_time))
      _x = self.time_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HfIH().pack(_x.gps_week, _x.gps_week_seconds, _x.receiver_status, _x.software_version))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.port_address = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.port_address = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.sequence, _x.idle_time,) = _get_struct_Hf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.time_status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.time_status = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.gps_week, _x.gps_week_seconds, _x.receiver_status, _x.software_version,) = _get_struct_HfIH().unpack(str[start:end])
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
      _x = self.message_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.port_address
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_Hf().pack(_x.sequence, _x.idle_time))
      _x = self.time_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HfIH().pack(_x.gps_week, _x.gps_week_seconds, _x.receiver_status, _x.software_version))
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.port_address = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.port_address = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.sequence, _x.idle_time,) = _get_struct_Hf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.time_status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.time_status = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.gps_week, _x.gps_week_seconds, _x.receiver_status, _x.software_version,) = _get_struct_HfIH().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Hf = None
def _get_struct_Hf():
    global _struct_Hf
    if _struct_Hf is None:
        _struct_Hf = struct.Struct("<Hf")
    return _struct_Hf
_struct_HfIH = None
def _get_struct_HfIH():
    global _struct_HfIH
    if _struct_HfIH is None:
        _struct_HfIH = struct.Struct("<HfIH")
    return _struct_HfIH