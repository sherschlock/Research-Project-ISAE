// Generated by gencpp from file mrs_msgs/EstimatedState.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_ESTIMATEDSTATE_H
#define MRS_MSGS_MESSAGE_ESTIMATEDSTATE_H


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
struct EstimatedState_
{
  typedef EstimatedState_<ContainerAllocator> Type;

  EstimatedState_()
    : header()
    , state()
    , covariance()  {
    }
  EstimatedState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , state(_alloc)
    , covariance(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _state_type;
  _state_type state;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _covariance_type;
  _covariance_type covariance;





  typedef boost::shared_ptr< ::mrs_msgs::EstimatedState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::EstimatedState_<ContainerAllocator> const> ConstPtr;

}; // struct EstimatedState_

typedef ::mrs_msgs::EstimatedState_<std::allocator<void> > EstimatedState;

typedef boost::shared_ptr< ::mrs_msgs::EstimatedState > EstimatedStatePtr;
typedef boost::shared_ptr< ::mrs_msgs::EstimatedState const> EstimatedStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::EstimatedState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::EstimatedState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::EstimatedState_<ContainerAllocator1> & lhs, const ::mrs_msgs::EstimatedState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.state == rhs.state &&
    lhs.covariance == rhs.covariance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::EstimatedState_<ContainerAllocator1> & lhs, const ::mrs_msgs::EstimatedState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::EstimatedState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::EstimatedState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::EstimatedState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "699a0b2414bebaf5ed2e4d8b73080cac";
  }

  static const char* value(const ::mrs_msgs::EstimatedState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x699a0b2414bebaf5ULL;
  static const uint64_t static_value2 = 0xed2e4d8b73080cacULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/EstimatedState";
  }

  static const char* value(const ::mrs_msgs::EstimatedState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64[] state\n"
"float64[] covariance\n"
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

  static const char* value(const ::mrs_msgs::EstimatedState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.state);
      stream.next(m.covariance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EstimatedState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::EstimatedState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::EstimatedState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "state[]" << std::endl;
    for (size_t i = 0; i < v.state.size(); ++i)
    {
      s << indent << "  state[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.state[i]);
    }
    s << indent << "covariance[]" << std::endl;
    for (size_t i = 0; i < v.covariance.size(); ++i)
    {
      s << indent << "  covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.covariance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_ESTIMATEDSTATE_H
