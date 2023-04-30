// Generated by gencpp from file mrs_msgs/GazeboApplyForceResponse.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GAZEBOAPPLYFORCERESPONSE_H
#define MRS_MSGS_MESSAGE_GAZEBOAPPLYFORCERESPONSE_H


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
struct GazeboApplyForceResponse_
{
  typedef GazeboApplyForceResponse_<ContainerAllocator> Type;

  GazeboApplyForceResponse_()
    : ok(false)  {
    }
  GazeboApplyForceResponse_(const ContainerAllocator& _alloc)
    : ok(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;





  typedef boost::shared_ptr< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GazeboApplyForceResponse_

typedef ::mrs_msgs::GazeboApplyForceResponse_<std::allocator<void> > GazeboApplyForceResponse;

typedef boost::shared_ptr< ::mrs_msgs::GazeboApplyForceResponse > GazeboApplyForceResponsePtr;
typedef boost::shared_ptr< ::mrs_msgs::GazeboApplyForceResponse const> GazeboApplyForceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator1> & lhs, const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator1> & lhs, const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f6da3883749771fac40d6deb24a8c02";
  }

  static const char* value(const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f6da3883749771fULL;
  static const uint64_t static_value2 = 0xac40d6deb24a8c02ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/GazeboApplyForceResponse";
  }

  static const char* value(const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"# Indicates whether the requested operation was carried out successfully.\n"
"bool ok\n"
"\n"
;
  }

  static const char* value(const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GazeboApplyForceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::GazeboApplyForceResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GAZEBOAPPLYFORCERESPONSE_H