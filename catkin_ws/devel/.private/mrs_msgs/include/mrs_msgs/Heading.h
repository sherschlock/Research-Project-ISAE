// Generated by gencpp from file mrs_msgs/Heading.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_HEADING_H
#define MRS_MSGS_MESSAGE_HEADING_H


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
struct Heading_
{
  typedef Heading_<ContainerAllocator> Type;

  Heading_()
    : header()
    , yaw(0.0)
    , yaw_rate(0.0)
    , gyro_bias(0.0)  {
    }
  Heading_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , yaw(0.0)
    , yaw_rate(0.0)
    , gyro_bias(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _yaw_rate_type;
  _yaw_rate_type yaw_rate;

   typedef double _gyro_bias_type;
  _gyro_bias_type gyro_bias;





  typedef boost::shared_ptr< ::mrs_msgs::Heading_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Heading_<ContainerAllocator> const> ConstPtr;

}; // struct Heading_

typedef ::mrs_msgs::Heading_<std::allocator<void> > Heading;

typedef boost::shared_ptr< ::mrs_msgs::Heading > HeadingPtr;
typedef boost::shared_ptr< ::mrs_msgs::Heading const> HeadingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Heading_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Heading_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Heading_<ContainerAllocator1> & lhs, const ::mrs_msgs::Heading_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.yaw == rhs.yaw &&
    lhs.yaw_rate == rhs.yaw_rate &&
    lhs.gyro_bias == rhs.gyro_bias;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Heading_<ContainerAllocator1> & lhs, const ::mrs_msgs::Heading_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Heading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Heading_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Heading_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Heading_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Heading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Heading_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Heading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3ccfde06c6df8e7ed4f7a910ba738eff";
  }

  static const char* value(const ::mrs_msgs::Heading_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3ccfde06c6df8e7eULL;
  static const uint64_t static_value2 = 0xd4f7a910ba738effULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Heading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Heading";
  }

  static const char* value(const ::mrs_msgs::Heading_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Heading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64 yaw\n"
"float64 yaw_rate\n"
"float64 gyro_bias\n"
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

  static const char* value(const ::mrs_msgs::Heading_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Heading_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.yaw);
      stream.next(m.yaw_rate);
      stream.next(m.gyro_bias);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Heading_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Heading_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Heading_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "yaw_rate: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_rate);
    s << indent << "gyro_bias: ";
    Printer<double>::stream(s, indent + "  ", v.gyro_bias);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_HEADING_H
