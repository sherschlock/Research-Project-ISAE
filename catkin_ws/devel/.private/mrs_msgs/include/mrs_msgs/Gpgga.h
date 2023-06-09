// Generated by gencpp from file mrs_msgs/Gpgga.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GPGGA_H
#define MRS_MSGS_MESSAGE_GPGGA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mrs_msgs/GpsStatus.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct Gpgga_
{
  typedef Gpgga_<ContainerAllocator> Type;

  Gpgga_()
    : header()
    , message_id()
    , utc_seconds(0.0)
    , latitude(0.0)
    , longitude(0.0)
    , latitude_dir()
    , longitude_dir()
    , gps_quality()
    , num_sats(0)
    , hdop(0.0)
    , altitude(0.0)
    , altitude_units()
    , undulation(0.0)
    , undulation_units()
    , diff_age(0)
    , station_id()  {
    }
  Gpgga_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , message_id(_alloc)
    , utc_seconds(0.0)
    , latitude(0.0)
    , longitude(0.0)
    , latitude_dir(_alloc)
    , longitude_dir(_alloc)
    , gps_quality(_alloc)
    , num_sats(0)
    , hdop(0.0)
    , altitude(0.0)
    , altitude_units(_alloc)
    , undulation(0.0)
    , undulation_units(_alloc)
    , diff_age(0)
    , station_id(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_id_type;
  _message_id_type message_id;

   typedef double _utc_seconds_type;
  _utc_seconds_type utc_seconds;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _latitude_dir_type;
  _latitude_dir_type latitude_dir;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _longitude_dir_type;
  _longitude_dir_type longitude_dir;

   typedef  ::mrs_msgs::GpsStatus_<ContainerAllocator>  _gps_quality_type;
  _gps_quality_type gps_quality;

   typedef uint32_t _num_sats_type;
  _num_sats_type num_sats;

   typedef float _hdop_type;
  _hdop_type hdop;

   typedef float _altitude_type;
  _altitude_type altitude;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _altitude_units_type;
  _altitude_units_type altitude_units;

   typedef float _undulation_type;
  _undulation_type undulation;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _undulation_units_type;
  _undulation_units_type undulation_units;

   typedef uint32_t _diff_age_type;
  _diff_age_type diff_age;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _station_id_type;
  _station_id_type station_id;





  typedef boost::shared_ptr< ::mrs_msgs::Gpgga_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Gpgga_<ContainerAllocator> const> ConstPtr;

}; // struct Gpgga_

typedef ::mrs_msgs::Gpgga_<std::allocator<void> > Gpgga;

typedef boost::shared_ptr< ::mrs_msgs::Gpgga > GpggaPtr;
typedef boost::shared_ptr< ::mrs_msgs::Gpgga const> GpggaConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Gpgga_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Gpgga_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Gpgga_<ContainerAllocator1> & lhs, const ::mrs_msgs::Gpgga_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.message_id == rhs.message_id &&
    lhs.utc_seconds == rhs.utc_seconds &&
    lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude &&
    lhs.latitude_dir == rhs.latitude_dir &&
    lhs.longitude_dir == rhs.longitude_dir &&
    lhs.gps_quality == rhs.gps_quality &&
    lhs.num_sats == rhs.num_sats &&
    lhs.hdop == rhs.hdop &&
    lhs.altitude == rhs.altitude &&
    lhs.altitude_units == rhs.altitude_units &&
    lhs.undulation == rhs.undulation &&
    lhs.undulation_units == rhs.undulation_units &&
    lhs.diff_age == rhs.diff_age &&
    lhs.station_id == rhs.station_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Gpgga_<ContainerAllocator1> & lhs, const ::mrs_msgs::Gpgga_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Gpgga_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Gpgga_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Gpgga_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Gpgga_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Gpgga_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Gpgga_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Gpgga_<ContainerAllocator> >
{
  static const char* value()
  {
    return "60c1dbabb1ff7bc913853a9cc2abcc73";
  }

  static const char* value(const ::mrs_msgs::Gpgga_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x60c1dbabb1ff7bc9ULL;
  static const uint64_t static_value2 = 0x13853a9cc2abcc73ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Gpgga_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Gpgga";
  }

  static const char* value(const ::mrs_msgs::Gpgga_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Gpgga_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message from GPGGA NMEA String\n"
"Header header\n"
"\n"
"string message_id\n"
"\n"
"# UTC seconds from midnight\n"
"float64 utc_seconds\n"
"\n"
"float64 latitude\n"
"float64 longitude\n"
"\n"
"string latitude_dir\n"
"string longitude_dir\n"
"\n"
"GpsStatus gps_quality\n"
"\n"
"uint32 num_sats\n"
"float32 hdop \n"
"float32 altitude\n"
"string altitude_units\n"
"\n"
"float32 undulation\n"
"string undulation_units\n"
"uint32 diff_age\n"
"string station_id\n"
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
"MSG: mrs_msgs/GpsStatus\n"
"uint32 quality\n"
"uint32 GPS_QUALITY_NO_FIX=0\n"
"uint32 GPS_QUALITY_SIGLE_POINT=1\n"
"uint32 GPS_QUALITY_PSEUDORANGE_DIFFERENTIAL=2\n"
"uint32 GPS_QUALITY_RTK_FIX=4\n"
"uint32 GPS_QUALITY_RTK_FLOAT=5\n"
;
  }

  static const char* value(const ::mrs_msgs::Gpgga_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Gpgga_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.message_id);
      stream.next(m.utc_seconds);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.latitude_dir);
      stream.next(m.longitude_dir);
      stream.next(m.gps_quality);
      stream.next(m.num_sats);
      stream.next(m.hdop);
      stream.next(m.altitude);
      stream.next(m.altitude_units);
      stream.next(m.undulation);
      stream.next(m.undulation_units);
      stream.next(m.diff_age);
      stream.next(m.station_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gpgga_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Gpgga_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Gpgga_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "message_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message_id);
    s << indent << "utc_seconds: ";
    Printer<double>::stream(s, indent + "  ", v.utc_seconds);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "latitude_dir: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.latitude_dir);
    s << indent << "longitude_dir: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.longitude_dir);
    s << indent << "gps_quality: ";
    s << std::endl;
    Printer< ::mrs_msgs::GpsStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.gps_quality);
    s << indent << "num_sats: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_sats);
    s << indent << "hdop: ";
    Printer<float>::stream(s, indent + "  ", v.hdop);
    s << indent << "altitude: ";
    Printer<float>::stream(s, indent + "  ", v.altitude);
    s << indent << "altitude_units: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.altitude_units);
    s << indent << "undulation: ";
    Printer<float>::stream(s, indent + "  ", v.undulation);
    s << indent << "undulation_units: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.undulation_units);
    s << indent << "diff_age: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.diff_age);
    s << indent << "station_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.station_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GPGGA_H
