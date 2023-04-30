// Generated by gencpp from file mrs_msgs/OffsetOdomRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_OFFSETODOMREQUEST_H
#define MRS_MSGS_MESSAGE_OFFSETODOMREQUEST_H


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
struct OffsetOdomRequest_
{
  typedef OffsetOdomRequest_<ContainerAllocator> Type;

  OffsetOdomRequest_()
    : x(0.0)
    , y(0.0)
    , dx(0.0)
    , dy(0.0)  {
    }
  OffsetOdomRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , dx(0.0)
    , dy(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _dx_type;
  _dx_type dx;

   typedef float _dy_type;
  _dy_type dy;





  typedef boost::shared_ptr< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OffsetOdomRequest_

typedef ::mrs_msgs::OffsetOdomRequest_<std::allocator<void> > OffsetOdomRequest;

typedef boost::shared_ptr< ::mrs_msgs::OffsetOdomRequest > OffsetOdomRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::OffsetOdomRequest const> OffsetOdomRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.dx == rhs.dx &&
    lhs.dy == rhs.dy;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "620462ad0f7231a64863d8010ac91273";
  }

  static const char* value(const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x620462ad0f7231a6ULL;
  static const uint64_t static_value2 = 0x4863d8010ac91273ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/OffsetOdomRequest";
  }

  static const char* value(const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 dx\n"
"float32 dy\n"
;
  }

  static const char* value(const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.dx);
      stream.next(m.dy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OffsetOdomRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::OffsetOdomRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "dx: ";
    Printer<float>::stream(s, indent + "  ", v.dx);
    s << indent << "dy: ";
    Printer<float>::stream(s, indent + "  ", v.dy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_OFFSETODOMREQUEST_H
