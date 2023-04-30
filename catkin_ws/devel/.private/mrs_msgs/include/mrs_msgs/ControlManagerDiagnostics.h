// Generated by gencpp from file mrs_msgs/ControlManagerDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_CONTROLMANAGERDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_CONTROLMANAGERDIAGNOSTICS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mrs_msgs/TrackerStatus.h>
#include <mrs_msgs/ControllerStatus.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct ControlManagerDiagnostics_
{
  typedef ControlManagerDiagnostics_<ContainerAllocator> Type;

  ControlManagerDiagnostics_()
    : stamp()
    , uav_name()
    , motors(false)
    , flying_normally(false)
    , rc_mode(false)
    , active_tracker()
    , tracker_status()
    , active_controller()
    , controller_status()
    , available_controllers()
    , available_trackers()
    , human_switchable_controllers()
    , human_switchable_trackers()  {
    }
  ControlManagerDiagnostics_(const ContainerAllocator& _alloc)
    : stamp()
    , uav_name(_alloc)
    , motors(false)
    , flying_normally(false)
    , rc_mode(false)
    , active_tracker(_alloc)
    , tracker_status(_alloc)
    , active_controller(_alloc)
    , controller_status(_alloc)
    , available_controllers(_alloc)
    , available_trackers(_alloc)
    , human_switchable_controllers(_alloc)
    , human_switchable_trackers(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uav_name_type;
  _uav_name_type uav_name;

   typedef uint8_t _motors_type;
  _motors_type motors;

   typedef uint8_t _flying_normally_type;
  _flying_normally_type flying_normally;

   typedef uint8_t _rc_mode_type;
  _rc_mode_type rc_mode;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _active_tracker_type;
  _active_tracker_type active_tracker;

   typedef  ::mrs_msgs::TrackerStatus_<ContainerAllocator>  _tracker_status_type;
  _tracker_status_type tracker_status;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _active_controller_type;
  _active_controller_type active_controller;

   typedef  ::mrs_msgs::ControllerStatus_<ContainerAllocator>  _controller_status_type;
  _controller_status_type controller_status;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _available_controllers_type;
  _available_controllers_type available_controllers;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _available_trackers_type;
  _available_trackers_type available_trackers;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _human_switchable_controllers_type;
  _human_switchable_controllers_type human_switchable_controllers;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _human_switchable_trackers_type;
  _human_switchable_trackers_type human_switchable_trackers;





  typedef boost::shared_ptr< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct ControlManagerDiagnostics_

typedef ::mrs_msgs::ControlManagerDiagnostics_<std::allocator<void> > ControlManagerDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::ControlManagerDiagnostics > ControlManagerDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::ControlManagerDiagnostics const> ControlManagerDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.uav_name == rhs.uav_name &&
    lhs.motors == rhs.motors &&
    lhs.flying_normally == rhs.flying_normally &&
    lhs.rc_mode == rhs.rc_mode &&
    lhs.active_tracker == rhs.active_tracker &&
    lhs.tracker_status == rhs.tracker_status &&
    lhs.active_controller == rhs.active_controller &&
    lhs.controller_status == rhs.controller_status &&
    lhs.available_controllers == rhs.available_controllers &&
    lhs.available_trackers == rhs.available_trackers &&
    lhs.human_switchable_controllers == rhs.human_switchable_controllers &&
    lhs.human_switchable_trackers == rhs.human_switchable_trackers;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "739e0d9e7c44e1a1b9b450d58889c80b";
  }

  static const char* value(const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x739e0d9e7c44e1a1ULL;
  static const uint64_t static_value2 = 0xb9b450d58889c80bULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ControlManagerDiagnostics";
  }

  static const char* value(const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This reports on the state of the ControlManager and the currently active tracker and controller.\n"
"\n"
"time stamp\n"
"string uav_name\n"
"\n"
"# If the motors are enabled, in other words, if the output of the ControlManager can pass out.\n"
"bool motors\n"
"\n"
"# True if the UAV is flying and no special case occurred (emergency land, failsafe, etc.).\n"
"bool flying_normally\n"
"\n"
"# True if under the \"RC Joystick\" mode\n"
"bool rc_mode\n"
"\n"
"# The name of the currently active tracker, as defined in the trackers.yaml in the \"mrs_uav_manager\" package.\n"
"string active_tracker\n"
"\n"
"# The status of the currently active tracker.\n"
"mrs_msgs/TrackerStatus tracker_status\n"
"\n"
"# The name of the currently active controller, as defined in the controllers.yaml in the \"mrs_uav_manager\" package.\n"
"string active_controller\n"
"\n"
"# The status of the currently active controller.\n"
"mrs_msgs/ControllerStatus controller_status\n"
"\n"
"# list of controllers and trackers that are loaded and can be switched to\n"
"string[] available_controllers\n"
"string[] available_trackers\n"
"\n"
"# flags reporting on whether the trackers and controller should be \"human switchable\", meaning,\n"
"# whether people should be \"just\" able to switch to them, e.g., using a GUI or TUI interface\n"
"bool[] human_switchable_controllers\n"
"bool[] human_switchable_trackers\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/TrackerStatus\n"
"bool active\n"
"bool callbacks_enabled\n"
"\n"
"# is true whenever the tracker is doing something\n"
"# in other words, not idling\n"
"bool have_goal\n"
"\n"
"# is true only then a trajectory is being tracked\n"
"bool tracking_trajectory\n"
"\n"
"int32 trajectory_length\n"
"int32 trajectory_idx\n"
"\n"
"# only when following trajectory\n"
"# the current reference in the trajectory UNINTERPOLATED\n"
"mrs_msgs/ReferenceStamped trajectory_reference\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/ReferenceStamped\n"
"# A Positon+Heading reference with a header.\n"
"\n"
"std_msgs/Header header\n"
"mrs_msgs/Reference reference\n"
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
"\n"
"================================================================================\n"
"MSG: mrs_msgs/ControllerStatus\n"
"bool active\n"
;
  }

  static const char* value(const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.uav_name);
      stream.next(m.motors);
      stream.next(m.flying_normally);
      stream.next(m.rc_mode);
      stream.next(m.active_tracker);
      stream.next(m.tracker_status);
      stream.next(m.active_controller);
      stream.next(m.controller_status);
      stream.next(m.available_controllers);
      stream.next(m.available_trackers);
      stream.next(m.human_switchable_controllers);
      stream.next(m.human_switchable_trackers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlManagerDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ControlManagerDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "uav_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uav_name);
    s << indent << "motors: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motors);
    s << indent << "flying_normally: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flying_normally);
    s << indent << "rc_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.rc_mode);
    s << indent << "active_tracker: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.active_tracker);
    s << indent << "tracker_status: ";
    s << std::endl;
    Printer< ::mrs_msgs::TrackerStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.tracker_status);
    s << indent << "active_controller: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.active_controller);
    s << indent << "controller_status: ";
    s << std::endl;
    Printer< ::mrs_msgs::ControllerStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.controller_status);
    s << indent << "available_controllers[]" << std::endl;
    for (size_t i = 0; i < v.available_controllers.size(); ++i)
    {
      s << indent << "  available_controllers[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.available_controllers[i]);
    }
    s << indent << "available_trackers[]" << std::endl;
    for (size_t i = 0; i < v.available_trackers.size(); ++i)
    {
      s << indent << "  available_trackers[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.available_trackers[i]);
    }
    s << indent << "human_switchable_controllers[]" << std::endl;
    for (size_t i = 0; i < v.human_switchable_controllers.size(); ++i)
    {
      s << indent << "  human_switchable_controllers[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.human_switchable_controllers[i]);
    }
    s << indent << "human_switchable_trackers[]" << std::endl;
    for (size_t i = 0; i < v.human_switchable_trackers.size(); ++i)
    {
      s << indent << "  human_switchable_trackers[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.human_switchable_trackers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_CONTROLMANAGERDIAGNOSTICS_H
