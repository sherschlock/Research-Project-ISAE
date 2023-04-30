// Generated by gencpp from file mrs_msgs/FuturePoint.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_FUTUREPOINT_H
#define MRS_MSGS_MESSAGE_FUTUREPOINT_H


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
struct FuturePoint_
{
  typedef FuturePoint_<ContainerAllocator> Type;

  FuturePoint_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  FuturePoint_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::mrs_msgs::FuturePoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::FuturePoint_<ContainerAllocator> const> ConstPtr;

}; // struct FuturePoint_

typedef ::mrs_msgs::FuturePoint_<std::allocator<void> > FuturePoint;

typedef boost::shared_ptr< ::mrs_msgs::FuturePoint > FuturePointPtr;
typedef boost::shared_ptr< ::mrs_msgs::FuturePoint const> FuturePointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::FuturePoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::FuturePoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::FuturePoint_<ContainerAllocator1> & lhs, const ::mrs_msgs::FuturePoint_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::FuturePoint_<ContainerAllocator1> & lhs, const ::mrs_msgs::FuturePoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::FuturePoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::FuturePoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::FuturePoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc153912f1453b708d221682bc23d9ac";
  }

  static const char* value(const ::mrs_msgs::FuturePoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc153912f1453b70ULL;
  static const uint64_t static_value2 = 0x8d221682bc23d9acULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/FuturePoint";
  }

  static const char* value(const ::mrs_msgs::FuturePoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::mrs_msgs::FuturePoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FuturePoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::FuturePoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::FuturePoint_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_FUTUREPOINT_H
