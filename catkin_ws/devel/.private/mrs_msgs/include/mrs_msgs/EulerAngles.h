// Generated by gencpp from file mrs_msgs/EulerAngles.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_EULERANGLES_H
#define MRS_MSGS_MESSAGE_EULERANGLES_H


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
struct EulerAngles_
{
  typedef EulerAngles_<ContainerAllocator> Type;

  EulerAngles_()
    : yaw(0.0)
    , pitch(0.0)
    , roll(0.0)  {
    }
  EulerAngles_(const ContainerAllocator& _alloc)
    : yaw(0.0)
    , pitch(0.0)
    , roll(0.0)  {
  (void)_alloc;
    }



   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _roll_type;
  _roll_type roll;





  typedef boost::shared_ptr< ::mrs_msgs::EulerAngles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::EulerAngles_<ContainerAllocator> const> ConstPtr;

}; // struct EulerAngles_

typedef ::mrs_msgs::EulerAngles_<std::allocator<void> > EulerAngles;

typedef boost::shared_ptr< ::mrs_msgs::EulerAngles > EulerAnglesPtr;
typedef boost::shared_ptr< ::mrs_msgs::EulerAngles const> EulerAnglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::EulerAngles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::EulerAngles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::EulerAngles_<ContainerAllocator1> & lhs, const ::mrs_msgs::EulerAngles_<ContainerAllocator2> & rhs)
{
  return lhs.yaw == rhs.yaw &&
    lhs.pitch == rhs.pitch &&
    lhs.roll == rhs.roll;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::EulerAngles_<ContainerAllocator1> & lhs, const ::mrs_msgs::EulerAngles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::EulerAngles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::EulerAngles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::EulerAngles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6483fb20acb1cba981c486a35a1bdbd";
  }

  static const char* value(const ::mrs_msgs::EulerAngles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6483fb20acb1cbaULL;
  static const uint64_t static_value2 = 0x981c486a35a1bdbdULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/EulerAngles";
  }

  static const char* value(const ::mrs_msgs::EulerAngles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 yaw\n"
"float64 pitch\n"
"float64 roll\n"
;
  }

  static const char* value(const ::mrs_msgs::EulerAngles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.yaw);
      stream.next(m.pitch);
      stream.next(m.roll);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EulerAngles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::EulerAngles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::EulerAngles_<ContainerAllocator>& v)
  {
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_EULERANGLES_H