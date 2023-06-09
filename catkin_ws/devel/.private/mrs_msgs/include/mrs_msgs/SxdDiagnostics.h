// Generated by gencpp from file mrs_msgs/SxdDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_SXDDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_SXDDIAGNOSTICS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mrs_msgs
{
template <class ContainerAllocator>
struct SxdDiagnostics_
{
  typedef SxdDiagnostics_<ContainerAllocator> Type;

  SxdDiagnostics_()
    : stamp()
    , temperature(0.0)  {
    }
  SxdDiagnostics_(const ContainerAllocator& _alloc)
    : stamp()
    , temperature(0.0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef double _temperature_type;
  _temperature_type temperature;





  typedef boost::shared_ptr< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct SxdDiagnostics_

typedef ::mrs_msgs::SxdDiagnostics_<std::allocator<void> > SxdDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::SxdDiagnostics > SxdDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::SxdDiagnostics const> SxdDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.temperature == rhs.temperature;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "584d7a29569614bb16133e5efd8b36c6";
  }

  static const char* value(const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x584d7a29569614bbULL;
  static const uint64_t static_value2 = 0x16133e5efd8b36c6ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/SxdDiagnostics";
  }

  static const char* value(const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"float64 temperature\n"
;
  }

  static const char* value(const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SxdDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::SxdDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::SxdDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "temperature: ";
    Printer<double>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_SXDDIAGNOSTICS_H
