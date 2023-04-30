# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/Range.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mrs_msgs.msg
import std_msgs.msg

class Range(genpy.Message):
  _md5sum = "6f8bff0e61f983e7883647ba50e7b66d"
  _type = "mrs_msgs/Range"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """#Satellite Range information from Tersus receiver

Header header

TersusMessageHeader tersus_msg_header

#number of observations
int32 numb_of_observ

#range information for the observed 
RangeInformation[] info

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
MSG: mrs_msgs/TersusMessageHeader
# This is modified version from Novatel
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

================================================================================
MSG: mrs_msgs/RangeInformation
#Satellite Range information structure used in range messages

#Satelite PRN number of range measurement
uint16 prn_number

#GLONASS Frequency
uint16 glofreq

#Pseudorange measurement(m)
float64 psr

#Pseudorange measurement standard deviation(m)
float32 psr_std

#Carrier phase, in cycles
float64 adr

#Estimated carrier phase standard deviation(cycles)
float32 adr_std

#Instantaneous carrier Doppler frequency(Hz)
float32 dopp

#Carrier to noise density ratio
float32 noise_density_ratio

## of seconds of continous tracking
float32 locktime

#Tracking status
uint32 tracking_status
"""
  __slots__ = ['header','tersus_msg_header','numb_of_observ','info']
  _slot_types = ['std_msgs/Header','mrs_msgs/TersusMessageHeader','int32','mrs_msgs/RangeInformation[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,tersus_msg_header,numb_of_observ,info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Range, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tersus_msg_header is None:
        self.tersus_msg_header = mrs_msgs.msg.TersusMessageHeader()
      if self.numb_of_observ is None:
        self.numb_of_observ = 0
      if self.info is None:
        self.info = []
    else:
      self.header = std_msgs.msg.Header()
      self.tersus_msg_header = mrs_msgs.msg.TersusMessageHeader()
      self.numb_of_observ = 0
      self.info = []

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
      _x = self.tersus_msg_header.message_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tersus_msg_header.port_address
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_Hf().pack(_x.tersus_msg_header.sequence, _x.tersus_msg_header.idle_time))
      _x = self.tersus_msg_header.time_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HfIHi().pack(_x.tersus_msg_header.gps_week, _x.tersus_msg_header.gps_week_seconds, _x.tersus_msg_header.receiver_status, _x.tersus_msg_header.software_version, _x.numb_of_observ))
      length = len(self.info)
      buff.write(_struct_I.pack(length))
      for val1 in self.info:
        _x = val1
        buff.write(_get_struct_2Hdfd4fI().pack(_x.prn_number, _x.glofreq, _x.psr, _x.psr_std, _x.adr, _x.adr_std, _x.dopp, _x.noise_density_ratio, _x.locktime, _x.tracking_status))
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
      if self.tersus_msg_header is None:
        self.tersus_msg_header = mrs_msgs.msg.TersusMessageHeader()
      if self.info is None:
        self.info = None
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
        self.tersus_msg_header.message_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tersus_msg_header.message_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tersus_msg_header.port_address = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tersus_msg_header.port_address = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.tersus_msg_header.sequence, _x.tersus_msg_header.idle_time,) = _get_struct_Hf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tersus_msg_header.time_status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tersus_msg_header.time_status = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.tersus_msg_header.gps_week, _x.tersus_msg_header.gps_week_seconds, _x.tersus_msg_header.receiver_status, _x.tersus_msg_header.software_version, _x.numb_of_observ,) = _get_struct_HfIHi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.info = []
      for i in range(0, length):
        val1 = mrs_msgs.msg.RangeInformation()
        _x = val1
        start = end
        end += 44
        (_x.prn_number, _x.glofreq, _x.psr, _x.psr_std, _x.adr, _x.adr_std, _x.dopp, _x.noise_density_ratio, _x.locktime, _x.tracking_status,) = _get_struct_2Hdfd4fI().unpack(str[start:end])
        self.info.append(val1)
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
      _x = self.tersus_msg_header.message_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.tersus_msg_header.port_address
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_Hf().pack(_x.tersus_msg_header.sequence, _x.tersus_msg_header.idle_time))
      _x = self.tersus_msg_header.time_status
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HfIHi().pack(_x.tersus_msg_header.gps_week, _x.tersus_msg_header.gps_week_seconds, _x.tersus_msg_header.receiver_status, _x.tersus_msg_header.software_version, _x.numb_of_observ))
      length = len(self.info)
      buff.write(_struct_I.pack(length))
      for val1 in self.info:
        _x = val1
        buff.write(_get_struct_2Hdfd4fI().pack(_x.prn_number, _x.glofreq, _x.psr, _x.psr_std, _x.adr, _x.adr_std, _x.dopp, _x.noise_density_ratio, _x.locktime, _x.tracking_status))
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
      if self.tersus_msg_header is None:
        self.tersus_msg_header = mrs_msgs.msg.TersusMessageHeader()
      if self.info is None:
        self.info = None
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
        self.tersus_msg_header.message_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tersus_msg_header.message_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tersus_msg_header.port_address = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tersus_msg_header.port_address = str[start:end]
      _x = self
      start = end
      end += 6
      (_x.tersus_msg_header.sequence, _x.tersus_msg_header.idle_time,) = _get_struct_Hf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tersus_msg_header.time_status = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.tersus_msg_header.time_status = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.tersus_msg_header.gps_week, _x.tersus_msg_header.gps_week_seconds, _x.tersus_msg_header.receiver_status, _x.tersus_msg_header.software_version, _x.numb_of_observ,) = _get_struct_HfIHi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.info = []
      for i in range(0, length):
        val1 = mrs_msgs.msg.RangeInformation()
        _x = val1
        start = end
        end += 44
        (_x.prn_number, _x.glofreq, _x.psr, _x.psr_std, _x.adr, _x.adr_std, _x.dopp, _x.noise_density_ratio, _x.locktime, _x.tracking_status,) = _get_struct_2Hdfd4fI().unpack(str[start:end])
        self.info.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Hdfd4fI = None
def _get_struct_2Hdfd4fI():
    global _struct_2Hdfd4fI
    if _struct_2Hdfd4fI is None:
        _struct_2Hdfd4fI = struct.Struct("<2Hdfd4fI")
    return _struct_2Hdfd4fI
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_Hf = None
def _get_struct_Hf():
    global _struct_Hf
    if _struct_Hf is None:
        _struct_Hf = struct.Struct("<Hf")
    return _struct_Hf
_struct_HfIHi = None
def _get_struct_HfIHi():
    global _struct_HfIHi
    if _struct_HfIHi is None:
        _struct_HfIHi = struct.Struct("<HfIHi")
    return _struct_HfIHi
