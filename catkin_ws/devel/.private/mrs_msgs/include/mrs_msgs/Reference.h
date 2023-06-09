// Generated by gencpp from file mrs_msgs/Reference.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_REFERENCE_H
#define MRS_MSGS_MESSAGE_REFERENCE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct Reference_
{
  typedef Reference_<ContainerAllocator> Type;

  Reference_()
    : position()
    , heading(0.0)  {
    }
  Reference_(const ContainerAllocator& _alloc)
    : position(_alloc)
    , heading(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _position_type;
  _position_type position;

   typedef double _heading_type;
  _heading_type heading;





  typedef boost::shared_ptr< ::mrs_msgs::Reference_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Reference_<ContainerAllocator> const> ConstPtr;

}; // struct Reference_

typedef ::mrs_msgs::Reference_<std::allocator<void> > Reference;

typedef boost::shared_ptr< ::mrs_msgs::Reference > ReferencePtr;
typedef boost::shared_ptr< ::mrs_msgs::Reference const> ReferenceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Reference_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Reference_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Reference_<ContainerAllocator1> & lhs, const ::mrs_msgs::Reference_<ContainerAllocator2> & rhs)
{
  return lhs.position == rhs.position &&
    lhs.heading == rhs.heading;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Reference_<ContainerAllocator1> & lhs, const ::mrs_msgs::Reference_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Reference_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Reference_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Reference_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Reference_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Reference_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Reference_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Reference_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b7529b96025c54855f296c4413ac7578";
  }

  static const char* value(const ::mrs_msgs::Reference_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb7529b96025c5485ULL;
  static const uint64_t static_value2 = 0x5f296c4413ac7578ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Reference_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Reference";
  }

  static const char* value(const ::mrs_msgs::Reference_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Reference_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message defines a control reference with a Position+Heading.\n"
"\n"
"geometry_msgs/Point position\n"
"\n"
"# Heading is atan2() of XY-world projection of the UAV's body X-axis.\n"
"float64 heading\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mrs_msgs::Reference_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Reference_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.heading);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Reference_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Reference_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Reference_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_REFERENCE_H
