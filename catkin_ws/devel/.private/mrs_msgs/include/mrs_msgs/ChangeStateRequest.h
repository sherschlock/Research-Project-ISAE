// Generated by gencpp from file mrs_msgs/ChangeStateRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_CHANGESTATEREQUEST_H
#define MRS_MSGS_MESSAGE_CHANGESTATEREQUEST_H


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
struct ChangeStateRequest_
{
  typedef ChangeStateRequest_<ContainerAllocator> Type;

  ChangeStateRequest_()
    : state_id(0)  {
    }
  ChangeStateRequest_(const ContainerAllocator& _alloc)
    : state_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _state_id_type;
  _state_id_type state_id;





  typedef boost::shared_ptr< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeStateRequest_

typedef ::mrs_msgs::ChangeStateRequest_<std::allocator<void> > ChangeStateRequest;

typedef boost::shared_ptr< ::mrs_msgs::ChangeStateRequest > ChangeStateRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::ChangeStateRequest const> ChangeStateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.state_id == rhs.state_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0618da6acb724cdcc954868d479ae1cc";
  }

  static const char* value(const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0618da6acb724cdcULL;
  static const uint64_t static_value2 = 0xc954868d479ae1ccULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ChangeStateRequest";
  }

  static const char* value(const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 state_id\n"
;
  }

  static const char* value(const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ChangeStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ChangeStateRequest_<ContainerAllocator>& v)
  {
    s << indent << "state_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_CHANGESTATEREQUEST_H
