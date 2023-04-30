// Generated by gencpp from file mrs_msgs/UavStatus.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_UAVSTATUS_H
#define MRS_MSGS_MESSAGE_UAVSTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mrs_msgs/CustomTopic.h>
#include <mrs_msgs/NodeCpuLoad.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct UavStatus_
{
  typedef UavStatus_<ContainerAllocator> Type;

  UavStatus_()
    : header()
    , uav_name()
    , nato_name()
    , uav_type()
    , uav_mass()
    , control_manager_diag_hz(0.0)
    , control_manager_diag_color(0)
    , controllers()
    , gains()
    , trackers()
    , constraints()
    , fly_state()
    , null_tracker(false)
    , secs_flown(0)
    , odom_hz(0.0)
    , odom_color(0)
    , odom_x(0.0)
    , odom_y(0.0)
    , odom_z(0.0)
    , odom_hdg(0.0)
    , odom_frame()
    , odom_estimators_hori()
    , odom_estimators_vert()
    , odom_estimators_hdg()
    , cmd_x(0.0)
    , cmd_y(0.0)
    , cmd_z(0.0)
    , cmd_hdg(0.0)
    , cpu_load(0.0)
    , cpu_load_total(0.0)
    , cpu_ghz(0.0)
    , cpu_temperature(0.0)
    , free_ram(0.0)
    , total_ram(0.0)
    , free_hdd(0)
    , mavros_hz(0.0)
    , mavros_color(0)
    , mavros_battery_hz(0.0)
    , mavros_state_hz(0.0)
    , mavros_cmd_hz(0.0)
    , mavros_mode()
    , mavros_armed(false)
    , mavros_gps_ok(false)
    , mavros_gps_qual(0.0)
    , battery_volt(0.0)
    , battery_curr(0.0)
    , battery_wh_drained(0.0)
    , thrust(0.0)
    , mass_estimate(0.0)
    , mass_set(0.0)
    , custom_topics()
    , custom_string_outputs()
    , custom_services()
    , node_cpu_loads()
    , flying_normally(false)
    , have_goal(false)
    , callbacks_enabled(false)
    , collision_avoidance_enabled(false)
    , avoiding_collision(false)
    , automatic_start_can_takeoff(false)
    , num_other_uavs(0)  {
    }
  UavStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , uav_name(_alloc)
    , nato_name(_alloc)
    , uav_type(_alloc)
    , uav_mass(_alloc)
    , control_manager_diag_hz(0.0)
    , control_manager_diag_color(0)
    , controllers(_alloc)
    , gains(_alloc)
    , trackers(_alloc)
    , constraints(_alloc)
    , fly_state(_alloc)
    , null_tracker(false)
    , secs_flown(0)
    , odom_hz(0.0)
    , odom_color(0)
    , odom_x(0.0)
    , odom_y(0.0)
    , odom_z(0.0)
    , odom_hdg(0.0)
    , odom_frame(_alloc)
    , odom_estimators_hori(_alloc)
    , odom_estimators_vert(_alloc)
    , odom_estimators_hdg(_alloc)
    , cmd_x(0.0)
    , cmd_y(0.0)
    , cmd_z(0.0)
    , cmd_hdg(0.0)
    , cpu_load(0.0)
    , cpu_load_total(0.0)
    , cpu_ghz(0.0)
    , cpu_temperature(0.0)
    , free_ram(0.0)
    , total_ram(0.0)
    , free_hdd(0)
    , mavros_hz(0.0)
    , mavros_color(0)
    , mavros_battery_hz(0.0)
    , mavros_state_hz(0.0)
    , mavros_cmd_hz(0.0)
    , mavros_mode(_alloc)
    , mavros_armed(false)
    , mavros_gps_ok(false)
    , mavros_gps_qual(0.0)
    , battery_volt(0.0)
    , battery_curr(0.0)
    , battery_wh_drained(0.0)
    , thrust(0.0)
    , mass_estimate(0.0)
    , mass_set(0.0)
    , custom_topics(_alloc)
    , custom_string_outputs(_alloc)
    , custom_services(_alloc)
    , node_cpu_loads(_alloc)
    , flying_normally(false)
    , have_goal(false)
    , callbacks_enabled(false)
    , collision_avoidance_enabled(false)
    , avoiding_collision(false)
    , automatic_start_can_takeoff(false)
    , num_other_uavs(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uav_name_type;
  _uav_name_type uav_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _nato_name_type;
  _nato_name_type nato_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uav_type_type;
  _uav_type_type uav_type;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uav_mass_type;
  _uav_mass_type uav_mass;

   typedef float _control_manager_diag_hz_type;
  _control_manager_diag_hz_type control_manager_diag_hz;

   typedef int16_t _control_manager_diag_color_type;
  _control_manager_diag_color_type control_manager_diag_color;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _controllers_type;
  _controllers_type controllers;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _gains_type;
  _gains_type gains;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _trackers_type;
  _trackers_type trackers;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _constraints_type;
  _constraints_type constraints;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _fly_state_type;
  _fly_state_type fly_state;

   typedef uint8_t _null_tracker_type;
  _null_tracker_type null_tracker;

   typedef uint32_t _secs_flown_type;
  _secs_flown_type secs_flown;

   typedef float _odom_hz_type;
  _odom_hz_type odom_hz;

   typedef int16_t _odom_color_type;
  _odom_color_type odom_color;

   typedef float _odom_x_type;
  _odom_x_type odom_x;

   typedef float _odom_y_type;
  _odom_y_type odom_y;

   typedef float _odom_z_type;
  _odom_z_type odom_z;

   typedef float _odom_hdg_type;
  _odom_hdg_type odom_hdg;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _odom_frame_type;
  _odom_frame_type odom_frame;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _odom_estimators_hori_type;
  _odom_estimators_hori_type odom_estimators_hori;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _odom_estimators_vert_type;
  _odom_estimators_vert_type odom_estimators_vert;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _odom_estimators_hdg_type;
  _odom_estimators_hdg_type odom_estimators_hdg;

   typedef float _cmd_x_type;
  _cmd_x_type cmd_x;

   typedef float _cmd_y_type;
  _cmd_y_type cmd_y;

   typedef float _cmd_z_type;
  _cmd_z_type cmd_z;

   typedef float _cmd_hdg_type;
  _cmd_hdg_type cmd_hdg;

   typedef float _cpu_load_type;
  _cpu_load_type cpu_load;

   typedef float _cpu_load_total_type;
  _cpu_load_total_type cpu_load_total;

   typedef float _cpu_ghz_type;
  _cpu_ghz_type cpu_ghz;

   typedef float _cpu_temperature_type;
  _cpu_temperature_type cpu_temperature;

   typedef float _free_ram_type;
  _free_ram_type free_ram;

   typedef float _total_ram_type;
  _total_ram_type total_ram;

   typedef int32_t _free_hdd_type;
  _free_hdd_type free_hdd;

   typedef float _mavros_hz_type;
  _mavros_hz_type mavros_hz;

   typedef int16_t _mavros_color_type;
  _mavros_color_type mavros_color;

   typedef float _mavros_battery_hz_type;
  _mavros_battery_hz_type mavros_battery_hz;

   typedef float _mavros_state_hz_type;
  _mavros_state_hz_type mavros_state_hz;

   typedef float _mavros_cmd_hz_type;
  _mavros_cmd_hz_type mavros_cmd_hz;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _mavros_mode_type;
  _mavros_mode_type mavros_mode;

   typedef uint8_t _mavros_armed_type;
  _mavros_armed_type mavros_armed;

   typedef uint8_t _mavros_gps_ok_type;
  _mavros_gps_ok_type mavros_gps_ok;

   typedef float _mavros_gps_qual_type;
  _mavros_gps_qual_type mavros_gps_qual;

   typedef float _battery_volt_type;
  _battery_volt_type battery_volt;

   typedef float _battery_curr_type;
  _battery_curr_type battery_curr;

   typedef float _battery_wh_drained_type;
  _battery_wh_drained_type battery_wh_drained;

   typedef float _thrust_type;
  _thrust_type thrust;

   typedef float _mass_estimate_type;
  _mass_estimate_type mass_estimate;

   typedef float _mass_set_type;
  _mass_set_type mass_set;

   typedef std::vector< ::mrs_msgs::CustomTopic_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::mrs_msgs::CustomTopic_<ContainerAllocator> >> _custom_topics_type;
  _custom_topics_type custom_topics;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _custom_string_outputs_type;
  _custom_string_outputs_type custom_string_outputs;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _custom_services_type;
  _custom_services_type custom_services;

   typedef  ::mrs_msgs::NodeCpuLoad_<ContainerAllocator>  _node_cpu_loads_type;
  _node_cpu_loads_type node_cpu_loads;

   typedef uint8_t _flying_normally_type;
  _flying_normally_type flying_normally;

   typedef uint8_t _have_goal_type;
  _have_goal_type have_goal;

   typedef uint8_t _callbacks_enabled_type;
  _callbacks_enabled_type callbacks_enabled;

   typedef uint8_t _collision_avoidance_enabled_type;
  _collision_avoidance_enabled_type collision_avoidance_enabled;

   typedef uint8_t _avoiding_collision_type;
  _avoiding_collision_type avoiding_collision;

   typedef uint8_t _automatic_start_can_takeoff_type;
  _automatic_start_can_takeoff_type automatic_start_can_takeoff;

   typedef uint16_t _num_other_uavs_type;
  _num_other_uavs_type num_other_uavs;





  typedef boost::shared_ptr< ::mrs_msgs::UavStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::UavStatus_<ContainerAllocator> const> ConstPtr;

}; // struct UavStatus_

typedef ::mrs_msgs::UavStatus_<std::allocator<void> > UavStatus;

typedef boost::shared_ptr< ::mrs_msgs::UavStatus > UavStatusPtr;
typedef boost::shared_ptr< ::mrs_msgs::UavStatus const> UavStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::UavStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::UavStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::UavStatus_<ContainerAllocator1> & lhs, const ::mrs_msgs::UavStatus_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.uav_name == rhs.uav_name &&
    lhs.nato_name == rhs.nato_name &&
    lhs.uav_type == rhs.uav_type &&
    lhs.uav_mass == rhs.uav_mass &&
    lhs.control_manager_diag_hz == rhs.control_manager_diag_hz &&
    lhs.control_manager_diag_color == rhs.control_manager_diag_color &&
    lhs.controllers == rhs.controllers &&
    lhs.gains == rhs.gains &&
    lhs.trackers == rhs.trackers &&
    lhs.constraints == rhs.constraints &&
    lhs.fly_state == rhs.fly_state &&
    lhs.null_tracker == rhs.null_tracker &&
    lhs.secs_flown == rhs.secs_flown &&
    lhs.odom_hz == rhs.odom_hz &&
    lhs.odom_color == rhs.odom_color &&
    lhs.odom_x == rhs.odom_x &&
    lhs.odom_y == rhs.odom_y &&
    lhs.odom_z == rhs.odom_z &&
    lhs.odom_hdg == rhs.odom_hdg &&
    lhs.odom_frame == rhs.odom_frame &&
    lhs.odom_estimators_hori == rhs.odom_estimators_hori &&
    lhs.odom_estimators_vert == rhs.odom_estimators_vert &&
    lhs.odom_estimators_hdg == rhs.odom_estimators_hdg &&
    lhs.cmd_x == rhs.cmd_x &&
    lhs.cmd_y == rhs.cmd_y &&
    lhs.cmd_z == rhs.cmd_z &&
    lhs.cmd_hdg == rhs.cmd_hdg &&
    lhs.cpu_load == rhs.cpu_load &&
    lhs.cpu_load_total == rhs.cpu_load_total &&
    lhs.cpu_ghz == rhs.cpu_ghz &&
    lhs.cpu_temperature == rhs.cpu_temperature &&
    lhs.free_ram == rhs.free_ram &&
    lhs.total_ram == rhs.total_ram &&
    lhs.free_hdd == rhs.free_hdd &&
    lhs.mavros_hz == rhs.mavros_hz &&
    lhs.mavros_color == rhs.mavros_color &&
    lhs.mavros_battery_hz == rhs.mavros_battery_hz &&
    lhs.mavros_state_hz == rhs.mavros_state_hz &&
    lhs.mavros_cmd_hz == rhs.mavros_cmd_hz &&
    lhs.mavros_mode == rhs.mavros_mode &&
    lhs.mavros_armed == rhs.mavros_armed &&
    lhs.mavros_gps_ok == rhs.mavros_gps_ok &&
    lhs.mavros_gps_qual == rhs.mavros_gps_qual &&
    lhs.battery_volt == rhs.battery_volt &&
    lhs.battery_curr == rhs.battery_curr &&
    lhs.battery_wh_drained == rhs.battery_wh_drained &&
    lhs.thrust == rhs.thrust &&
    lhs.mass_estimate == rhs.mass_estimate &&
    lhs.mass_set == rhs.mass_set &&
    lhs.custom_topics == rhs.custom_topics &&
    lhs.custom_string_outputs == rhs.custom_string_outputs &&
    lhs.custom_services == rhs.custom_services &&
    lhs.node_cpu_loads == rhs.node_cpu_loads &&
    lhs.flying_normally == rhs.flying_normally &&
    lhs.have_goal == rhs.have_goal &&
    lhs.callbacks_enabled == rhs.callbacks_enabled &&
    lhs.collision_avoidance_enabled == rhs.collision_avoidance_enabled &&
    lhs.avoiding_collision == rhs.avoiding_collision &&
    lhs.automatic_start_can_takeoff == rhs.automatic_start_can_takeoff &&
    lhs.num_other_uavs == rhs.num_other_uavs;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::UavStatus_<ContainerAllocator1> & lhs, const ::mrs_msgs::UavStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::UavStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::UavStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::UavStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::UavStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::UavStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::UavStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::UavStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "96b2a311d1a3f116c9cce438b1893925";
  }

  static const char* value(const ::mrs_msgs::UavStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x96b2a311d1a3f116ULL;
  static const uint64_t static_value2 = 0xc9cce438b1893925ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::UavStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/UavStatus";
  }

  static const char* value(const ::mrs_msgs::UavStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::UavStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"string uav_name\n"
"string nato_name\n"
"string uav_type\n"
"string uav_mass\n"
"\n"
"float32 control_manager_diag_hz\n"
"int16 control_manager_diag_color\n"
"string[] controllers\n"
"string[] gains\n"
"string[] trackers\n"
"string[] constraints\n"
"string fly_state\n"
"bool null_tracker\n"
"uint32 secs_flown\n"
"\n"
"float32 odom_hz\n"
"int16 odom_color\n"
"float32 odom_x\n"
"float32 odom_y\n"
"float32 odom_z\n"
"float32 odom_hdg\n"
"string odom_frame\n"
"string[] odom_estimators_hori\n"
"string[] odom_estimators_vert\n"
"string[] odom_estimators_hdg\n"
"\n"
"float32 cmd_x\n"
"float32 cmd_y\n"
"float32 cmd_z\n"
"float32 cmd_hdg\n"
"\n"
"float32 cpu_load\n"
"float32 cpu_load_total\n"
"float32 cpu_ghz\n"
"float32 cpu_temperature\n"
"float32 free_ram\n"
"float32 total_ram\n"
"int32 free_hdd\n"
"\n"
"float32 mavros_hz\n"
"int16 mavros_color\n"
"float32 mavros_battery_hz\n"
"float32 mavros_state_hz\n"
"float32 mavros_cmd_hz\n"
"string mavros_mode\n"
"bool mavros_armed\n"
"bool mavros_gps_ok\n"
"float32 mavros_gps_qual\n"
"float32 battery_volt\n"
"float32 battery_curr\n"
"float32 battery_wh_drained\n"
"float32 thrust\n"
"float32 mass_estimate\n"
"float32 mass_set\n"
"\n"
"CustomTopic[] custom_topics\n"
"string[] custom_string_outputs\n"
"string[] custom_services\n"
"\n"
"NodeCpuLoad node_cpu_loads\n"
"\n"
"bool flying_normally\n"
"bool have_goal\n"
"bool callbacks_enabled\n"
"bool collision_avoidance_enabled\n"
"bool avoiding_collision\n"
"bool automatic_start_can_takeoff\n"
"\n"
"uint16 num_other_uavs\n"
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
"MSG: mrs_msgs/CustomTopic\n"
"string topic_name\n"
"float32 topic_hz\n"
"int16 topic_color\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/NodeCpuLoad\n"
"string[] node_names\n"
"float32[] cpu_loads\n"
;
  }

  static const char* value(const ::mrs_msgs::UavStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::UavStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.uav_name);
      stream.next(m.nato_name);
      stream.next(m.uav_type);
      stream.next(m.uav_mass);
      stream.next(m.control_manager_diag_hz);
      stream.next(m.control_manager_diag_color);
      stream.next(m.controllers);
      stream.next(m.gains);
      stream.next(m.trackers);
      stream.next(m.constraints);
      stream.next(m.fly_state);
      stream.next(m.null_tracker);
      stream.next(m.secs_flown);
      stream.next(m.odom_hz);
      stream.next(m.odom_color);
      stream.next(m.odom_x);
      stream.next(m.odom_y);
      stream.next(m.odom_z);
      stream.next(m.odom_hdg);
      stream.next(m.odom_frame);
      stream.next(m.odom_estimators_hori);
      stream.next(m.odom_estimators_vert);
      stream.next(m.odom_estimators_hdg);
      stream.next(m.cmd_x);
      stream.next(m.cmd_y);
      stream.next(m.cmd_z);
      stream.next(m.cmd_hdg);
      stream.next(m.cpu_load);
      stream.next(m.cpu_load_total);
      stream.next(m.cpu_ghz);
      stream.next(m.cpu_temperature);
      stream.next(m.free_ram);
      stream.next(m.total_ram);
      stream.next(m.free_hdd);
      stream.next(m.mavros_hz);
      stream.next(m.mavros_color);
      stream.next(m.mavros_battery_hz);
      stream.next(m.mavros_state_hz);
      stream.next(m.mavros_cmd_hz);
      stream.next(m.mavros_mode);
      stream.next(m.mavros_armed);
      stream.next(m.mavros_gps_ok);
      stream.next(m.mavros_gps_qual);
      stream.next(m.battery_volt);
      stream.next(m.battery_curr);
      stream.next(m.battery_wh_drained);
      stream.next(m.thrust);
      stream.next(m.mass_estimate);
      stream.next(m.mass_set);
      stream.next(m.custom_topics);
      stream.next(m.custom_string_outputs);
      stream.next(m.custom_services);
      stream.next(m.node_cpu_loads);
      stream.next(m.flying_normally);
      stream.next(m.have_goal);
      stream.next(m.callbacks_enabled);
      stream.next(m.collision_avoidance_enabled);
      stream.next(m.avoiding_collision);
      stream.next(m.automatic_start_can_takeoff);
      stream.next(m.num_other_uavs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UavStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::UavStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::UavStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "uav_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uav_name);
    s << indent << "nato_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.nato_name);
    s << indent << "uav_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uav_type);
    s << indent << "uav_mass: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uav_mass);
    s << indent << "control_manager_diag_hz: ";
    Printer<float>::stream(s, indent + "  ", v.control_manager_diag_hz);
    s << indent << "control_manager_diag_color: ";
    Printer<int16_t>::stream(s, indent + "  ", v.control_manager_diag_color);
    s << indent << "controllers[]" << std::endl;
    for (size_t i = 0; i < v.controllers.size(); ++i)
    {
      s << indent << "  controllers[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.controllers[i]);
    }
    s << indent << "gains[]" << std::endl;
    for (size_t i = 0; i < v.gains.size(); ++i)
    {
      s << indent << "  gains[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.gains[i]);
    }
    s << indent << "trackers[]" << std::endl;
    for (size_t i = 0; i < v.trackers.size(); ++i)
    {
      s << indent << "  trackers[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.trackers[i]);
    }
    s << indent << "constraints[]" << std::endl;
    for (size_t i = 0; i < v.constraints.size(); ++i)
    {
      s << indent << "  constraints[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.constraints[i]);
    }
    s << indent << "fly_state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.fly_state);
    s << indent << "null_tracker: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.null_tracker);
    s << indent << "secs_flown: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.secs_flown);
    s << indent << "odom_hz: ";
    Printer<float>::stream(s, indent + "  ", v.odom_hz);
    s << indent << "odom_color: ";
    Printer<int16_t>::stream(s, indent + "  ", v.odom_color);
    s << indent << "odom_x: ";
    Printer<float>::stream(s, indent + "  ", v.odom_x);
    s << indent << "odom_y: ";
    Printer<float>::stream(s, indent + "  ", v.odom_y);
    s << indent << "odom_z: ";
    Printer<float>::stream(s, indent + "  ", v.odom_z);
    s << indent << "odom_hdg: ";
    Printer<float>::stream(s, indent + "  ", v.odom_hdg);
    s << indent << "odom_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.odom_frame);
    s << indent << "odom_estimators_hori[]" << std::endl;
    for (size_t i = 0; i < v.odom_estimators_hori.size(); ++i)
    {
      s << indent << "  odom_estimators_hori[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.odom_estimators_hori[i]);
    }
    s << indent << "odom_estimators_vert[]" << std::endl;
    for (size_t i = 0; i < v.odom_estimators_vert.size(); ++i)
    {
      s << indent << "  odom_estimators_vert[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.odom_estimators_vert[i]);
    }
    s << indent << "odom_estimators_hdg[]" << std::endl;
    for (size_t i = 0; i < v.odom_estimators_hdg.size(); ++i)
    {
      s << indent << "  odom_estimators_hdg[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.odom_estimators_hdg[i]);
    }
    s << indent << "cmd_x: ";
    Printer<float>::stream(s, indent + "  ", v.cmd_x);
    s << indent << "cmd_y: ";
    Printer<float>::stream(s, indent + "  ", v.cmd_y);
    s << indent << "cmd_z: ";
    Printer<float>::stream(s, indent + "  ", v.cmd_z);
    s << indent << "cmd_hdg: ";
    Printer<float>::stream(s, indent + "  ", v.cmd_hdg);
    s << indent << "cpu_load: ";
    Printer<float>::stream(s, indent + "  ", v.cpu_load);
    s << indent << "cpu_load_total: ";
    Printer<float>::stream(s, indent + "  ", v.cpu_load_total);
    s << indent << "cpu_ghz: ";
    Printer<float>::stream(s, indent + "  ", v.cpu_ghz);
    s << indent << "cpu_temperature: ";
    Printer<float>::stream(s, indent + "  ", v.cpu_temperature);
    s << indent << "free_ram: ";
    Printer<float>::stream(s, indent + "  ", v.free_ram);
    s << indent << "total_ram: ";
    Printer<float>::stream(s, indent + "  ", v.total_ram);
    s << indent << "free_hdd: ";
    Printer<int32_t>::stream(s, indent + "  ", v.free_hdd);
    s << indent << "mavros_hz: ";
    Printer<float>::stream(s, indent + "  ", v.mavros_hz);
    s << indent << "mavros_color: ";
    Printer<int16_t>::stream(s, indent + "  ", v.mavros_color);
    s << indent << "mavros_battery_hz: ";
    Printer<float>::stream(s, indent + "  ", v.mavros_battery_hz);
    s << indent << "mavros_state_hz: ";
    Printer<float>::stream(s, indent + "  ", v.mavros_state_hz);
    s << indent << "mavros_cmd_hz: ";
    Printer<float>::stream(s, indent + "  ", v.mavros_cmd_hz);
    s << indent << "mavros_mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.mavros_mode);
    s << indent << "mavros_armed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mavros_armed);
    s << indent << "mavros_gps_ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.mavros_gps_ok);
    s << indent << "mavros_gps_qual: ";
    Printer<float>::stream(s, indent + "  ", v.mavros_gps_qual);
    s << indent << "battery_volt: ";
    Printer<float>::stream(s, indent + "  ", v.battery_volt);
    s << indent << "battery_curr: ";
    Printer<float>::stream(s, indent + "  ", v.battery_curr);
    s << indent << "battery_wh_drained: ";
    Printer<float>::stream(s, indent + "  ", v.battery_wh_drained);
    s << indent << "thrust: ";
    Printer<float>::stream(s, indent + "  ", v.thrust);
    s << indent << "mass_estimate: ";
    Printer<float>::stream(s, indent + "  ", v.mass_estimate);
    s << indent << "mass_set: ";
    Printer<float>::stream(s, indent + "  ", v.mass_set);
    s << indent << "custom_topics[]" << std::endl;
    for (size_t i = 0; i < v.custom_topics.size(); ++i)
    {
      s << indent << "  custom_topics[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mrs_msgs::CustomTopic_<ContainerAllocator> >::stream(s, indent + "    ", v.custom_topics[i]);
    }
    s << indent << "custom_string_outputs[]" << std::endl;
    for (size_t i = 0; i < v.custom_string_outputs.size(); ++i)
    {
      s << indent << "  custom_string_outputs[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.custom_string_outputs[i]);
    }
    s << indent << "custom_services[]" << std::endl;
    for (size_t i = 0; i < v.custom_services.size(); ++i)
    {
      s << indent << "  custom_services[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.custom_services[i]);
    }
    s << indent << "node_cpu_loads: ";
    s << std::endl;
    Printer< ::mrs_msgs::NodeCpuLoad_<ContainerAllocator> >::stream(s, indent + "  ", v.node_cpu_loads);
    s << indent << "flying_normally: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flying_normally);
    s << indent << "have_goal: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.have_goal);
    s << indent << "callbacks_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.callbacks_enabled);
    s << indent << "collision_avoidance_enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision_avoidance_enabled);
    s << indent << "avoiding_collision: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.avoiding_collision);
    s << indent << "automatic_start_can_takeoff: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.automatic_start_can_takeoff);
    s << indent << "num_other_uavs: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.num_other_uavs);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_UAVSTATUS_H
