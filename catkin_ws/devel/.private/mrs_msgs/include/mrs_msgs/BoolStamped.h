// Generated by gencpp from file mrs_msgs/BoolStamped.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_BOOLSTAMPED_H
#define MRS_MSGS_MESSAGE_BOOLSTAMPED_H


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
struct BoolStamped_
{
  typedef BoolStamped_<ContainerAllocator> Type;

  BoolStamped_()
    : stamp()
    , data(false)  {
    }
  BoolStamped_(const ContainerAllocator& _alloc)
    : stamp()
    , data(false)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint8_t _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::mrs_msgs::BoolStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::BoolStamped_<ContainerAllocator> const> ConstPtr;

}; // struct BoolStamped_

typedef ::mrs_msgs::BoolStamped_<std::allocator<void> > BoolStamped;

typedef boost::shared_ptr< ::mrs_msgs::BoolStamped > BoolStampedPtr;
typedef boost::shared_ptr< ::mrs_msgs::BoolStamped const> BoolStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::BoolStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::BoolStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::BoolStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::BoolStamped_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::BoolStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::BoolStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BoolStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BoolStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BoolStamped_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "512a323cb011736b47fa65bd15fa0439";
  }

  static const char* value(const ::mrs_msgs::BoolStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x512a323cb011736bULL;
  static const uint64_t static_value2 = 0x47fa65bd15fa0439ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/BoolStamped";
  }

  static const char* value(const ::mrs_msgs::BoolStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"bool data\n"
;
  }

  static const char* value(const ::mrs_msgs::BoolStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoolStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::BoolStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::BoolStamped_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "data: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_BOOLSTAMPED_H
