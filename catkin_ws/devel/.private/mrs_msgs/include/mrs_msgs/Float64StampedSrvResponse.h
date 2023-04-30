// Generated by gencpp from file mrs_msgs/Float64StampedSrvResponse.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRVRESPONSE_H
#define MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRVRESPONSE_H


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
struct Float64StampedSrvResponse_
{
  typedef Float64StampedSrvResponse_<ContainerAllocator> Type;

  Float64StampedSrvResponse_()
    : success(false)
    , message()  {
    }
  Float64StampedSrvResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct Float64StampedSrvResponse_

typedef ::mrs_msgs::Float64StampedSrvResponse_<std::allocator<void> > Float64StampedSrvResponse;

typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvResponse > Float64StampedSrvResponsePtr;
typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvResponse const> Float64StampedSrvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator1> & lhs, const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator1> & lhs, const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Float64StampedSrvResponse";
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string message\n"
"\n"
;
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Float64StampedSrvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Float64StampedSrvResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRVRESPONSE_H