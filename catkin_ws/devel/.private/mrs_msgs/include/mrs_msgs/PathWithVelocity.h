// Generated by gencpp from file mrs_msgs/PathWithVelocity.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_PATHWITHVELOCITY_H
#define MRS_MSGS_MESSAGE_PATHWITHVELOCITY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mrs_msgs/ReferenceWithVelocity.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct PathWithVelocity_
{
  typedef PathWithVelocity_<ContainerAllocator> Type;

  PathWithVelocity_()
    : header()
    , input_id(0)
    , use_heading(false)
    , fly_now(false)
    , stop_at_waypoints(false)
    , loop(false)
    , override_constraints(false)
    , override_max_velocity_horizontal(0.0)
    , override_max_acceleration_horizontal(0.0)
    , override_max_velocity_vertical(0.0)
    , override_max_acceleration_vertical(0.0)
    , relax_heading(false)
    , points()  {
    }
  PathWithVelocity_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , input_id(0)
    , use_heading(false)
    , fly_now(false)
    , stop_at_waypoints(false)
    , loop(false)
    , override_constraints(false)
    , override_max_velocity_horizontal(0.0)
    , override_max_acceleration_horizontal(0.0)
    , override_max_velocity_vertical(0.0)
    , override_max_acceleration_vertical(0.0)
    , relax_heading(false)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int64_t _input_id_type;
  _input_id_type input_id;

   typedef uint8_t _use_heading_type;
  _use_heading_type use_heading;

   typedef uint8_t _fly_now_type;
  _fly_now_type fly_now;

   typedef uint8_t _stop_at_waypoints_type;
  _stop_at_waypoints_type stop_at_waypoints;

   typedef uint8_t _loop_type;
  _loop_type loop;

   typedef uint8_t _override_constraints_type;
  _override_constraints_type override_constraints;

   typedef double _override_max_velocity_horizontal_type;
  _override_max_velocity_horizontal_type override_max_velocity_horizontal;

   typedef double _override_max_acceleration_horizontal_type;
  _override_max_acceleration_horizontal_type override_max_acceleration_horizontal;

   typedef double _override_max_velocity_vertical_type;
  _override_max_velocity_vertical_type override_max_velocity_vertical;

   typedef double _override_max_acceleration_vertical_type;
  _override_max_acceleration_vertical_type override_max_acceleration_vertical;

   typedef uint8_t _relax_heading_type;
  _relax_heading_type relax_heading;

   typedef std::vector< ::mrs_msgs::ReferenceWithVelocity_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::mrs_msgs::ReferenceWithVelocity_<ContainerAllocator> >> _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> const> ConstPtr;

}; // struct PathWithVelocity_

typedef ::mrs_msgs::PathWithVelocity_<std::allocator<void> > PathWithVelocity;

typedef boost::shared_ptr< ::mrs_msgs::PathWithVelocity > PathWithVelocityPtr;
typedef boost::shared_ptr< ::mrs_msgs::PathWithVelocity const> PathWithVelocityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::PathWithVelocity_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::PathWithVelocity_<ContainerAllocator1> & lhs, const ::mrs_msgs::PathWithVelocity_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.input_id == rhs.input_id &&
    lhs.use_heading == rhs.use_heading &&
    lhs.fly_now == rhs.fly_now &&
    lhs.stop_at_waypoints == rhs.stop_at_waypoints &&
    lhs.loop == rhs.loop &&
    lhs.override_constraints == rhs.override_constraints &&
    lhs.override_max_velocity_horizontal == rhs.override_max_velocity_horizontal &&
    lhs.override_max_acceleration_horizontal == rhs.override_max_acceleration_horizontal &&
    lhs.override_max_velocity_vertical == rhs.override_max_velocity_vertical &&
    lhs.override_max_acceleration_vertical == rhs.override_max_acceleration_vertical &&
    lhs.relax_heading == rhs.relax_heading &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::PathWithVelocity_<ContainerAllocator1> & lhs, const ::mrs_msgs::PathWithVelocity_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bcbfefbbc71a86c06377c2c60f2cf152";
  }

  static const char* value(const ::mrs_msgs::PathWithVelocity_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbcbfefbbc71a86c0ULL;
  static const uint64_t static_value2 = 0x6377c2c60f2cf152ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/PathWithVelocity";
  }

  static const char* value(const ::mrs_msgs::PathWithVelocity_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"int64 input_id\n"
"\n"
"bool use_heading\n"
"bool fly_now\n"
"bool stop_at_waypoints\n"
"bool loop\n"
"\n"
"# if this is enabled, the slower velocity between the points and these overrides will be chosen\n"
"bool override_constraints\n"
"float64 override_max_velocity_horizontal\n"
"float64 override_max_acceleration_horizontal\n"
"float64 override_max_velocity_vertical\n"
"float64 override_max_acceleration_vertical\n"
"\n"
"bool relax_heading\n"
"\n"
"ReferenceWithVelocity[] points\n"
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
"MSG: mrs_msgs/ReferenceWithVelocity\n"
"# This message defines a control reference with a Position+Heading.\n"
"\n"
"geometry_msgs/Point position\n"
"\n"
"# Heading is atan2() of XY-world projection of the UAV's body X-axis.\n"
"float64 heading\n"
"\n"
"bool enforce_velocity\n"
"geometry_msgs/Vector3 velocity\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
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

  static const char* value(const ::mrs_msgs::PathWithVelocity_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.input_id);
      stream.next(m.use_heading);
      stream.next(m.fly_now);
      stream.next(m.stop_at_waypoints);
      stream.next(m.loop);
      stream.next(m.override_constraints);
      stream.next(m.override_max_velocity_horizontal);
      stream.next(m.override_max_acceleration_horizontal);
      stream.next(m.override_max_velocity_vertical);
      stream.next(m.override_max_acceleration_vertical);
      stream.next(m.relax_heading);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PathWithVelocity_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::PathWithVelocity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::PathWithVelocity_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "input_id: ";
    Printer<int64_t>::stream(s, indent + "  ", v.input_id);
    s << indent << "use_heading: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.use_heading);
    s << indent << "fly_now: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fly_now);
    s << indent << "stop_at_waypoints: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stop_at_waypoints);
    s << indent << "loop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.loop);
    s << indent << "override_constraints: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.override_constraints);
    s << indent << "override_max_velocity_horizontal: ";
    Printer<double>::stream(s, indent + "  ", v.override_max_velocity_horizontal);
    s << indent << "override_max_acceleration_horizontal: ";
    Printer<double>::stream(s, indent + "  ", v.override_max_acceleration_horizontal);
    s << indent << "override_max_velocity_vertical: ";
    Printer<double>::stream(s, indent + "  ", v.override_max_velocity_vertical);
    s << indent << "override_max_acceleration_vertical: ";
    Printer<double>::stream(s, indent + "  ", v.override_max_acceleration_vertical);
    s << indent << "relax_heading: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.relax_heading);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mrs_msgs::ReferenceWithVelocity_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_PATHWITHVELOCITY_H
