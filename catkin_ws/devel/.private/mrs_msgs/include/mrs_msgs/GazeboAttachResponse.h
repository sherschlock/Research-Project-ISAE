// Generated by gencpp from file mrs_msgs/GazeboAttachResponse.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GAZEBOATTACHRESPONSE_H
#define MRS_MSGS_MESSAGE_GAZEBOATTACHRESPONSE_H


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
struct GazeboAttachResponse_
{
  typedef GazeboAttachResponse_<ContainerAllocator> Type;

  GazeboAttachResponse_()
    : ok(false)  {
    }
  GazeboAttachResponse_(const ContainerAllocator& _alloc)
    : ok(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;





  typedef boost::shared_ptr< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GazeboAttachResponse_

typedef ::mrs_msgs::GazeboAttachResponse_<std::allocator<void> > GazeboAttachResponse;

typedef boost::shared_ptr< ::mrs_msgs::GazeboAttachResponse > GazeboAttachResponsePtr;
typedef boost::shared_ptr< ::mrs_msgs::GazeboAttachResponse const> GazeboAttachResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator1> & lhs, const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator1> & lhs, const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f6da3883749771fac40d6deb24a8c02";
  }

  static const char* value(const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f6da3883749771fULL;
  static const uint64_t static_value2 = 0xac40d6deb24a8c02ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/GazeboAttachResponse";
  }

  static const char* value(const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"# Indicates whether the requested operation was carried out successfully.\n"
"bool ok\n"
"\n"
;
  }

  static const char* value(const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GazeboAttachResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::GazeboAttachResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GAZEBOATTACHRESPONSE_H