// Generated by gencpp from file mrs_msgs/BigDofecSalvoRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_BIGDOFECSALVOREQUEST_H
#define MRS_MSGS_MESSAGE_BIGDOFECSALVOREQUEST_H


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
struct BigDofecSalvoRequest_
{
  typedef BigDofecSalvoRequest_<ContainerAllocator> Type;

  BigDofecSalvoRequest_()
    : launch_delay_secs(0.0)
    , msecs_open(0)  {
    }
  BigDofecSalvoRequest_(const ContainerAllocator& _alloc)
    : launch_delay_secs(0.0)
    , msecs_open(0)  {
  (void)_alloc;
    }



   typedef double _launch_delay_secs_type;
  _launch_delay_secs_type launch_delay_secs;

   typedef uint16_t _msecs_open_type;
  _msecs_open_type msecs_open;





  typedef boost::shared_ptr< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BigDofecSalvoRequest_

typedef ::mrs_msgs::BigDofecSalvoRequest_<std::allocator<void> > BigDofecSalvoRequest;

typedef boost::shared_ptr< ::mrs_msgs::BigDofecSalvoRequest > BigDofecSalvoRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::BigDofecSalvoRequest const> BigDofecSalvoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator2> & rhs)
{
  return lhs.launch_delay_secs == rhs.launch_delay_secs &&
    lhs.msecs_open == rhs.msecs_open;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c8d2e03a00254a7236a4e6cfa4121b1";
  }

  static const char* value(const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c8d2e03a00254a7ULL;
  static const uint64_t static_value2 = 0x236a4e6cfa4121b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/BigDofecSalvoRequest";
  }

  static const char* value(const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 launch_delay_secs\n"
"uint16 msecs_open\n"
;
  }

  static const char* value(const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.launch_delay_secs);
      stream.next(m.msecs_open);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BigDofecSalvoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::BigDofecSalvoRequest_<ContainerAllocator>& v)
  {
    s << indent << "launch_delay_secs: ";
    Printer<double>::stream(s, indent + "  ", v.launch_delay_secs);
    s << indent << "msecs_open: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.msecs_open);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_BIGDOFECSALVOREQUEST_H