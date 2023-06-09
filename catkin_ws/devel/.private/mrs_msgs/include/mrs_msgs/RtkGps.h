// Generated by gencpp from file mrs_msgs/RtkGps.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_RTKGPS_H
#define MRS_MSGS_MESSAGE_RTKGPS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mrs_msgs/GpsData.h>
#include <geometry_msgs/PoseWithCovariance.h>
#include <geometry_msgs/TwistWithCovariance.h>
#include <sensor_msgs/NavSatStatus.h>
#include <mrs_msgs/RtkFixType.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct RtkGps_
{
  typedef RtkGps_<ContainerAllocator> Type;

  RtkGps_()
    : header()
    , gps()
    , pose()
    , twist()
    , status()
    , fix_type()  {
    }
  RtkGps_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , gps(_alloc)
    , pose(_alloc)
    , twist(_alloc)
    , status(_alloc)
    , fix_type(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::mrs_msgs::GpsData_<ContainerAllocator>  _gps_type;
  _gps_type gps;

   typedef  ::geometry_msgs::PoseWithCovariance_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::TwistWithCovariance_<ContainerAllocator>  _twist_type;
  _twist_type twist;

   typedef  ::sensor_msgs::NavSatStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::mrs_msgs::RtkFixType_<ContainerAllocator>  _fix_type_type;
  _fix_type_type fix_type;





  typedef boost::shared_ptr< ::mrs_msgs::RtkGps_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::RtkGps_<ContainerAllocator> const> ConstPtr;

}; // struct RtkGps_

typedef ::mrs_msgs::RtkGps_<std::allocator<void> > RtkGps;

typedef boost::shared_ptr< ::mrs_msgs::RtkGps > RtkGpsPtr;
typedef boost::shared_ptr< ::mrs_msgs::RtkGps const> RtkGpsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::RtkGps_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::RtkGps_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::RtkGps_<ContainerAllocator1> & lhs, const ::mrs_msgs::RtkGps_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.gps == rhs.gps &&
    lhs.pose == rhs.pose &&
    lhs.twist == rhs.twist &&
    lhs.status == rhs.status &&
    lhs.fix_type == rhs.fix_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::RtkGps_<ContainerAllocator1> & lhs, const ::mrs_msgs::RtkGps_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::RtkGps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::RtkGps_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::RtkGps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::RtkGps_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::RtkGps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::RtkGps_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::RtkGps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a5dee1255adc6ec2f5748e9b9ee61cff";
  }

  static const char* value(const ::mrs_msgs::RtkGps_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa5dee1255adc6ec2ULL;
  static const uint64_t static_value2 = 0xf5748e9b9ee61cffULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::RtkGps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/RtkGps";
  }

  static const char* value(const ::mrs_msgs::RtkGps_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::RtkGps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"mrs_msgs/GpsData gps\n"
"geometry_msgs/PoseWithCovariance pose\n"
"geometry_msgs/TwistWithCovariance twist\n"
"sensor_msgs/NavSatStatus status\n"
"mrs_msgs/RtkFixType fix_type\n"
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
"MSG: mrs_msgs/GpsData\n"
"float64 latitude\n"
"float64 longitude\n"
"float64 altitude\n"
"float64[9] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/TwistWithCovariance\n"
"# This expresses velocity in free space with uncertainty.\n"
"\n"
"Twist twist\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: sensor_msgs/NavSatStatus\n"
"# Navigation Satellite fix status for any Global Navigation Satellite System\n"
"\n"
"# Whether to output an augmented fix is determined by both the fix\n"
"# type and the last time differential corrections were received.  A\n"
"# fix is valid when status >= STATUS_FIX.\n"
"\n"
"int8 STATUS_NO_FIX =  -1        # unable to fix position\n"
"int8 STATUS_FIX =      0        # unaugmented fix\n"
"int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation\n"
"int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation\n"
"\n"
"int8 status\n"
"\n"
"# Bits defining which Global Navigation Satellite System signals were\n"
"# used by the receiver.\n"
"\n"
"uint16 SERVICE_GPS =     1\n"
"uint16 SERVICE_GLONASS = 2\n"
"uint16 SERVICE_COMPASS = 4      # includes BeiDou.\n"
"uint16 SERVICE_GALILEO = 8\n"
"\n"
"uint16 service\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/RtkFixType\n"
"uint8 RTK_FIX=5\n"
"uint8 RTK_FLOAT=4\n"
"uint8 UNKNOWN=3\n"
"uint8 DGPS=2\n"
"uint8 SPS=1\n"
"uint8 NO_FIX=0\n"
"uint8 fix_type\n"
;
  }

  static const char* value(const ::mrs_msgs::RtkGps_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::RtkGps_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.gps);
      stream.next(m.pose);
      stream.next(m.twist);
      stream.next(m.status);
      stream.next(m.fix_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RtkGps_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::RtkGps_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::RtkGps_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "gps: ";
    s << std::endl;
    Printer< ::mrs_msgs::GpsData_<ContainerAllocator> >::stream(s, indent + "  ", v.gps);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "twist: ";
    s << std::endl;
    Printer< ::geometry_msgs::TwistWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.twist);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::sensor_msgs::NavSatStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "fix_type: ";
    s << std::endl;
    Printer< ::mrs_msgs::RtkFixType_<ContainerAllocator> >::stream(s, indent + "  ", v.fix_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_RTKGPS_H
