// Generated by gencpp from file mrs_msgs/SpeedTrackerCommand.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_SPEEDTRACKERCOMMAND_H
#define MRS_MSGS_MESSAGE_SPEEDTRACKERCOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct SpeedTrackerCommand_
{
  typedef SpeedTrackerCommand_<ContainerAllocator> Type;

  SpeedTrackerCommand_()
    : header()
    , velocity()
    , acceleration()
    , force()
    , height(0.0)
    , heading(0.0)
    , heading_rate(0.0)
    , use_velocity(false)
    , use_acceleration(false)
    , use_force(false)
    , use_height(false)
    , use_heading(false)
    , use_heading_rate(false)  {
    }
  SpeedTrackerCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , velocity(_alloc)
    , acceleration(_alloc)
    , force(_alloc)
    , height(0.0)
    , heading(0.0)
    , heading_rate(0.0)
    , use_velocity(false)
    , use_acceleration(false)
    , use_force(false)
    , use_height(false)
    , use_heading(false)
    , use_heading_rate(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _acceleration_type;
  _acceleration_type acceleration;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _force_type;
  _force_type force;

   typedef double _height_type;
  _height_type height;

   typedef double _heading_type;
  _heading_type heading;

   typedef double _heading_rate_type;
  _heading_rate_type heading_rate;

   typedef uint8_t _use_velocity_type;
  _use_velocity_type use_velocity;

   typedef uint8_t _use_acceleration_type;
  _use_acceleration_type use_acceleration;

   typedef uint8_t _use_force_type;
  _use_force_type use_force;

   typedef uint8_t _use_height_type;
  _use_height_type use_height;

   typedef uint8_t _use_heading_type;
  _use_heading_type use_heading;

   typedef uint8_t _use_heading_rate_type;
  _use_heading_rate_type use_heading_rate;





  typedef boost::shared_ptr< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> const> ConstPtr;

}; // struct SpeedTrackerCommand_

typedef ::mrs_msgs::SpeedTrackerCommand_<std::allocator<void> > SpeedTrackerCommand;

typedef boost::shared_ptr< ::mrs_msgs::SpeedTrackerCommand > SpeedTrackerCommandPtr;
typedef boost::shared_ptr< ::mrs_msgs::SpeedTrackerCommand const> SpeedTrackerCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator1> & lhs, const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.velocity == rhs.velocity &&
    lhs.acceleration == rhs.acceleration &&
    lhs.force == rhs.force &&
    lhs.height == rhs.height &&
    lhs.heading == rhs.heading &&
    lhs.heading_rate == rhs.heading_rate &&
    lhs.use_velocity == rhs.use_velocity &&
    lhs.use_acceleration == rhs.use_acceleration &&
    lhs.use_force == rhs.use_force &&
    lhs.use_height == rhs.use_height &&
    lhs.use_heading == rhs.use_heading &&
    lhs.use_heading_rate == rhs.use_heading_rate;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator1> & lhs, const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8bbd615ad5a88ff6da152b220d857737";
  }

  static const char* value(const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8bbd615ad5a88ff6ULL;
  static const uint64_t static_value2 = 0xda152b220d857737ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/SpeedTrackerCommand";
  }

  static const char* value(const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# contains the frame_id = your reference frame of choice\n"
"std_msgs/Header header\n"
"\n"
"# desired velocity [m/s], optional\n"
"geometry_msgs/Vector3 velocity\n"
"\n"
"# desired acceleration [m/s^2], optional\n"
"geometry_msgs/Vector3 acceleration\n"
"\n"
"# desired force [N], optional\n"
"geometry_msgs/Vector3 force\n"
"\n"
"# height above ground, optional\n"
"float64 height\n"
"\n"
"# desired heading and its rate, optional\n"
"# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"\n"
"float64 heading\n"
"float64 heading_rate\n"
"\n"
"# set to \"true\" if you want to control the state\n"
"bool use_velocity\n"
"bool use_acceleration\n"
"bool use_force\n"
"bool use_height\n"
"bool use_heading\n"
"bool use_heading_rate\n"
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
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.velocity);
      stream.next(m.acceleration);
      stream.next(m.force);
      stream.next(m.height);
      stream.next(m.heading);
      stream.next(m.heading_rate);
      stream.next(m.use_velocity);
      stream.next(m.use_acceleration);
      stream.next(m.use_force);
      stream.next(m.use_height);
      stream.next(m.use_heading);
      stream.next(m.use_heading_rate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeedTrackerCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::SpeedTrackerCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration);
    s << indent << "force: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.force);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
    s << indent << "heading_rate: ";
    Printer<double>::stream(s, indent + "  ", v.heading_rate);
    s << indent << "use_velocity: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_velocity);
    s << indent << "use_acceleration: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_acceleration);
    s << indent << "use_force: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_force);
    s << indent << "use_height: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_height);
    s << indent << "use_heading: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_heading);
    s << indent << "use_heading_rate: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_heading_rate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_SPEEDTRACKERCOMMAND_H