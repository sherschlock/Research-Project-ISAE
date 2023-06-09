// Generated by gencpp from file mrs_msgs/DynamicsConstraints.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_DYNAMICSCONSTRAINTS_H
#define MRS_MSGS_MESSAGE_DYNAMICSCONSTRAINTS_H


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
struct DynamicsConstraints_
{
  typedef DynamicsConstraints_<ContainerAllocator> Type;

  DynamicsConstraints_()
    : horizontal_speed(0.0)
    , horizontal_acceleration(0.0)
    , horizontal_jerk(0.0)
    , horizontal_snap(0.0)
    , vertical_ascending_speed(0.0)
    , vertical_ascending_acceleration(0.0)
    , vertical_ascending_jerk(0.0)
    , vertical_ascending_snap(0.0)
    , vertical_descending_speed(0.0)
    , vertical_descending_acceleration(0.0)
    , vertical_descending_jerk(0.0)
    , vertical_descending_snap(0.0)
    , heading_speed(0.0)
    , heading_acceleration(0.0)
    , heading_jerk(0.0)
    , heading_snap(0.0)
    , roll_rate(0.0)
    , pitch_rate(0.0)
    , yaw_rate(0.0)
    , tilt(0.0)  {
    }
  DynamicsConstraints_(const ContainerAllocator& _alloc)
    : horizontal_speed(0.0)
    , horizontal_acceleration(0.0)
    , horizontal_jerk(0.0)
    , horizontal_snap(0.0)
    , vertical_ascending_speed(0.0)
    , vertical_ascending_acceleration(0.0)
    , vertical_ascending_jerk(0.0)
    , vertical_ascending_snap(0.0)
    , vertical_descending_speed(0.0)
    , vertical_descending_acceleration(0.0)
    , vertical_descending_jerk(0.0)
    , vertical_descending_snap(0.0)
    , heading_speed(0.0)
    , heading_acceleration(0.0)
    , heading_jerk(0.0)
    , heading_snap(0.0)
    , roll_rate(0.0)
    , pitch_rate(0.0)
    , yaw_rate(0.0)
    , tilt(0.0)  {
  (void)_alloc;
    }



   typedef double _horizontal_speed_type;
  _horizontal_speed_type horizontal_speed;

   typedef double _horizontal_acceleration_type;
  _horizontal_acceleration_type horizontal_acceleration;

   typedef double _horizontal_jerk_type;
  _horizontal_jerk_type horizontal_jerk;

   typedef double _horizontal_snap_type;
  _horizontal_snap_type horizontal_snap;

   typedef double _vertical_ascending_speed_type;
  _vertical_ascending_speed_type vertical_ascending_speed;

   typedef double _vertical_ascending_acceleration_type;
  _vertical_ascending_acceleration_type vertical_ascending_acceleration;

   typedef double _vertical_ascending_jerk_type;
  _vertical_ascending_jerk_type vertical_ascending_jerk;

   typedef double _vertical_ascending_snap_type;
  _vertical_ascending_snap_type vertical_ascending_snap;

   typedef double _vertical_descending_speed_type;
  _vertical_descending_speed_type vertical_descending_speed;

   typedef double _vertical_descending_acceleration_type;
  _vertical_descending_acceleration_type vertical_descending_acceleration;

   typedef double _vertical_descending_jerk_type;
  _vertical_descending_jerk_type vertical_descending_jerk;

   typedef double _vertical_descending_snap_type;
  _vertical_descending_snap_type vertical_descending_snap;

   typedef double _heading_speed_type;
  _heading_speed_type heading_speed;

   typedef double _heading_acceleration_type;
  _heading_acceleration_type heading_acceleration;

   typedef double _heading_jerk_type;
  _heading_jerk_type heading_jerk;

   typedef double _heading_snap_type;
  _heading_snap_type heading_snap;

   typedef double _roll_rate_type;
  _roll_rate_type roll_rate;

   typedef double _pitch_rate_type;
  _pitch_rate_type pitch_rate;

   typedef double _yaw_rate_type;
  _yaw_rate_type yaw_rate;

   typedef double _tilt_type;
  _tilt_type tilt;





  typedef boost::shared_ptr< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> const> ConstPtr;

}; // struct DynamicsConstraints_

typedef ::mrs_msgs::DynamicsConstraints_<std::allocator<void> > DynamicsConstraints;

typedef boost::shared_ptr< ::mrs_msgs::DynamicsConstraints > DynamicsConstraintsPtr;
typedef boost::shared_ptr< ::mrs_msgs::DynamicsConstraints const> DynamicsConstraintsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator1> & lhs, const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator2> & rhs)
{
  return lhs.horizontal_speed == rhs.horizontal_speed &&
    lhs.horizontal_acceleration == rhs.horizontal_acceleration &&
    lhs.horizontal_jerk == rhs.horizontal_jerk &&
    lhs.horizontal_snap == rhs.horizontal_snap &&
    lhs.vertical_ascending_speed == rhs.vertical_ascending_speed &&
    lhs.vertical_ascending_acceleration == rhs.vertical_ascending_acceleration &&
    lhs.vertical_ascending_jerk == rhs.vertical_ascending_jerk &&
    lhs.vertical_ascending_snap == rhs.vertical_ascending_snap &&
    lhs.vertical_descending_speed == rhs.vertical_descending_speed &&
    lhs.vertical_descending_acceleration == rhs.vertical_descending_acceleration &&
    lhs.vertical_descending_jerk == rhs.vertical_descending_jerk &&
    lhs.vertical_descending_snap == rhs.vertical_descending_snap &&
    lhs.heading_speed == rhs.heading_speed &&
    lhs.heading_acceleration == rhs.heading_acceleration &&
    lhs.heading_jerk == rhs.heading_jerk &&
    lhs.heading_snap == rhs.heading_snap &&
    lhs.roll_rate == rhs.roll_rate &&
    lhs.pitch_rate == rhs.pitch_rate &&
    lhs.yaw_rate == rhs.yaw_rate &&
    lhs.tilt == rhs.tilt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator1> & lhs, const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b79235a15953215e436f7e546e99c44";
  }

  static const char* value(const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b79235a15953215ULL;
  static const uint64_t static_value2 = 0xe436f7e546e99c44ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/DynamicsConstraints";
  }

  static const char* value(const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# UAV dynamics constraints\n"
"\n"
"# speed: m/s\n"
"# acceleration: m/s^2\n"
"# jerk: m/s^3\n"
"# snap: m/s^4\n"
"\n"
"# translational dynamics\n"
"\n"
"float64 horizontal_speed\n"
"float64 horizontal_acceleration\n"
"float64 horizontal_jerk\n"
"float64 horizontal_snap\n"
"\n"
"float64 vertical_ascending_speed\n"
"float64 vertical_ascending_acceleration\n"
"float64 vertical_ascending_jerk\n"
"float64 vertical_ascending_snap\n"
"\n"
"float64 vertical_descending_speed\n"
"float64 vertical_descending_acceleration\n"
"float64 vertical_descending_jerk\n"
"float64 vertical_descending_snap\n"
"\n"
"# heading\n"
"\n"
"float64 heading_speed\n"
"float64 heading_acceleration\n"
"float64 heading_jerk\n"
"float64 heading_snap\n"
"\n"
"# angular rates: rad/s\n"
"\n"
"float64 roll_rate\n"
"float64 pitch_rate\n"
"float64 yaw_rate\n"
"\n"
"# maximum tilt, rad\n"
"# max angle between body-3 and world-3 axes\n"
"\n"
"float64 tilt\n"
;
  }

  static const char* value(const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.horizontal_speed);
      stream.next(m.horizontal_acceleration);
      stream.next(m.horizontal_jerk);
      stream.next(m.horizontal_snap);
      stream.next(m.vertical_ascending_speed);
      stream.next(m.vertical_ascending_acceleration);
      stream.next(m.vertical_ascending_jerk);
      stream.next(m.vertical_ascending_snap);
      stream.next(m.vertical_descending_speed);
      stream.next(m.vertical_descending_acceleration);
      stream.next(m.vertical_descending_jerk);
      stream.next(m.vertical_descending_snap);
      stream.next(m.heading_speed);
      stream.next(m.heading_acceleration);
      stream.next(m.heading_jerk);
      stream.next(m.heading_snap);
      stream.next(m.roll_rate);
      stream.next(m.pitch_rate);
      stream.next(m.yaw_rate);
      stream.next(m.tilt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamicsConstraints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::DynamicsConstraints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::DynamicsConstraints_<ContainerAllocator>& v)
  {
    s << indent << "horizontal_speed: ";
    Printer<double>::stream(s, indent + "  ", v.horizontal_speed);
    s << indent << "horizontal_acceleration: ";
    Printer<double>::stream(s, indent + "  ", v.horizontal_acceleration);
    s << indent << "horizontal_jerk: ";
    Printer<double>::stream(s, indent + "  ", v.horizontal_jerk);
    s << indent << "horizontal_snap: ";
    Printer<double>::stream(s, indent + "  ", v.horizontal_snap);
    s << indent << "vertical_ascending_speed: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_ascending_speed);
    s << indent << "vertical_ascending_acceleration: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_ascending_acceleration);
    s << indent << "vertical_ascending_jerk: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_ascending_jerk);
    s << indent << "vertical_ascending_snap: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_ascending_snap);
    s << indent << "vertical_descending_speed: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_descending_speed);
    s << indent << "vertical_descending_acceleration: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_descending_acceleration);
    s << indent << "vertical_descending_jerk: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_descending_jerk);
    s << indent << "vertical_descending_snap: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_descending_snap);
    s << indent << "heading_speed: ";
    Printer<double>::stream(s, indent + "  ", v.heading_speed);
    s << indent << "heading_acceleration: ";
    Printer<double>::stream(s, indent + "  ", v.heading_acceleration);
    s << indent << "heading_jerk: ";
    Printer<double>::stream(s, indent + "  ", v.heading_jerk);
    s << indent << "heading_snap: ";
    Printer<double>::stream(s, indent + "  ", v.heading_snap);
    s << indent << "roll_rate: ";
    Printer<double>::stream(s, indent + "  ", v.roll_rate);
    s << indent << "pitch_rate: ";
    Printer<double>::stream(s, indent + "  ", v.pitch_rate);
    s << indent << "yaw_rate: ";
    Printer<double>::stream(s, indent + "  ", v.yaw_rate);
    s << indent << "tilt: ";
    Printer<double>::stream(s, indent + "  ", v.tilt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_DYNAMICSCONSTRAINTS_H
