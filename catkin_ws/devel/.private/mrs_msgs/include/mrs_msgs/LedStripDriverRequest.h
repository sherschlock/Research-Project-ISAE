// Generated by gencpp from file mrs_msgs/LedStripDriverRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_LEDSTRIPDRIVERREQUEST_H
#define MRS_MSGS_MESSAGE_LEDSTRIPDRIVERREQUEST_H


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
struct LedStripDriverRequest_
{
  typedef LedStripDriverRequest_<ContainerAllocator> Type;

  LedStripDriverRequest_()
    : output_a(0)
    , output_b(0)
    , output_vbat(false)  {
    }
  LedStripDriverRequest_(const ContainerAllocator& _alloc)
    : output_a(0)
    , output_b(0)
    , output_vbat(false)  {
  (void)_alloc;
    }



   typedef uint8_t _output_a_type;
  _output_a_type output_a;

   typedef uint8_t _output_b_type;
  _output_b_type output_b;

   typedef uint8_t _output_vbat_type;
  _output_vbat_type output_vbat;





  typedef boost::shared_ptr< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LedStripDriverRequest_

typedef ::mrs_msgs::LedStripDriverRequest_<std::allocator<void> > LedStripDriverRequest;

typedef boost::shared_ptr< ::mrs_msgs::LedStripDriverRequest > LedStripDriverRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::LedStripDriverRequest const> LedStripDriverRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator2> & rhs)
{
  return lhs.output_a == rhs.output_a &&
    lhs.output_b == rhs.output_b &&
    lhs.output_vbat == rhs.output_vbat;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a9fc672f957fbc4c76c4ac0c66a70d7";
  }

  static const char* value(const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a9fc672f957fbc4ULL;
  static const uint64_t static_value2 = 0xc76c4ac0c66a70d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/LedStripDriverRequest";
  }

  static const char* value(const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 output_a\n"
"uint8 output_b\n"
"bool output_vbat\n"
;
  }

  static const char* value(const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output_a);
      stream.next(m.output_b);
      stream.next(m.output_vbat);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LedStripDriverRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::LedStripDriverRequest_<ContainerAllocator>& v)
  {
    s << indent << "output_a: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.output_a);
    s << indent << "output_b: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.output_b);
    s << indent << "output_vbat: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.output_vbat);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_LEDSTRIPDRIVERREQUEST_H