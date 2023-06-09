// Generated by gencpp from file mrs_msgs/GpsDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GPSDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_GPSDIAGNOSTICS_H


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
struct GpsDiagnostics_
{
  typedef GpsDiagnostics_<ContainerAllocator> Type;

  GpsDiagnostics_()
    : satellites_visible(0)
    , fix_type(0)
    , eph(0.0)
    , epv(0.0)  {
    }
  GpsDiagnostics_(const ContainerAllocator& _alloc)
    : satellites_visible(0)
    , fix_type(0)
    , eph(0.0)
    , epv(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _satellites_visible_type;
  _satellites_visible_type satellites_visible;

   typedef uint8_t _fix_type_type;
  _fix_type_type fix_type;

   typedef float _eph_type;
  _eph_type eph;

   typedef float _epv_type;
  _epv_type epv;





  typedef boost::shared_ptr< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct GpsDiagnostics_

typedef ::mrs_msgs::GpsDiagnostics_<std::allocator<void> > GpsDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::GpsDiagnostics > GpsDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::GpsDiagnostics const> GpsDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.satellites_visible == rhs.satellites_visible &&
    lhs.fix_type == rhs.fix_type &&
    lhs.eph == rhs.eph &&
    lhs.epv == rhs.epv;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9ad1ab255ad6615041f82f42bc2320f6";
  }

  static const char* value(const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9ad1ab255ad66150ULL;
  static const uint64_t static_value2 = 0x41f82f42bc2320f6ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/GpsDiagnostics";
  }

  static const char* value(const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 satellites_visible\n"
"uint8 fix_type\n"
"float32 eph\n"
"float32 epv\n"
;
  }

  static const char* value(const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.satellites_visible);
      stream.next(m.fix_type);
      stream.next(m.eph);
      stream.next(m.epv);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GpsDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::GpsDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::GpsDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "satellites_visible: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.satellites_visible);
    s << indent << "fix_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fix_type);
    s << indent << "eph: ";
    Printer<float>::stream(s, indent + "  ", v.eph);
    s << indent << "epv: ";
    Printer<float>::stream(s, indent + "  ", v.epv);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GPSDIAGNOSTICS_H
