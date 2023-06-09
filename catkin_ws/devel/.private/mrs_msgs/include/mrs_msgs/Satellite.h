// Generated by gencpp from file mrs_msgs/Satellite.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_SATELLITE_H
#define MRS_MSGS_MESSAGE_SATELLITE_H


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
struct Satellite_
{
  typedef Satellite_<ContainerAllocator> Type;

  Satellite_()
    : prn(0)
    , elevation(0)
    , azimuth(0)
    , snr(0)  {
    }
  Satellite_(const ContainerAllocator& _alloc)
    : prn(0)
    , elevation(0)
    , azimuth(0)
    , snr(0)  {
  (void)_alloc;
    }



   typedef uint8_t _prn_type;
  _prn_type prn;

   typedef uint8_t _elevation_type;
  _elevation_type elevation;

   typedef uint16_t _azimuth_type;
  _azimuth_type azimuth;

   typedef int8_t _snr_type;
  _snr_type snr;





  typedef boost::shared_ptr< ::mrs_msgs::Satellite_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Satellite_<ContainerAllocator> const> ConstPtr;

}; // struct Satellite_

typedef ::mrs_msgs::Satellite_<std::allocator<void> > Satellite;

typedef boost::shared_ptr< ::mrs_msgs::Satellite > SatellitePtr;
typedef boost::shared_ptr< ::mrs_msgs::Satellite const> SatelliteConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Satellite_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Satellite_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Satellite_<ContainerAllocator1> & lhs, const ::mrs_msgs::Satellite_<ContainerAllocator2> & rhs)
{
  return lhs.prn == rhs.prn &&
    lhs.elevation == rhs.elevation &&
    lhs.azimuth == rhs.azimuth &&
    lhs.snr == rhs.snr;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Satellite_<ContainerAllocator1> & lhs, const ::mrs_msgs::Satellite_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Satellite_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Satellite_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Satellite_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Satellite_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Satellite_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Satellite_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Satellite_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d862f2ce05a26a83264a8add99c7b668";
  }

  static const char* value(const ::mrs_msgs::Satellite_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd862f2ce05a26a83ULL;
  static const uint64_t static_value2 = 0x264a8add99c7b668ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Satellite_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Satellite";
  }

  static const char* value(const ::mrs_msgs::Satellite_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Satellite_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Satellite data structure used in GPGSV messages\n"
"\n"
"# PRN number of the satellite\n"
"# GPS = 1..32\n"
"# SBAS = 33..64\n"
"# GLO = 65..96\n"
"uint8 prn\n"
"\n"
"# Elevation, degrees. Maximum 90\n"
"uint8 elevation\n"
"\n"
"# Azimuth, True North degrees. [0, 359]\n"
"uint16 azimuth\n"
"\n"
"# Signal to noise ratio, 0-99 dB. -1 when null in NMEA sentence (not tracking)\n"
"int8 snr\n"
;
  }

  static const char* value(const ::mrs_msgs::Satellite_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Satellite_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prn);
      stream.next(m.elevation);
      stream.next(m.azimuth);
      stream.next(m.snr);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Satellite_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Satellite_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Satellite_<ContainerAllocator>& v)
  {
    s << indent << "prn: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.prn);
    s << indent << "elevation: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.elevation);
    s << indent << "azimuth: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.azimuth);
    s << indent << "snr: ";
    Printer<int8_t>::stream(s, indent + "  ", v.snr);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_SATELLITE_H
