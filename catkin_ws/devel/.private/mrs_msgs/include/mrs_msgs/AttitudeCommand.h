// Generated by gencpp from file mrs_msgs/AttitudeCommand.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_ATTITUDECOMMAND_H
#define MRS_MSGS_MESSAGE_ATTITUDECOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct AttitudeCommand_
{
  typedef AttitudeCommand_<ContainerAllocator> Type;

  AttitudeCommand_()
    : header()
    , controller()
    , ramping_up(false)
    , attitude()
    , attitude_rate()
    , desired_acceleration()
    , thrust(0.0)
    , mass_difference(0.0)
    , total_mass(0.0)
    , disturbance_wx_w(0.0)
    , disturbance_wy_w(0.0)
    , disturbance_bx_w(0.0)
    , disturbance_by_w(0.0)
    , disturbance_bx_b(0.0)
    , disturbance_by_b(0.0)
    , controller_enforcing_constraints(false)
    , horizontal_speed_constraint(0.0)
    , horizontal_acc_constraint(0.0)
    , vertical_asc_speed_constraint(0.0)
    , vertical_asc_acc_constraint(0.0)
    , vertical_desc_speed_constraint(0.0)
    , vertical_desc_acc_constraint(0.0)
    , mode_mask(0)  {
    }
  AttitudeCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , controller(_alloc)
    , ramping_up(false)
    , attitude(_alloc)
    , attitude_rate(_alloc)
    , desired_acceleration(_alloc)
    , thrust(0.0)
    , mass_difference(0.0)
    , total_mass(0.0)
    , disturbance_wx_w(0.0)
    , disturbance_wy_w(0.0)
    , disturbance_bx_w(0.0)
    , disturbance_by_w(0.0)
    , disturbance_bx_b(0.0)
    , disturbance_by_b(0.0)
    , controller_enforcing_constraints(false)
    , horizontal_speed_constraint(0.0)
    , horizontal_acc_constraint(0.0)
    , vertical_asc_speed_constraint(0.0)
    , vertical_asc_acc_constraint(0.0)
    , vertical_desc_speed_constraint(0.0)
    , vertical_desc_acc_constraint(0.0)
    , mode_mask(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _controller_type;
  _controller_type controller;

   typedef uint8_t _ramping_up_type;
  _ramping_up_type ramping_up;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _attitude_type;
  _attitude_type attitude;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _attitude_rate_type;
  _attitude_rate_type attitude_rate;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _desired_acceleration_type;
  _desired_acceleration_type desired_acceleration;

   typedef double _thrust_type;
  _thrust_type thrust;

   typedef double _mass_difference_type;
  _mass_difference_type mass_difference;

   typedef double _total_mass_type;
  _total_mass_type total_mass;

   typedef double _disturbance_wx_w_type;
  _disturbance_wx_w_type disturbance_wx_w;

   typedef double _disturbance_wy_w_type;
  _disturbance_wy_w_type disturbance_wy_w;

   typedef double _disturbance_bx_w_type;
  _disturbance_bx_w_type disturbance_bx_w;

   typedef double _disturbance_by_w_type;
  _disturbance_by_w_type disturbance_by_w;

   typedef double _disturbance_bx_b_type;
  _disturbance_bx_b_type disturbance_bx_b;

   typedef double _disturbance_by_b_type;
  _disturbance_by_b_type disturbance_by_b;

   typedef uint8_t _controller_enforcing_constraints_type;
  _controller_enforcing_constraints_type controller_enforcing_constraints;

   typedef double _horizontal_speed_constraint_type;
  _horizontal_speed_constraint_type horizontal_speed_constraint;

   typedef double _horizontal_acc_constraint_type;
  _horizontal_acc_constraint_type horizontal_acc_constraint;

   typedef double _vertical_asc_speed_constraint_type;
  _vertical_asc_speed_constraint_type vertical_asc_speed_constraint;

   typedef double _vertical_asc_acc_constraint_type;
  _vertical_asc_acc_constraint_type vertical_asc_acc_constraint;

   typedef double _vertical_desc_speed_constraint_type;
  _vertical_desc_speed_constraint_type vertical_desc_speed_constraint;

   typedef double _vertical_desc_acc_constraint_type;
  _vertical_desc_acc_constraint_type vertical_desc_acc_constraint;

   typedef uint8_t _mode_mask_type;
  _mode_mask_type mode_mask;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(MODE_ATTITUDE)
  #undef MODE_ATTITUDE
#endif
#if defined(_WIN32) && defined(MODE_ATTITUDE_RATE)
  #undef MODE_ATTITUDE_RATE
#endif

  enum {
    MODE_ATTITUDE = 1u,
    MODE_ATTITUDE_RATE = 2u,
  };


  typedef boost::shared_ptr< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> const> ConstPtr;

}; // struct AttitudeCommand_

typedef ::mrs_msgs::AttitudeCommand_<std::allocator<void> > AttitudeCommand;

typedef boost::shared_ptr< ::mrs_msgs::AttitudeCommand > AttitudeCommandPtr;
typedef boost::shared_ptr< ::mrs_msgs::AttitudeCommand const> AttitudeCommandConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::AttitudeCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::AttitudeCommand_<ContainerAllocator1> & lhs, const ::mrs_msgs::AttitudeCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.controller == rhs.controller &&
    lhs.ramping_up == rhs.ramping_up &&
    lhs.attitude == rhs.attitude &&
    lhs.attitude_rate == rhs.attitude_rate &&
    lhs.desired_acceleration == rhs.desired_acceleration &&
    lhs.thrust == rhs.thrust &&
    lhs.mass_difference == rhs.mass_difference &&
    lhs.total_mass == rhs.total_mass &&
    lhs.disturbance_wx_w == rhs.disturbance_wx_w &&
    lhs.disturbance_wy_w == rhs.disturbance_wy_w &&
    lhs.disturbance_bx_w == rhs.disturbance_bx_w &&
    lhs.disturbance_by_w == rhs.disturbance_by_w &&
    lhs.disturbance_bx_b == rhs.disturbance_bx_b &&
    lhs.disturbance_by_b == rhs.disturbance_by_b &&
    lhs.controller_enforcing_constraints == rhs.controller_enforcing_constraints &&
    lhs.horizontal_speed_constraint == rhs.horizontal_speed_constraint &&
    lhs.horizontal_acc_constraint == rhs.horizontal_acc_constraint &&
    lhs.vertical_asc_speed_constraint == rhs.vertical_asc_speed_constraint &&
    lhs.vertical_asc_acc_constraint == rhs.vertical_asc_acc_constraint &&
    lhs.vertical_desc_speed_constraint == rhs.vertical_desc_speed_constraint &&
    lhs.vertical_desc_acc_constraint == rhs.vertical_desc_acc_constraint &&
    lhs.mode_mask == rhs.mode_mask;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::AttitudeCommand_<ContainerAllocator1> & lhs, const ::mrs_msgs::AttitudeCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba99a1fcefbbc4c8eb8328bcdd1d674c";
  }

  static const char* value(const ::mrs_msgs::AttitudeCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba99a1fcefbbc4c8ULL;
  static const uint64_t static_value2 = 0xeb8328bcdd1d674cULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/AttitudeCommand";
  }

  static const char* value(const ::mrs_msgs::AttitudeCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This represents an output of a UAV feedback controller (mrs_uav_manager::Controller).\n"
"# This message is returned from a controller by means of the update() function, called by the mrs_uav_manager::ControlManager.\n"
"\n"
"std_msgs/Header header\n"
"\n"
"# The name of the controller (implementation-wise).\n"
"# Beware, multiple instances of the same controller can be running.\n"
"# The ControlManagerDiagnostics message contains the name given them\n"
"# by the ControlManager.\n"
"string controller\n"
"\n"
"# True if the controller is in the initial rampup phase (just after activation).\n"
"bool ramping_up\n"
"\n"
"# The desired orientation produced by the controller.\n"
"# This field should be filled every time.\n"
"geometry_msgs/Quaternion attitude\n"
"\n"
"# The desired attitude rate produced by the controller.\n"
"# This field is optional.\n"
"geometry_msgs/Point attitude_rate\n"
"\n"
"# Desired acceleration produced by the controller.\n"
"# This field is mandatory if flying with \"mrs_odometry\".\n"
"# The desired acceleration should be without calculate without\n"
"# compensation of external forces and disturbances, e.g., without\n"
"# the compensation for the gravity vector, wind and internal UAV biases.\n"
"geometry_msgs/Point desired_acceleration\n"
"\n"
"# The desired thrust, [0, 1].\n"
"float64 thrust\n"
"\n"
"# The estimated mass difference from the nominal mass.\n"
"float64 mass_difference\n"
"\n"
"# Total estimated UAV mass.\n"
"float64 total_mass\n"
"\n"
"# World-frame disturbances expressed in the world frame.\n"
"float64 disturbance_wx_w\n"
"float64 disturbance_wy_w\n"
"\n"
"# Body-frame (fcu_untilted) disturbances expressed in the world frame.\n"
"float64 disturbance_bx_w\n"
"float64 disturbance_by_w\n"
"\n"
"# Body-frame (fcu_untilted) disturbances expressed in the body frame (fcu_untilted).\n"
"float64 disturbance_bx_b\n"
"float64 disturbance_by_b\n"
"\n"
"# The controller can enforce dynamics constraints over the trackers.\n"
"# This can be used when flying with a controller that is limited to\n"
"# some maximum speed and acceleration.\n"
"bool controller_enforcing_constraints\n"
"float64 horizontal_speed_constraint\n"
"float64 horizontal_acc_constraint\n"
"float64 vertical_asc_speed_constraint\n"
"float64 vertical_asc_acc_constraint\n"
"float64 vertical_desc_speed_constraint\n"
"float64 vertical_desc_acc_constraint\n"
"\n"
"# Defines what output should be used, whether the attitude\n"
"# or the attitude rate.\n"
"uint8 mode_mask\n"
"uint8 MODE_ATTITUDE=1\n"
"uint8 MODE_ATTITUDE_RATE=2\n"
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
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mrs_msgs::AttitudeCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.controller);
      stream.next(m.ramping_up);
      stream.next(m.attitude);
      stream.next(m.attitude_rate);
      stream.next(m.desired_acceleration);
      stream.next(m.thrust);
      stream.next(m.mass_difference);
      stream.next(m.total_mass);
      stream.next(m.disturbance_wx_w);
      stream.next(m.disturbance_wy_w);
      stream.next(m.disturbance_bx_w);
      stream.next(m.disturbance_by_w);
      stream.next(m.disturbance_bx_b);
      stream.next(m.disturbance_by_b);
      stream.next(m.controller_enforcing_constraints);
      stream.next(m.horizontal_speed_constraint);
      stream.next(m.horizontal_acc_constraint);
      stream.next(m.vertical_asc_speed_constraint);
      stream.next(m.vertical_asc_acc_constraint);
      stream.next(m.vertical_desc_speed_constraint);
      stream.next(m.vertical_desc_acc_constraint);
      stream.next(m.mode_mask);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AttitudeCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::AttitudeCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::AttitudeCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "controller: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.controller);
    s << indent << "ramping_up: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ramping_up);
    s << indent << "attitude: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.attitude);
    s << indent << "attitude_rate: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.attitude_rate);
    s << indent << "desired_acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.desired_acceleration);
    s << indent << "thrust: ";
    Printer<double>::stream(s, indent + "  ", v.thrust);
    s << indent << "mass_difference: ";
    Printer<double>::stream(s, indent + "  ", v.mass_difference);
    s << indent << "total_mass: ";
    Printer<double>::stream(s, indent + "  ", v.total_mass);
    s << indent << "disturbance_wx_w: ";
    Printer<double>::stream(s, indent + "  ", v.disturbance_wx_w);
    s << indent << "disturbance_wy_w: ";
    Printer<double>::stream(s, indent + "  ", v.disturbance_wy_w);
    s << indent << "disturbance_bx_w: ";
    Printer<double>::stream(s, indent + "  ", v.disturbance_bx_w);
    s << indent << "disturbance_by_w: ";
    Printer<double>::stream(s, indent + "  ", v.disturbance_by_w);
    s << indent << "disturbance_bx_b: ";
    Printer<double>::stream(s, indent + "  ", v.disturbance_bx_b);
    s << indent << "disturbance_by_b: ";
    Printer<double>::stream(s, indent + "  ", v.disturbance_by_b);
    s << indent << "controller_enforcing_constraints: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.controller_enforcing_constraints);
    s << indent << "horizontal_speed_constraint: ";
    Printer<double>::stream(s, indent + "  ", v.horizontal_speed_constraint);
    s << indent << "horizontal_acc_constraint: ";
    Printer<double>::stream(s, indent + "  ", v.horizontal_acc_constraint);
    s << indent << "vertical_asc_speed_constraint: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_asc_speed_constraint);
    s << indent << "vertical_asc_acc_constraint: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_asc_acc_constraint);
    s << indent << "vertical_desc_speed_constraint: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_desc_speed_constraint);
    s << indent << "vertical_desc_acc_constraint: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_desc_acc_constraint);
    s << indent << "mode_mask: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mode_mask);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_ATTITUDECOMMAND_H
