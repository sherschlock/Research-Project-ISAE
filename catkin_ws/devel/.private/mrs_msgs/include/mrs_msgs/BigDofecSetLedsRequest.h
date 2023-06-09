// Generated by gencpp from file mrs_msgs/BigDofecSetLedsRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_BIGDOFECSETLEDSREQUEST_H
#define MRS_MSGS_MESSAGE_BIGDOFECSETLEDSREQUEST_H


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
struct BigDofecSetLedsRequest_
{
  typedef BigDofecSetLedsRequest_<ContainerAllocator> Type;

  BigDofecSetLedsRequest_()
    : channel(0)
    , num_leds(0)
    , r(0)
    , g(0)
    , b(0)  {
    }
  BigDofecSetLedsRequest_(const ContainerAllocator& _alloc)
    : channel(0)
    , num_leds(0)
    , r(0)
    , g(0)
    , b(0)  {
  (void)_alloc;
    }



   typedef uint8_t _channel_type;
  _channel_type channel;

   typedef uint8_t _num_leds_type;
  _num_leds_type num_leds;

   typedef uint8_t _r_type;
  _r_type r;

   typedef uint8_t _g_type;
  _g_type g;

   typedef uint8_t _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BigDofecSetLedsRequest_

typedef ::mrs_msgs::BigDofecSetLedsRequest_<std::allocator<void> > BigDofecSetLedsRequest;

typedef boost::shared_ptr< ::mrs_msgs::BigDofecSetLedsRequest > BigDofecSetLedsRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::BigDofecSetLedsRequest const> BigDofecSetLedsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.channel == rhs.channel &&
    lhs.num_leds == rhs.num_leds &&
    lhs.r == rhs.r &&
    lhs.g == rhs.g &&
    lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c646cde6fc0291ebaee38a87e3fb881f";
  }

  static const char* value(const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc646cde6fc0291ebULL;
  static const uint64_t static_value2 = 0xaee38a87e3fb881fULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/BigDofecSetLedsRequest";
  }

  static const char* value(const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 channel\n"
"uint8 num_leds\n"
"uint8 r\n"
"uint8 g\n"
"uint8 b\n"
;
  }

  static const char* value(const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channel);
      stream.next(m.num_leds);
      stream.next(m.r);
      stream.next(m.g);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BigDofecSetLedsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::BigDofecSetLedsRequest_<ContainerAllocator>& v)
  {
    s << indent << "channel: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.channel);
    s << indent << "num_leds: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.num_leds);
    s << indent << "r: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.r);
    s << indent << "g: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.g);
    s << indent << "b: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_BIGDOFECSETLEDSREQUEST_H
