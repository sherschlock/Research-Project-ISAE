// Generated by gencpp from file mrs_msgs/GpsStatus.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GPSSTATUS_H
#define MRS_MSGS_MESSAGE_GPSSTATUS_H


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
struct GpsStatus_
{
  typedef GpsStatus_<ContainerAllocator> Type;

  GpsStatus_()
    : quality(0)  {
    }
  GpsStatus_(const ContainerAllocator& _alloc)
    : quality(0)  {
  (void)_alloc;
    }



   typedef uint32_t _quality_type;
  _quality_type quality;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(GPS_QUALITY_NO_FIX)
  #undef GPS_QUALITY_NO_FIX
#endif
#if defined(_WIN32) && defined(GPS_QUALITY_SIGLE_POINT)
  #undef GPS_QUALITY_SIGLE_POINT
#endif
#if defined(_WIN32) && defined(GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL)
  #undef GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL
#endif
#if defined(_WIN32) && defined(GPS_QUALITY_RTK_FIX)
  #undef GPS_QUALITY_RTK_FIX
#endif
#if defined(_WIN32) && defined(GPS_QUALITY_RTK_FLOAT)
  #undef GPS_QUALITY_RTK_FLOAT
#endif

  enum {
    GPS_QUALITY_NO_FIX = 0u,
    GPS_QUALITY_SIGLE_POINT = 1u,
    GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL = 2u,
    GPS_QUALITY_RTK_FIX = 4u,
    GPS_QUALITY_RTK_FLOAT = 5u,
  };


  typedef boost::shared_ptr< ::mrs_msgs::GpsStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::GpsStatus_<ContainerAllocator> const> ConstPtr;

}; // struct GpsStatus_

typedef ::mrs_msgs::GpsStatus_<std::allocator<void> > GpsStatus;

typedef boost::shared_ptr< ::mrs_msgs::GpsStatus > GpsStatusPtr;
typedef boost::shared_ptr< ::mrs_msgs::GpsStatus const> GpsStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::GpsStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::GpsStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::GpsStatus_<ContainerAllocator1> & lhs, const ::mrs_msgs::GpsStatus_<ContainerAllocator2> & rhs)
{
  return lhs.quality == rhs.quality;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::GpsStatus_<ContainerAllocator1> & lhs, const ::mrs_msgs::GpsStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GpsStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GpsStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GpsStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "636d1c2a6683d74dcd1bd4a78682ded9";
  }

  static const char* value(const ::mrs_msgs::GpsStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x636d1c2a6683d74dULL;
  static const uint64_t static_value2 = 0xcd1bd4a78682ded9ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/GpsStatus";
  }

  static const char* value(const ::mrs_msgs::GpsStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 quality\n"
"uint32 GPS_QUALITY_NO_FIX=0\n"
"uint32 GPS_QUALITY_SIGLE_POINT=1\n"
"uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2\n"
"uint32 GPS_QUALITY_RTK_FIX=4\n"
"uint32 GPS_QUALITY_RTK_FLOAT=5\n"
;
  }

  static const char* value(const ::mrs_msgs::GpsStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.quality);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GpsStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::GpsStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::GpsStatus_<ContainerAllocator>& v)
  {
    s << indent << "quality: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.quality);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GPSSTATUS_H
