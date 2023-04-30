// Generated by gencpp from file mrs_msgs/MpcTrackerDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_MPCTRACKERDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_MPCTRACKERDIAGNOSTICS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct MpcTrackerDiagnostics_
{
  typedef MpcTrackerDiagnostics_<ContainerAllocator> Type;

  MpcTrackerDiagnostics_()
    : header()
    , uav_name()
    , active(false)
    , collision_avoidance_active(false)
    , avoiding_collision(false)
    , avoidance_active_uavs()
    , setpoint()  {
    }
  MpcTrackerDiagnostics_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , uav_name(_alloc)
    , active(false)
    , collision_avoidance_active(false)
    , avoiding_collision(false)
    , avoidance_active_uavs(_alloc)
    , setpoint(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uav_name_type;
  _uav_name_type uav_name;

   typedef uint8_t _active_type;
  _active_type active;

   typedef uint8_t _collision_avoidance_active_type;
  _collision_avoidance_active_type collision_avoidance_active;

   typedef uint8_t _avoiding_collision_type;
  _avoiding_collision_type avoiding_collision;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _avoidance_active_uavs_type;
  _avoidance_active_uavs_type avoidance_active_uavs;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _setpoint_type;
  _setpoint_type setpoint;





  typedef boost::shared_ptr< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct MpcTrackerDiagnostics_

typedef ::mrs_msgs::MpcTrackerDiagnostics_<std::allocator<void> > MpcTrackerDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::MpcTrackerDiagnostics > MpcTrackerDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::MpcTrackerDiagnostics const> MpcTrackerDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.uav_name == rhs.uav_name &&
    lhs.active == rhs.active &&
    lhs.collision_avoidance_active == rhs.collision_avoidance_active &&
    lhs.avoiding_collision == rhs.avoiding_collision &&
    lhs.avoidance_active_uavs == rhs.avoidance_active_uavs &&
    lhs.setpoint == rhs.setpoint;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fcb4d421dc34e3a114f4a7a3e1f6ee8";
  }

  static const char* value(const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fcb4d421dc34e3aULL;
  static const uint64_t static_value2 = 0x114f4a7a3e1f6ee8ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/MpcTrackerDiagnostics";
  }

  static const char* value(const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"string uav_name\n"
"bool active\n"
"bool collision_avoidance_active\n"
"bool avoiding_collision\n"
"string[] avoidance_active_uavs\n"
"geometry_msgs/Pose setpoint\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.uav_name);
      stream.next(m.active);
      stream.next(m.collision_avoidance_active);
      stream.next(m.avoiding_collision);
      stream.next(m.avoidance_active_uavs);
      stream.next(m.setpoint);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MpcTrackerDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::MpcTrackerDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "uav_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uav_name);
    s << indent << "active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.active);
    s << indent << "collision_avoidance_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision_avoidance_active);
    s << indent << "avoiding_collision: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.avoiding_collision);
    s << indent << "avoidance_active_uavs[]" << std::endl;
    for (size_t i = 0; i < v.avoidance_active_uavs.size(); ++i)
    {
      s << indent << "  avoidance_active_uavs[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.avoidance_active_uavs[i]);
    }
    s << indent << "setpoint: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.setpoint);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_MPCTRACKERDIAGNOSTICS_H
