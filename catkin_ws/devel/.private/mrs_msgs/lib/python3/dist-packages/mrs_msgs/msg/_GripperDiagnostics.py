# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mrs_msgs/GripperDiagnostics.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class GripperDiagnostics(genpy.Message):
  _md5sum = "5887bc2d50f46b0d8949991277fb8b45"
  _type = "mrs_msgs/GripperDiagnostics"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """time stamp

bool gripper_on
bool gripping_object

bool has_hall
int32 hall1_debug
int32 hall2_debug

bool has_ultrasonic
int32 ultrasonic1_debug
int32 ultrasonic2_debug

bool has_proximity
int32 proximity1_debug
int32 proximity2_debug
"""
  __slots__ = ['stamp','gripper_on','gripping_object','has_hall','hall1_debug','hall2_debug','has_ultrasonic','ultrasonic1_debug','ultrasonic2_debug','has_proximity','proximity1_debug','proximity2_debug']
  _slot_types = ['time','bool','bool','bool','int32','int32','bool','int32','int32','bool','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       stamp,gripper_on,gripping_object,has_hall,hall1_debug,hall2_debug,has_ultrasonic,ultrasonic1_debug,ultrasonic2_debug,has_proximity,proximity1_debug,proximity2_debug

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GripperDiagnostics, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.gripper_on is None:
        self.gripper_on = False
      if self.gripping_object is None:
        self.gripping_object = False
      if self.has_hall is None:
        self.has_hall = False
      if self.hall1_debug is None:
        self.hall1_debug = 0
      if self.hall2_debug is None:
        self.hall2_debug = 0
      if self.has_ultrasonic is None:
        self.has_ultrasonic = False
      if self.ultrasonic1_debug is None:
        self.ultrasonic1_debug = 0
      if self.ultrasonic2_debug is None:
        self.ultrasonic2_debug = 0
      if self.has_proximity is None:
        self.has_proximity = False
      if self.proximity1_debug is None:
        self.proximity1_debug = 0
      if self.proximity2_debug is None:
        self.proximity2_debug = 0
    else:
      self.stamp = genpy.Time()
      self.gripper_on = False
      self.gripping_object = False
      self.has_hall = False
      self.hall1_debug = 0
      self.hall2_debug = 0
      self.has_ultrasonic = False
      self.ultrasonic1_debug = 0
      self.ultrasonic2_debug = 0
      self.has_proximity = False
      self.proximity1_debug = 0
      self.proximity2_debug = 0

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
      buff.write(_get_struct_2I3B2iB2iB2i().pack(_x.stamp.secs, _x.stamp.nsecs, _x.gripper_on, _x.gripping_object, _x.has_hall, _x.hall1_debug, _x.hall2_debug, _x.has_ultrasonic, _x.ultrasonic1_debug, _x.ultrasonic2_debug, _x.has_proximity, _x.proximity1_debug, _x.proximity2_debug))
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
      end += 37
      (_x.stamp.secs, _x.stamp.nsecs, _x.gripper_on, _x.gripping_object, _x.has_hall, _x.hall1_debug, _x.hall2_debug, _x.has_ultrasonic, _x.ultrasonic1_debug, _x.ultrasonic2_debug, _x.has_proximity, _x.proximity1_debug, _x.proximity2_debug,) = _get_struct_2I3B2iB2iB2i().unpack(str[start:end])
      self.gripper_on = bool(self.gripper_on)
      self.gripping_object = bool(self.gripping_object)
      self.has_hall = bool(self.has_hall)
      self.has_ultrasonic = bool(self.has_ultrasonic)
      self.has_proximity = bool(self.has_proximity)
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
      buff.write(_get_struct_2I3B2iB2iB2i().pack(_x.stamp.secs, _x.stamp.nsecs, _x.gripper_on, _x.gripping_object, _x.has_hall, _x.hall1_debug, _x.hall2_debug, _x.has_ultrasonic, _x.ultrasonic1_debug, _x.ultrasonic2_debug, _x.has_proximity, _x.proximity1_debug, _x.proximity2_debug))
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
      end += 37
      (_x.stamp.secs, _x.stamp.nsecs, _x.gripper_on, _x.gripping_object, _x.has_hall, _x.hall1_debug, _x.hall2_debug, _x.has_ultrasonic, _x.ultrasonic1_debug, _x.ultrasonic2_debug, _x.has_proximity, _x.proximity1_debug, _x.proximity2_debug,) = _get_struct_2I3B2iB2iB2i().unpack(str[start:end])
      self.gripper_on = bool(self.gripper_on)
      self.gripping_object = bool(self.gripping_object)
      self.has_hall = bool(self.has_hall)
      self.has_ultrasonic = bool(self.has_ultrasonic)
      self.has_proximity = bool(self.has_proximity)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I3B2iB2iB2i = None
def _get_struct_2I3B2iB2iB2i():
    global _struct_2I3B2iB2iB2i
    if _struct_2I3B2iB2iB2i is None:
        _struct_2I3B2iB2iB2i = struct.Struct("<2I3B2iB2iB2i")
    return _struct_2I3B2iB2iB2i
