// Generated by gencpp from file mrs_msgs/GetFloat64Request.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GETFLOAT64REQUEST_H
#define MRS_MSGS_MESSAGE_GETFLOAT64REQUEST_H


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
struct GetFloat64Request_
{
  typedef GetFloat64Request_<ContainerAllocator> Type;

  GetFloat64Request_()
    {
    }
  GetFloat64Request_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> const> ConstPtr;

}; // struct GetFloat64Request_

typedef ::mrs_msgs::GetFloat64Request_<std::allocator<void> > GetFloat64Request;

typedef boost::shared_ptr< ::mrs_msgs::GetFloat64Request > GetFloat64RequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::GetFloat64Request const> GetFloat64RequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::GetFloat64Request_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::mrs_msgs::GetFloat64Request_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/GetFloat64Request";
  }

  static const char* value(const ::mrs_msgs::GetFloat64Request_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::mrs_msgs::GetFloat64Request_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetFloat64Request_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::GetFloat64Request_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::mrs_msgs::GetFloat64Request_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GETFLOAT64REQUEST_H