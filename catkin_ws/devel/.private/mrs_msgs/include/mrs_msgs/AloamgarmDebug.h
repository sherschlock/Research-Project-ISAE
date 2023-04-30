// Generated by gencpp from file mrs_msgs/AloamgarmDebug.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_ALOAMGARMDEBUG_H
#define MRS_MSGS_MESSAGE_ALOAMGARMDEBUG_H


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
struct AloamgarmDebug_
{
  typedef AloamgarmDebug_<ContainerAllocator> Type;

  AloamgarmDebug_()
    : header()
    , duration_all(0.0)
    , duration_aloam(0.0)
    , duration_garmin(0.0)
    , duration_baro(0.0)
    , duration_input(0.0)
    , duration_rest(0.0)
    , timestamp_diff_all(0.0)
    , timestamp_diff_aloam(0.0)
    , timestamp_diff_garmin(0.0)
    , timestamp_diff_baro(0.0)
    , timestamp_diff_input(0.0)
    , timestamp_diff_rest(0.0)  {
    }
  AloamgarmDebug_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , duration_all(0.0)
    , duration_aloam(0.0)
    , duration_garmin(0.0)
    , duration_baro(0.0)
    , duration_input(0.0)
    , duration_rest(0.0)
    , timestamp_diff_all(0.0)
    , timestamp_diff_aloam(0.0)
    , timestamp_diff_garmin(0.0)
    , timestamp_diff_baro(0.0)
    , timestamp_diff_input(0.0)
    , timestamp_diff_rest(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _duration_all_type;
  _duration_all_type duration_all;

   typedef double _duration_aloam_type;
  _duration_aloam_type duration_aloam;

   typedef double _duration_garmin_type;
  _duration_garmin_type duration_garmin;

   typedef double _duration_baro_type;
  _duration_baro_type duration_baro;

   typedef double _duration_input_type;
  _duration_input_type duration_input;

   typedef double _duration_rest_type;
  _duration_rest_type duration_rest;

   typedef double _timestamp_diff_all_type;
  _timestamp_diff_all_type timestamp_diff_all;

   typedef double _timestamp_diff_aloam_type;
  _timestamp_diff_aloam_type timestamp_diff_aloam;

   typedef double _timestamp_diff_garmin_type;
  _timestamp_diff_garmin_type timestamp_diff_garmin;

   typedef double _timestamp_diff_baro_type;
  _timestamp_diff_baro_type timestamp_diff_baro;

   typedef double _timestamp_diff_input_type;
  _timestamp_diff_input_type timestamp_diff_input;

   typedef double _timestamp_diff_rest_type;
  _timestamp_diff_rest_type timestamp_diff_rest;





  typedef boost::shared_ptr< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> const> ConstPtr;

}; // struct AloamgarmDebug_

typedef ::mrs_msgs::AloamgarmDebug_<std::allocator<void> > AloamgarmDebug;

typedef boost::shared_ptr< ::mrs_msgs::AloamgarmDebug > AloamgarmDebugPtr;
typedef boost::shared_ptr< ::mrs_msgs::AloamgarmDebug const> AloamgarmDebugConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator1> & lhs, const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.duration_all == rhs.duration_all &&
    lhs.duration_aloam == rhs.duration_aloam &&
    lhs.duration_garmin == rhs.duration_garmin &&
    lhs.duration_baro == rhs.duration_baro &&
    lhs.duration_input == rhs.duration_input &&
    lhs.duration_rest == rhs.duration_rest &&
    lhs.timestamp_diff_all == rhs.timestamp_diff_all &&
    lhs.timestamp_diff_aloam == rhs.timestamp_diff_aloam &&
    lhs.timestamp_diff_garmin == rhs.timestamp_diff_garmin &&
    lhs.timestamp_diff_baro == rhs.timestamp_diff_baro &&
    lhs.timestamp_diff_input == rhs.timestamp_diff_input &&
    lhs.timestamp_diff_rest == rhs.timestamp_diff_rest;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator1> & lhs, const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
{
  static const char* value()
  {
    return "10902ec7873a0eb0f7aaae111478ce31";
  }

  static const char* value(const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x10902ec7873a0eb0ULL;
  static const uint64_t static_value2 = 0xf7aaae111478ce31ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/AloamgarmDebug";
  }

  static const char* value(const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64 duration_all\n"
"float64 duration_aloam\n"
"float64 duration_garmin\n"
"float64 duration_baro\n"
"float64 duration_input\n"
"float64 duration_rest\n"
"float64 timestamp_diff_all\n"
"float64 timestamp_diff_aloam\n"
"float64 timestamp_diff_garmin\n"
"float64 timestamp_diff_baro\n"
"float64 timestamp_diff_input\n"
"float64 timestamp_diff_rest\n"
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

  static const char* value(const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.duration_all);
      stream.next(m.duration_aloam);
      stream.next(m.duration_garmin);
      stream.next(m.duration_baro);
      stream.next(m.duration_input);
      stream.next(m.duration_rest);
      stream.next(m.timestamp_diff_all);
      stream.next(m.timestamp_diff_aloam);
      stream.next(m.timestamp_diff_garmin);
      stream.next(m.timestamp_diff_baro);
      stream.next(m.timestamp_diff_input);
      stream.next(m.timestamp_diff_rest);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AloamgarmDebug_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::AloamgarmDebug_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::AloamgarmDebug_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "duration_all: ";
    Printer<double>::stream(s, indent + "  ", v.duration_all);
    s << indent << "duration_aloam: ";
    Printer<double>::stream(s, indent + "  ", v.duration_aloam);
    s << indent << "duration_garmin: ";
    Printer<double>::stream(s, indent + "  ", v.duration_garmin);
    s << indent << "duration_baro: ";
    Printer<double>::stream(s, indent + "  ", v.duration_baro);
    s << indent << "duration_input: ";
    Printer<double>::stream(s, indent + "  ", v.duration_input);
    s << indent << "duration_rest: ";
    Printer<double>::stream(s, indent + "  ", v.duration_rest);
    s << indent << "timestamp_diff_all: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp_diff_all);
    s << indent << "timestamp_diff_aloam: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp_diff_aloam);
    s << indent << "timestamp_diff_garmin: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp_diff_garmin);
    s << indent << "timestamp_diff_baro: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp_diff_baro);
    s << indent << "timestamp_diff_input: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp_diff_input);
    s << indent << "timestamp_diff_rest: ";
    Printer<double>::stream(s, indent + "  ", v.timestamp_diff_rest);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_ALOAMGARMDEBUG_H
