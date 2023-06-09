// Generated by gencpp from file mrs_msgs/BatteryDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_BATTERYDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_BATTERYDIAGNOSTICS_H


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
struct BatteryDiagnostics_
{
  typedef BatteryDiagnostics_<ContainerAllocator> Type;

  BatteryDiagnostics_()
    : voltage(0.0)
    , current(0.0)  {
    }
  BatteryDiagnostics_(const ContainerAllocator& _alloc)
    : voltage(0.0)
    , current(0.0)  {
  (void)_alloc;
    }



   typedef float _voltage_type;
  _voltage_type voltage;

   typedef float _current_type;
  _current_type current;





  typedef boost::shared_ptr< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct BatteryDiagnostics_

typedef ::mrs_msgs::BatteryDiagnostics_<std::allocator<void> > BatteryDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::BatteryDiagnostics > BatteryDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::BatteryDiagnostics const> BatteryDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.voltage == rhs.voltage &&
    lhs.current == rhs.current;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9e237a0971ec09fc952c0717bd077bf2";
  }

  static const char* value(const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9e237a0971ec09fcULL;
  static const uint64_t static_value2 = 0x952c0717bd077bf2ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/BatteryDiagnostics";
  }

  static const char* value(const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 voltage\n"
"float32 current\n"
;
  }

  static const char* value(const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.voltage);
      stream.next(m.current);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BatteryDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::BatteryDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "voltage: ";
    Printer<float>::stream(s, indent + "  ", v.voltage);
    s << indent << "current: ";
    Printer<float>::stream(s, indent + "  ", v.current);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_BATTERYDIAGNOSTICS_H
