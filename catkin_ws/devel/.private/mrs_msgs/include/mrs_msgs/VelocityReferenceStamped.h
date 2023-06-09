// Generated by gencpp from file mrs_msgs/VelocityReferenceStamped.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_VELOCITYREFERENCESTAMPED_H
#define MRS_MSGS_MESSAGE_VELOCITYREFERENCESTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mrs_msgs/VelocityReference.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct VelocityReferenceStamped_
{
  typedef VelocityReferenceStamped_<ContainerAllocator> Type;

  VelocityReferenceStamped_()
    : header()
    , reference()  {
    }
  VelocityReferenceStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , reference(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::mrs_msgs::VelocityReference_<ContainerAllocator>  _reference_type;
  _reference_type reference;





  typedef boost::shared_ptr< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> const> ConstPtr;

}; // struct VelocityReferenceStamped_

typedef ::mrs_msgs::VelocityReferenceStamped_<std::allocator<void> > VelocityReferenceStamped;

typedef boost::shared_ptr< ::mrs_msgs::VelocityReferenceStamped > VelocityReferenceStampedPtr;
typedef boost::shared_ptr< ::mrs_msgs::VelocityReferenceStamped const> VelocityReferenceStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.reference == rhs.reference;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9dc32c82b2b9ffd6f16c8bf17c42baad";
  }

  static const char* value(const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9dc32c82b2b9ffd6ULL;
  static const uint64_t static_value2 = 0xf16c8bf17c42baadULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/VelocityReferenceStamped";
  }

  static const char* value(const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# contains the frame_id = your reference frame of choice\n"
"std_msgs/Header header\n"
"\n"
"mrs_msgs/VelocityReference reference\n"
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
"MSG: mrs_msgs/VelocityReference\n"
"# desired velocity [m/s]\n"
"geometry_msgs/Vector3 velocity\n"
"\n"
"# altitude\n"
"float64 altitude\n"
"\n"
"# desired heading and its rate, optional\n"
"# heading is \"the azimuth of the body-x axis of the drone, a.k.a, the aircraft's front\"\n"
"float64 heading\n"
"float64 heading_rate\n"
"\n"
"# overrides vertical velocity\n"
"bool use_altitude\n"
"\n"
"bool use_heading\n"
"\n"
"# overrides heading\n"
"bool use_heading_rate\n"
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

  static const char* value(const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.reference);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VelocityReferenceStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::VelocityReferenceStamped_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "reference: ";
    s << std::endl;
    Printer< ::mrs_msgs::VelocityReference_<ContainerAllocator> >::stream(s, indent + "  ", v.reference);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_VELOCITYREFERENCESTAMPED_H
