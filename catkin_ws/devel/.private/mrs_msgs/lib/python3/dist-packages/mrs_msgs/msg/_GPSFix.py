# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/GPSFix.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mrs_msgs.msg
import std_msgs.msg

class GPSFix(genpy.Message):
  _md5sum = "bd06547699b65b25dfcdf16f98e57651"
  _type = "mrs_msgs/GPSFix"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# A more complete GPS fix to supplement sensor_msgs/NavSatFix.
# modified version of http://docs.ros.org/kinetic/api/gps_common/html/msg/GPSFix.html
Header header

# Satellites used in solution
uint8 num_satellites_used_in_solution # Number of satellites

# Satellites visible
uint8 num_satellites_tracked

# Measurement status
GpsStatus status

# Latitude (degrees). Positive is north of equator; negative is south.
float64 latitude

# Longitude (degrees). Positive is east of prime meridian, negative west.
float32 longitude

# Altitude (meters). Positive is above reference (e.g., sea level).
float64 altitude

# Direction (degrees from north)
float64 track

# Ground speed (meters/second)
float64 speed

# GPS time
float64 time

## Dilution of precision; Xdop<=0 means the value is unknown

# Horizontal dilution of precision
float32 hdop

## Uncertainty of measurement, 95% confidence

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.

float64[9] position_covariance

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3
uint8 position_covariance_type

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
  COVARIANCE_TYPE_UNKNOWN = 0
  COVARIANCE_TYPE_APPROXIMATED = 1
  COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
  COVARIANCE_TYPE_KNOWN = 3

  __slots__ = ['header','num_satellites_used_in_solution','num_satellites_tracked','status','latitude','longitude','altitude','track','speed','time','hdop','position_covariance','position_covariance_type']
  _slot_types = ['std_msgs/Header','uint8','uint8','mrs_msgs/GpsStatus','float64','float32','float64','float64','float64','float64','float32','float64[9]','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,num_satellites_used_in_solution,num_satellites_tracked,status,latitude,longitude,altitude,track,speed,time,hdop,position_covariance,position_covariance_type

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GPSFix, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.num_satellites_used_in_solution is None:
        self.num_satellites_used_in_solution = 0
      if self.num_satellites_tracked is None:
        self.num_satellites_tracked = 0
      if self.status is None:
        self.status = mrs_msgs.msg.GpsStatus()
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.track is None:
        self.track = 0.
      if self.speed is None:
        self.speed = 0.
      if self.time is None:
        self.time = 0.
      if self.hdop is None:
        self.hdop = 0.
      if self.position_covariance is None:
        self.position_covariance = [0.] * 9
      if self.position_covariance_type is None:
        self.position_covariance_type = 0
    else:
      self.header = std_msgs.msg.Header()
      self.num_satellites_used_in_solution = 0
      self.num_satellites_tracked = 0
      self.status = mrs_msgs.msg.GpsStatus()
      self.latitude = 0.
      self.longitude = 0.
      self.altitude = 0.
      self.track = 0.
      self.speed = 0.
      self.time = 0.
      self.hdop = 0.
      self.position_covariance = [0.] * 9
      self.position_covariance_type = 0

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
      buff.write(_get_struct_2BIdf4df().pack(_x.num_satellites_used_in_solution, _x.num_satellites_tracked, _x.status.quality, _x.latitude, _x.longitude, _x.altitude, _x.track, _x.speed, _x.time, _x.hdop))
      buff.write(_get_struct_9d().pack(*self.position_covariance))
      _x = self.position_covariance_type
      buff.write(_get_struct_B().pack(_x))
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
      if self.status is None:
        self.status = mrs_msgs.msg.GpsStatus()
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
      end += 54
      (_x.num_satellites_used_in_solution, _x.num_satellites_tracked, _x.status.quality, _x.latitude, _x.longitude, _x.altitude, _x.track, _x.speed, _x.time, _x.hdop,) = _get_struct_2BIdf4df().unpack(str[start:end])
      start = end
      end += 72
      self.position_covariance = _get_struct_9d().unpack(str[start:end])
      start = end
      end += 1
      (self.position_covariance_type,) = _get_struct_B().unpack(str[start:end])
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
      buff.write(_get_struct_2BIdf4df().pack(_x.num_satellites_used_in_solution, _x.num_satellites_tracked, _x.status.quality, _x.latitude, _x.longitude, _x.altitude, _x.track, _x.speed, _x.time, _x.hdop))
      buff.write(self.position_covariance.tostring())
      _x = self.position_covariance_type
      buff.write(_get_struct_B().pack(_x))
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
      if self.status is None:
        self.status = mrs_msgs.msg.GpsStatus()
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
      end += 54
      (_x.num_satellites_used_in_solution, _x.num_satellites_tracked, _x.status.quality, _x.latitude, _x.longitude, _x.altitude, _x.track, _x.speed, _x.time, _x.hdop,) = _get_struct_2BIdf4df().unpack(str[start:end])
      start = end
      end += 72
      self.position_covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      start = end
      end += 1
      (self.position_covariance_type,) = _get_struct_B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2BIdf4df = None
def _get_struct_2BIdf4df():
    global _struct_2BIdf4df
    if _struct_2BIdf4df is None:
        _struct_2BIdf4df = struct.Struct("<2BIdf4df")
    return _struct_2BIdf4df
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
