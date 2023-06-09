// Generated by gencpp from file mrs_msgs/ValidateReferenceRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_VALIDATEREFERENCEREQUEST_H
#define MRS_MSGS_MESSAGE_VALIDATEREFERENCEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mrs_msgs/ReferenceStamped.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct ValidateReferenceRequest_
{
  typedef ValidateReferenceRequest_<ContainerAllocator> Type;

  ValidateReferenceRequest_()
    : reference()  {
    }
  ValidateReferenceRequest_(const ContainerAllocator& _alloc)
    : reference(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mrs_msgs::ReferenceStamped_<ContainerAllocator>  _reference_type;
  _reference_type reference;





  typedef boost::shared_ptr< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ValidateReferenceRequest_

typedef ::mrs_msgs::ValidateReferenceRequest_<std::allocator<void> > ValidateReferenceRequest;

typedef boost::shared_ptr< ::mrs_msgs::ValidateReferenceRequest > ValidateReferenceRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::ValidateReferenceRequest const> ValidateReferenceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.reference == rhs.reference;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a69c36b8bdb1f382fb39702916f1c3e";
  }

  static const char* value(const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a69c36b8bdb1f38ULL;
  static const uint64_t static_value2 = 0x2fb39702916f1c3eULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ValidateReferenceRequest";
  }

  static const char* value(const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ReferenceStamped reference\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/ReferenceStamped\n"
"# A Positon+Heading reference with a header.\n"
"\n"
"std_msgs/Header header\n"
"mrs_msgs/Reference reference\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/Reference\n"
"# This message defines a control reference with a Position+Heading.\n"
"\n"
"geometry_msgs/Point position\n"
"\n"
"# Heading is atan2() of XY-world projection of the UAV's body X-axis.\n"
"float64 heading\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reference);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ValidateReferenceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ValidateReferenceRequest_<ContainerAllocator>& v)
  {
    s << indent << "reference: ";
    s << std::endl;
    Printer< ::mrs_msgs::ReferenceStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.reference);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_VALIDATEREFERENCEREQUEST_H
