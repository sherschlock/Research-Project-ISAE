// Generated by gencpp from file mrs_msgs/TersusMessageHeader.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_TERSUSMESSAGEHEADER_H
#define MRS_MSGS_MESSAGE_TERSUSMESSAGEHEADER_H


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
struct TersusMessageHeader_
{
  typedef TersusMessageHeader_<ContainerAllocator> Type;

  TersusMessageHeader_()
    : message_name()
    , port_address()
    , sequence(0)
    , idle_time(0.0)
    , time_status()
    , gps_week(0)
    , gps_week_seconds(0.0)
    , receiver_status(0)
    , software_version(0)  {
    }
  TersusMessageHeader_(const ContainerAllocator& _alloc)
    : message_name(_alloc)
    , port_address(_alloc)
    , sequence(0)
    , idle_time(0.0)
    , time_status(_alloc)
    , gps_week(0)
    , gps_week_seconds(0.0)
    , receiver_status(0)
    , software_version(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_name_type;
  _message_name_type message_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _port_address_type;
  _port_address_type port_address;

   typedef uint16_t _sequence_type;
  _sequence_type sequence;

   typedef float _idle_time_type;
  _idle_time_type idle_time;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _time_status_type;
  _time_status_type time_status;

   typedef uint16_t _gps_week_type;
  _gps_week_type gps_week;

   typedef float _gps_week_seconds_type;
  _gps_week_seconds_type gps_week_seconds;

   typedef uint32_t _receiver_status_type;
  _receiver_status_type receiver_status;

   typedef uint16_t _software_version_type;
  _software_version_type software_version;





  typedef boost::shared_ptr< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> const> ConstPtr;

}; // struct TersusMessageHeader_

typedef ::mrs_msgs::TersusMessageHeader_<std::allocator<void> > TersusMessageHeader;

typedef boost::shared_ptr< ::mrs_msgs::TersusMessageHeader > TersusMessageHeaderPtr;
typedef boost::shared_ptr< ::mrs_msgs::TersusMessageHeader const> TersusMessageHeaderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator1> & lhs, const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator2> & rhs)
{
  return lhs.message_name == rhs.message_name &&
    lhs.port_address == rhs.port_address &&
    lhs.sequence == rhs.sequence &&
    lhs.idle_time == rhs.idle_time &&
    lhs.time_status == rhs.time_status &&
    lhs.gps_week == rhs.gps_week &&
    lhs.gps_week_seconds == rhs.gps_week_seconds &&
    lhs.receiver_status == rhs.receiver_status &&
    lhs.software_version == rhs.software_version;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator1> & lhs, const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "551bdd4abfba94b9393d89735daa6fe7";
  }

  static const char* value(const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x551bdd4abfba94b9ULL;
  static const uint64_t static_value2 = 0x393d89735daa6fe7ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/TersusMessageHeader";
  }

  static const char* value(const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This is modified version from Novatel\n"
"# For original Novatel see: http://docs.ros.org/jade/api/novatel_msgs/html/msg/CommonHeader.html\n"
"# For Tersus see: https://www.tersus-gnss.com/assets/upload/file/20180608173259349.pdf\n"
"# See section 1.5 in the Tersus manual.\n"
"# --------------------------------------------------------------------------------------\n"
"\n"
"# On the wire, this header is preceeded by three sync bytes,\n"
"# which are 0xAA 0x44 0x12, and a uint8 which is the header length.\n"
"\n"
"# Measurement source, format, response bit.\n"
"string message_name\n"
"\n"
"string port_address\n"
"\n"
"uint16 sequence\n"
"\n"
"float32 idle_time\n"
"\n"
"# Table 1 in the Tersus manual.\n"
"string time_status\n"
"\n"
"uint16 gps_week\n"
"float32 gps_week_seconds\n"
"\n"
"uint32 receiver_status\n"
"uint16 software_version\n"
;
  }

  static const char* value(const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message_name);
      stream.next(m.port_address);
      stream.next(m.sequence);
      stream.next(m.idle_time);
      stream.next(m.time_status);
      stream.next(m.gps_week);
      stream.next(m.gps_week_seconds);
      stream.next(m.receiver_status);
      stream.next(m.software_version);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TersusMessageHeader_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::TersusMessageHeader_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::TersusMessageHeader_<ContainerAllocator>& v)
  {
    s << indent << "message_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message_name);
    s << indent << "port_address: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.port_address);
    s << indent << "sequence: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.sequence);
    s << indent << "idle_time: ";
    Printer<float>::stream(s, indent + "  ", v.idle_time);
    s << indent << "time_status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.time_status);
    s << indent << "gps_week: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.gps_week);
    s << indent << "gps_week_seconds: ";
    Printer<float>::stream(s, indent + "  ", v.gps_week_seconds);
    s << indent << "receiver_status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.receiver_status);
    s << indent << "software_version: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.software_version);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_TERSUSMESSAGEHEADER_H
