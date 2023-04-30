// Generated by gencpp from file mrs_msgs/Float64StampedSrvRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRVREQUEST_H
#define MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRVREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct Float64StampedSrvRequest_
{
  typedef Float64StampedSrvRequest_<ContainerAllocator> Type;

  Float64StampedSrvRequest_()
    : header()
    , value(0.0)  {
    }
  Float64StampedSrvRequest_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , value(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Float64StampedSrvRequest_

typedef ::mrs_msgs::Float64StampedSrvRequest_<std::allocator<void> > Float64StampedSrvRequest;

typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvRequest > Float64StampedSrvRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::Float64StampedSrvRequest const> Float64StampedSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d053817de0764f9ee90dbc89c4cdd751";
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd053817de0764f9eULL;
  static const uint64_t static_value2 = 0xe90dbc89c4cdd751ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Float64StampedSrvRequest";
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64 value\n"
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
;
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Float64StampedSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Float64StampedSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "value: ";
    Printer<double>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRVREQUEST_H