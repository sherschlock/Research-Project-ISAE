// Generated by gencpp from file mrs_msgs/ReferenceSrvRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_REFERENCESRVREQUEST_H
#define MRS_MSGS_MESSAGE_REFERENCESRVREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mrs_msgs/Reference.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct ReferenceSrvRequest_
{
  typedef ReferenceSrvRequest_<ContainerAllocator> Type;

  ReferenceSrvRequest_()
    : reference()  {
    }
  ReferenceSrvRequest_(const ContainerAllocator& _alloc)
    : reference(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mrs_msgs::Reference_<ContainerAllocator>  _reference_type;
  _reference_type reference;





  typedef boost::shared_ptr< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReferenceSrvRequest_

typedef ::mrs_msgs::ReferenceSrvRequest_<std::allocator<void> > ReferenceSrvRequest;

typedef boost::shared_ptr< ::mrs_msgs::ReferenceSrvRequest > ReferenceSrvRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::ReferenceSrvRequest const> ReferenceSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.reference == rhs.reference;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ea1afe6c64d205a530fee152f63401e2";
  }

  static const char* value(const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xea1afe6c64d205a5ULL;
  static const uint64_t static_value2 = 0x30fee152f63401e2ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ReferenceSrvRequest";
  }

  static const char* value(const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Reference reference\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/Reference\n"
"# This message defines a control reference with a Position+Heading.\n"
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

  static const char* value(const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.reference);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReferenceSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ReferenceSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "reference: ";
    s << std::endl;
    Printer< ::mrs_msgs::Reference_<ContainerAllocator> >::stream(s, indent + "  ", v.reference);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_REFERENCESRVREQUEST_H
