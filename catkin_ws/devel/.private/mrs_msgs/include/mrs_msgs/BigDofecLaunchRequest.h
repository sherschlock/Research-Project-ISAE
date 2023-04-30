// Generated by gencpp from file mrs_msgs/BigDofecLaunchRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_BIGDOFECLAUNCHREQUEST_H
#define MRS_MSGS_MESSAGE_BIGDOFECLAUNCHREQUEST_H


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
struct BigDofecLaunchRequest_
{
  typedef BigDofecLaunchRequest_<ContainerAllocator> Type;

  BigDofecLaunchRequest_()
    : channel(0)
    , msecs_open(0)  {
    }
  BigDofecLaunchRequest_(const ContainerAllocator& _alloc)
    : channel(0)
    , msecs_open(0)  {
  (void)_alloc;
    }



   typedef uint8_t _channel_type;
  _channel_type channel;

   typedef uint16_t _msecs_open_type;
  _msecs_open_type msecs_open;





  typedef boost::shared_ptr< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BigDofecLaunchRequest_

typedef ::mrs_msgs::BigDofecLaunchRequest_<std::allocator<void> > BigDofecLaunchRequest;

typedef boost::shared_ptr< ::mrs_msgs::BigDofecLaunchRequest > BigDofecLaunchRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::BigDofecLaunchRequest const> BigDofecLaunchRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator2> & rhs)
{
  return lhs.channel == rhs.channel &&
    lhs.msecs_open == rhs.msecs_open;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "84bc38e7fd43b6895d1ad749dc70dee0";
  }

  static const char* value(const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x84bc38e7fd43b689ULL;
  static const uint64_t static_value2 = 0x5d1ad749dc70dee0ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/BigDofecLaunchRequest";
  }

  static const char* value(const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 channel\n"
"uint16 msecs_open\n"
;
  }

  static const char* value(const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
      stream.next(m.msecs_open);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BigDofecLaunchRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::BigDofecLaunchRequest_<ContainerAllocator>& v)
  {
    s << indent << "channel: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.channel);
    s << indent << "msecs_open: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.msecs_open);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_BIGDOFECLAUNCHREQUEST_H