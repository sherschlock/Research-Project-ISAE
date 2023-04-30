// Generated by gencpp from file mrs_msgs/Sphere.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_SPHERE_H
#define MRS_MSGS_MESSAGE_SPHERE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct Sphere_
{
  typedef Sphere_<ContainerAllocator> Type;

  Sphere_()
    : header()
    , position()
    , radius(0.0)  {
    }
  Sphere_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , position(_alloc)
    , radius(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef double _radius_type;
  _radius_type radius;





  typedef boost::shared_ptr< ::mrs_msgs::Sphere_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Sphere_<ContainerAllocator> const> ConstPtr;

}; // struct Sphere_

typedef ::mrs_msgs::Sphere_<std::allocator<void> > Sphere;

typedef boost::shared_ptr< ::mrs_msgs::Sphere > SpherePtr;
typedef boost::shared_ptr< ::mrs_msgs::Sphere const> SphereConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Sphere_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Sphere_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Sphere_<ContainerAllocator1> & lhs, const ::mrs_msgs::Sphere_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.position == rhs.position &&
    lhs.radius == rhs.radius;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Sphere_<ContainerAllocator1> & lhs, const ::mrs_msgs::Sphere_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Sphere_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Sphere_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Sphere_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Sphere_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Sphere_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Sphere_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Sphere_<ContainerAllocator> >
{
  static const char* value()
  {
    return "438755457f26e7227b578954cd7c0b0b";
  }

  static const char* value(const ::mrs_msgs::Sphere_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x438755457f26e722ULL;
  static const uint64_t static_value2 = 0x7b578954cd7c0b0bULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Sphere_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Sphere";
  }

  static const char* value(const ::mrs_msgs::Sphere_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Sphere_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"# position of the sphere's center in the coordinate frame, specified in the header\n"
"geometry_msgs/Point position\n"
"\n"
"# radius of the sphere\n"
"float64 radius\n"
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
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mrs_msgs::Sphere_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Sphere_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.position);
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Sphere_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Sphere_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Sphere_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "radius: ";
    Printer<double>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_SPHERE_H