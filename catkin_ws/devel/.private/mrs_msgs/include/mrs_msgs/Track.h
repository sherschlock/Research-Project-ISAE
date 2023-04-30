// Generated by gencpp from file mrs_msgs/Track.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_TRACK_H
#define MRS_MSGS_MESSAGE_TRACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Vector3.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct Track_
{
  typedef Track_<ContainerAllocator> Type;

  Track_()
    : id(0)
    , position()
    , position_covariance()
    , orientation()
    , orientation_covariance()
    , velocity()
    , velocity_covariance()  {
      position_covariance.assign(0.0);

      orientation_covariance.assign(0.0);

      velocity_covariance.assign(0.0);
  }
  Track_(const ContainerAllocator& _alloc)
    : id(0)
    , position(_alloc)
    , position_covariance()
    , orientation(_alloc)
    , orientation_covariance()
    , velocity(_alloc)
    , velocity_covariance()  {
  (void)_alloc;
      position_covariance.assign(0.0);

      orientation_covariance.assign(0.0);

      velocity_covariance.assign(0.0);
  }



   typedef uint64_t _id_type;
  _id_type id;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef boost::array<double, 9>  _position_covariance_type;
  _position_covariance_type position_covariance;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;

   typedef boost::array<double, 9>  _orientation_covariance_type;
  _orientation_covariance_type orientation_covariance;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef boost::array<double, 9>  _velocity_covariance_type;
  _velocity_covariance_type velocity_covariance;





  typedef boost::shared_ptr< ::mrs_msgs::Track_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Track_<ContainerAllocator> const> ConstPtr;

}; // struct Track_

typedef ::mrs_msgs::Track_<std::allocator<void> > Track;

typedef boost::shared_ptr< ::mrs_msgs::Track > TrackPtr;
typedef boost::shared_ptr< ::mrs_msgs::Track const> TrackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Track_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Track_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Track_<ContainerAllocator1> & lhs, const ::mrs_msgs::Track_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.position == rhs.position &&
    lhs.position_covariance == rhs.position_covariance &&
    lhs.orientation == rhs.orientation &&
    lhs.orientation_covariance == rhs.orientation_covariance &&
    lhs.velocity == rhs.velocity &&
    lhs.velocity_covariance == rhs.velocity_covariance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Track_<ContainerAllocator1> & lhs, const ::mrs_msgs::Track_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Track_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Track_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Track_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Track_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Track_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Track_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Track_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b27c85dc54166a137b9898639a69354";
  }

  static const char* value(const ::mrs_msgs::Track_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b27c85dc54166a1ULL;
  static const uint64_t static_value2 = 0x37b9898639a69354ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Track_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Track";
  }

  static const char* value(const ::mrs_msgs::Track_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Track_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message represents an object being tracked in a three-dimensional\n"
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

  static const char* value(const ::mrs_msgs::Track_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Track_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.position);
      stream.next(m.position_covariance);
      stream.next(m.orientation);
      stream.next(m.orientation_covariance);
      stream.next(m.velocity);
      stream.next(m.velocity_covariance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Track_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Track_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Track_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.id);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "position_covariance[]" << std::endl;
    for (size_t i = 0; i < v.position_covariance.size(); ++i)
    {
      s << indent << "  position_covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.position_covariance[i]);
    }
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
    s << indent << "orientation_covariance[]" << std::endl;
    for (size_t i = 0; i < v.orientation_covariance.size(); ++i)
    {
      s << indent << "  orientation_covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.orientation_covariance[i]);
    }
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "velocity_covariance[]" << std::endl;
    for (size_t i = 0; i < v.velocity_covariance.size(); ++i)
    {
      s << indent << "  velocity_covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.velocity_covariance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_TRACK_H
