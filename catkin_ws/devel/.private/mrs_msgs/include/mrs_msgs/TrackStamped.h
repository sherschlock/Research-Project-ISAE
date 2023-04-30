// Generated by gencpp from file mrs_msgs/TrackStamped.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_TRACKSTAMPED_H
#define MRS_MSGS_MESSAGE_TRACKSTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mrs_msgs/Track.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct TrackStamped_
{
  typedef TrackStamped_<ContainerAllocator> Type;

  TrackStamped_()
    : header()
    , track()  {
    }
  TrackStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , track(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::mrs_msgs::Track_<ContainerAllocator>  _track_type;
  _track_type track;





  typedef boost::shared_ptr< ::mrs_msgs::TrackStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::TrackStamped_<ContainerAllocator> const> ConstPtr;

}; // struct TrackStamped_

typedef ::mrs_msgs::TrackStamped_<std::allocator<void> > TrackStamped;

typedef boost::shared_ptr< ::mrs_msgs::TrackStamped > TrackStampedPtr;
typedef boost::shared_ptr< ::mrs_msgs::TrackStamped const> TrackStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::TrackStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::TrackStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::TrackStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::TrackStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.track == rhs.track;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::TrackStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::TrackStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::TrackStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::TrackStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::TrackStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6db0655dd83e0f825aa628f8aa9e353";
  }

  static const char* value(const ::mrs_msgs::TrackStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6db0655dd83e0f8ULL;
  static const uint64_t static_value2 = 0x25aa628f8aa9e353ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/TrackStamped";
  }

  static const char* value(const ::mrs_msgs::TrackStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"mrs_msgs/Track  track\n"
"\n"
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
"MSG: mrs_msgs/Track\n"
"# This message represents an object being tracked in a three-dimensional\n"
"# free space by a multi-target tracking algorithm.\n"
"# Each tracked objects has a unique and persistent track ID,\n"
"# a position, orientation and velocity estimate with uncertainties represented\n"
"# by covariance matrices.\n"
"\n"
"# An ID of this track that is unique and persistent for the tracked object.\n"
"uint64 id\n"
"\n"
"# The rest of this message contains the state estimate of the track,\n"
"# including its position, orientation, and velocity and their respective\n"
"# uncertainty covariance matrices. These are all expressed in a coordinate\n"
"# frame, that is given in the header of the meta-message, containing this message.\n"
"\n"
"# Three-dimensional position of the track.\n"
"geometry_msgs/Point position\n"
"\n"
"# Row-major representation of the 3x3 matrix of position covariance.\n"
"# In order, the parameters are:\n"
"# (x, y, z)\n"
"float64[9] position_covariance\n"
"\n"
"# Three-dimensional orientation of the track.\n"
"geometry_msgs/Quaternion orientation\n"
"\n"
"# Row-major representation of the 3x3 matrix of orientation covariance.\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[9] orientation_covariance\n"
"\n"
"# Velocity of the track in free space.\n"
"geometry_msgs/Vector3 velocity\n"
"\n"
"# Row-major representation of the 3x3 matrix of velocity covariance.\n"
"# In order, the parameters are:\n"
"# (dx/dt, dy/dt, dz/dt)\n"
"float64[9] velocity_covariance\n"
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
;
  }

  static const char* value(const ::mrs_msgs::TrackStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.track);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrackStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::TrackStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::TrackStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "track: ";
    s << std::endl;
    Printer< ::mrs_msgs::Track_<ContainerAllocator> >::stream(s, indent + "  ", v.track);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_TRACKSTAMPED_H