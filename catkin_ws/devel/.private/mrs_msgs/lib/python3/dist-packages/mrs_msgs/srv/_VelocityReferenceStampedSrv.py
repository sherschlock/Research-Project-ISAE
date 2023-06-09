# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/VelocityReferenceStampedSrvRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import mrs_msgs.msg
import std_msgs.msg

class VelocityReferenceStampedSrvRequest(genpy.Message):
  _md5sum = "bcfebfa00dc7fd48dcce962aeb5aa290"
  _type = "mrs_msgs/VelocityReferenceStampedSrvRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """mrs_msgs/VelocityReferenceStamped reference

================================================================================
MSG: mrs_msgs/VelocityReferenceStamped
# contains the frame_id = your reference frame of choice
std_msgs/Header header

mrs_msgs/VelocityReference reference

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
MSG: mrs_msgs/VelocityReference
# desired velocity [m/s]
geometry_msgs/Vector3 velocity

# altitude
float64 altitude

# desired heading and its rate, optional
# heading is "the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front"
float64 heading
float64 heading_rate

# overrides vertical velocity
bool use_altitude

bool use_heading

# overrides heading
bool use_heading_rate

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['reference']
  _slot_types = ['mrs_msgs/VelocityReferenceStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       reference

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VelocityReferenceStampedSrvRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.reference is None:
        self.reference = mrs_msgs.msg.VelocityReferenceStamped()
    else:
      self.reference = mrs_msgs.msg.VelocityReferenceStamped()

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
      buff.write(_get_struct_3I().pack(_x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs))
      _x = self.reference.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d3B().pack(_x.reference.reference.velocity.x, _x.reference.reference.velocity.y, _x.reference.reference.velocity.z, _x.reference.reference.altitude, _x.reference.reference.heading, _x.reference.reference.heading_rate, _x.reference.reference.use_altitude, _x.reference.reference.use_heading, _x.reference.reference.use_heading_rate))
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
      if self.reference is None:
        self.reference = mrs_msgs.msg.VelocityReferenceStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.reference.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.reference.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 51
      (_x.reference.reference.velocity.x, _x.reference.reference.velocity.y, _x.reference.reference.velocity.z, _x.reference.reference.altitude, _x.reference.reference.heading, _x.reference.reference.heading_rate, _x.reference.reference.use_altitude, _x.reference.reference.use_heading, _x.reference.reference.use_heading_rate,) = _get_struct_6d3B().unpack(str[start:end])
      self.reference.reference.use_altitude = bool(self.reference.reference.use_altitude)
      self.reference.reference.use_heading = bool(self.reference.reference.use_heading)
      self.reference.reference.use_heading_rate = bool(self.reference.reference.use_heading_rate)
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
      buff.write(_get_struct_3I().pack(_x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs))
      _x = self.reference.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d3B().pack(_x.reference.reference.velocity.x, _x.reference.reference.velocity.y, _x.reference.reference.velocity.z, _x.reference.reference.altitude, _x.reference.reference.heading, _x.reference.reference.heading_rate, _x.reference.reference.use_altitude, _x.reference.reference.use_heading, _x.reference.reference.use_heading_rate))
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
      if self.reference is None:
        self.reference = mrs_msgs.msg.VelocityReferenceStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.reference.header.seq, _x.reference.header.stamp.secs, _x.reference.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.reference.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.reference.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 51
      (_x.reference.reference.velocity.x, _x.reference.reference.velocity.y, _x.reference.reference.velocity.z, _x.reference.reference.altitude, _x.reference.reference.heading, _x.reference.reference.heading_rate, _x.reference.reference.use_altitude, _x.reference.reference.use_heading, _x.reference.reference.use_heading_rate,) = _get_struct_6d3B().unpack(str[start:end])
      self.reference.reference.use_altitude = bool(self.reference.reference.use_altitude)
      self.reference.reference.use_heading = bool(self.reference.reference.use_heading)
      self.reference.reference.use_heading_rate = bool(self.reference.reference.use_heading_rate)
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
_struct_6d3B = None
def _get_struct_6d3B():
    global _struct_6d3B
    if _struct_6d3B is None:
        _struct_6d3B = struct.Struct("<6d3B")
    return _struct_6d3B
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/VelocityReferenceStampedSrvResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VelocityReferenceStampedSrvResponse(genpy.Message):
  _md5sum = "937c9679a518e3a18d831e57125ea522"
  _type = "mrs_msgs/VelocityReferenceStampedSrvResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool success
string message

"""
  __slots__ = ['success','message']
  _slot_types = ['bool','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       success,message

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VelocityReferenceStampedSrvResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.success is None:
        self.success = False
      if self.message is None:
        self.message = ''
    else:
      self.success = False
      self.message = ''

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
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
      _x = self.message
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
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
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
      _x = self.success
      buff.write(_get_struct_B().pack(_x))
      _x = self.message
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
      end = 0
      start = end
      end += 1
      (self.success,) = _get_struct_B().unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.message = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.message = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class VelocityReferenceStampedSrv(object):
  _type          = 'mrs_msgs/VelocityReferenceStampedSrv'
  _md5sum = '2049bed7ddaf936a6b0c045878f5182e'
  _request_class  = VelocityReferenceStampedSrvRequest
  _response_class = VelocityReferenceStampedSrvResponse
