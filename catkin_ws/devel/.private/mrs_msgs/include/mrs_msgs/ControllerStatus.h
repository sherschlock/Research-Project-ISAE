// Generated by gencpp from file mrs_msgs/ControllerStatus.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_CONTROLLERSTATUS_H
#define MRS_MSGS_MESSAGE_CONTROLLERSTATUS_H


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
struct ControllerStatus_
{
  typedef ControllerStatus_<ContainerAllocator> Type;

  ControllerStatus_()
    : active(false)  {
    }
  ControllerStatus_(const ContainerAllocator& _alloc)
    : active(false)  {
  (void)_alloc;
    }



   typedef uint8_t _active_type;
  _active_type active;





  typedef boost::shared_ptr< ::mrs_msgs::ControllerStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ControllerStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ControllerStatus_

typedef ::mrs_msgs::ControllerStatus_<std::allocator<void> > ControllerStatus;

typedef boost::shared_ptr< ::mrs_msgs::ControllerStatus > ControllerStatusPtr;
typedef boost::shared_ptr< ::mrs_msgs::ControllerStatus const> ControllerStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ControllerStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ControllerStatus_<ContainerAllocator1> & lhs, const ::mrs_msgs::ControllerStatus_<ContainerAllocator2> & rhs)
{
  return lhs.active == rhs.active;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ControllerStatus_<ContainerAllocator1> & lhs, const ::mrs_msgs::ControllerStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ControllerStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ControllerStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ControllerStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c5cfb0a2565df41de6873994aee57d2";
  }

  static const char* value(const ::mrs_msgs::ControllerStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c5cfb0a2565df41ULL;
  static const uint64_t static_value2 = 0xde6873994aee57d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ControllerStatus";
  }

  static const char* value(const ::mrs_msgs::ControllerStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool active\n"
;
  }

  static const char* value(const ::mrs_msgs::ControllerStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.active);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControllerStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ControllerStatus_<ContainerAllocator>& v)
  {
    s << indent << "active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.active);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_CONTROLLERSTATUS_H
