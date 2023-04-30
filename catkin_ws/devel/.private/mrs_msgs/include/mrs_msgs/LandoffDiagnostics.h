// Generated by gencpp from file mrs_msgs/LandoffDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_LANDOFFDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_LANDOFFDIAGNOSTICS_H


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
struct LandoffDiagnostics_
{
  typedef LandoffDiagnostics_<ContainerAllocator> Type;

  LandoffDiagnostics_()
    : stamp()
    , active(false)
    , landing(false)
    , taking_off(false)
    , elanding(false)  {
    }
  LandoffDiagnostics_(const ContainerAllocator& _alloc)
    : stamp()
    , active(false)
    , landing(false)
    , taking_off(false)
    , elanding(false)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint8_t _active_type;
  _active_type active;

   typedef uint8_t _landing_type;
  _landing_type landing;

   typedef uint8_t _taking_off_type;
  _taking_off_type taking_off;

   typedef uint8_t _elanding_type;
  _elanding_type elanding;





  typedef boost::shared_ptr< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct LandoffDiagnostics_

typedef ::mrs_msgs::LandoffDiagnostics_<std::allocator<void> > LandoffDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::LandoffDiagnostics > LandoffDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::LandoffDiagnostics const> LandoffDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.active == rhs.active &&
    lhs.landing == rhs.landing &&
    lhs.taking_off == rhs.taking_off &&
    lhs.elanding == rhs.elanding;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1feb5898812832580fccb73c0f05b11a";
  }

  static const char* value(const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1feb589881283258ULL;
  static const uint64_t static_value2 = 0x0fccb73c0f05b11aULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/LandoffDiagnostics";
  }

  static const char* value(const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"bool active\n"
"bool landing\n"
"bool taking_off\n"
"bool elanding\n"
;
  }

  static const char* value(const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.active);
      stream.next(m.landing);
      stream.next(m.taking_off);
      stream.next(m.elanding);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LandoffDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::LandoffDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.active);
    s << indent << "landing: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.landing);
    s << indent << "taking_off: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.taking_off);
    s << indent << "elanding: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.elanding);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_LANDOFFDIAGNOSTICS_H
