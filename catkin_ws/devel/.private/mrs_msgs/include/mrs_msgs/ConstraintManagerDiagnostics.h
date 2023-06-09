// Generated by gencpp from file mrs_msgs/ConstraintManagerDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_CONSTRAINTMANAGERDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_CONSTRAINTMANAGERDIAGNOSTICS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mrs_msgs/DynamicsConstraints.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct ConstraintManagerDiagnostics_
{
  typedef ConstraintManagerDiagnostics_<ContainerAllocator> Type;

  ConstraintManagerDiagnostics_()
    : stamp()
    , loaded()
    , available()
    , current_name()
    , current_values()  {
    }
  ConstraintManagerDiagnostics_(const ContainerAllocator& _alloc)
    : stamp()
    , loaded(_alloc)
    , available(_alloc)
    , current_name(_alloc)
    , current_values(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _loaded_type;
  _loaded_type loaded;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _available_type;
  _available_type available;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _current_name_type;
  _current_name_type current_name;

   typedef  ::mrs_msgs::DynamicsConstraints_<ContainerAllocator>  _current_values_type;
  _current_values_type current_values;





  typedef boost::shared_ptr< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct ConstraintManagerDiagnostics_

typedef ::mrs_msgs::ConstraintManagerDiagnostics_<std::allocator<void> > ConstraintManagerDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::ConstraintManagerDiagnostics > ConstraintManagerDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::ConstraintManagerDiagnostics const> ConstraintManagerDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.loaded == rhs.loaded &&
    lhs.available == rhs.available &&
    lhs.current_name == rhs.current_name &&
    lhs.current_values == rhs.current_values;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4492970994a46fd3abfb96a139dcd930";
  }

  static const char* value(const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4492970994a46fd3ULL;
  static const uint64_t static_value2 = 0xabfb96a139dcd930ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ConstraintManagerDiagnostics";
  }

  static const char* value(const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The diagnostics of the ConstraintManager.\n"
"\n"
"time stamp\n"
"\n"
"# The list of all loaded constraints.\n"
"string[] loaded\n"
"\n"
"# The list of constraints which are available for the currently active state estimator.\n"
"string[] available\n"
"\n"
"# The name of the current constraints.\n"
"string current_name\n"
"\n"
"# The particular values of the current constraints.\n"
"# Beware, those might be overloaded by the current controller.\n"
"# Subscribe to \"control_manager/current_constraints\" for the\n"
"# true values.\n"
"mrs_msgs/DynamicsConstraints current_values\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/DynamicsConstraints\n"
"# UAV dynamics constraints\n"
"\n"
"# speed: m/s\n"
"# acceleration: m/s^2\n"
"# jerk: m/s^3\n"
"# snap: m/s^4\n"
"\n"
"# translational dynamics\n"
"\n"
"float64 horizontal_speed\n"
"float64 horizontal_acceleration\n"
"float64 horizontal_jerk\n"
"float64 horizontal_snap\n"
"\n"
"float64 vertical_ascending_speed\n"
"float64 vertical_ascending_acceleration\n"
"float64 vertical_ascending_jerk\n"
"float64 vertical_ascending_snap\n"
"\n"
"float64 vertical_descending_speed\n"
"float64 vertical_descending_acceleration\n"
"float64 vertical_descending_jerk\n"
"float64 vertical_descending_snap\n"
"\n"
"# heading\n"
"\n"
"float64 heading_speed\n"
"float64 heading_acceleration\n"
"float64 heading_jerk\n"
"float64 heading_snap\n"
"\n"
"# angular rates: rad/s\n"
"\n"
"float64 roll_rate\n"
"float64 pitch_rate\n"
"float64 yaw_rate\n"
"\n"
"# maximum tilt, rad\n"
"# max angle between body-3 and world-3 axes\n"
"\n"
"float64 tilt\n"
;
  }

  static const char* value(const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.loaded);
      stream.next(m.available);
      stream.next(m.current_name);
      stream.next(m.current_values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConstraintManagerDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ConstraintManagerDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "loaded[]" << std::endl;
    for (size_t i = 0; i < v.loaded.size(); ++i)
    {
      s << indent << "  loaded[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.loaded[i]);
    }
    s << indent << "available[]" << std::endl;
    for (size_t i = 0; i < v.available.size(); ++i)
    {
      s << indent << "  available[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.available[i]);
    }
    s << indent << "current_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.current_name);
    s << indent << "current_values: ";
    s << std::endl;
    Printer< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >::stream(s, indent + "  ", v.current_values);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_CONSTRAINTMANAGERDIAGNOSTICS_H
