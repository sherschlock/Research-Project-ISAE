// Generated by gencpp from file mrs_msgs/Float64.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_FLOAT64_H
#define MRS_MSGS_MESSAGE_FLOAT64_H


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
struct Float64_
{
  typedef Float64_<ContainerAllocator> Type;

  Float64_()
    : value(0.0)  {
    }
  Float64_(const ContainerAllocator& _alloc)
    : value(0.0)  {
  (void)_alloc;
    }



   typedef double _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::mrs_msgs::Float64_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::Float64_<ContainerAllocator> const> ConstPtr;

}; // struct Float64_

typedef ::mrs_msgs::Float64_<std::allocator<void> > Float64;

typedef boost::shared_ptr< ::mrs_msgs::Float64 > Float64Ptr;
typedef boost::shared_ptr< ::mrs_msgs::Float64 const> Float64ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::Float64_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::Float64_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::Float64_<ContainerAllocator1> & lhs, const ::mrs_msgs::Float64_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::Float64_<ContainerAllocator1> & lhs, const ::mrs_msgs::Float64_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Float64_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::Float64_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Float64_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::Float64_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Float64_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::Float64_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::Float64_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1b1594d2b74931ef8fe7be8e2d594455";
  }

  static const char* value(const ::mrs_msgs::Float64_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1b1594d2b74931efULL;
  static const uint64_t static_value2 = 0x8fe7be8e2d594455ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::Float64_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/Float64";
  }

  static const char* value(const ::mrs_msgs::Float64_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::Float64_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 value\n"
;
  }

  static const char* value(const ::mrs_msgs::Float64_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::Float64_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Float64_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::Float64_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::Float64_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<double>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_FLOAT64_H