// Generated by gencpp from file mrs_msgs/OusterInfo.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_OUSTERINFO_H
#define MRS_MSGS_MESSAGE_OUSTERINFO_H


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
struct OusterInfo_
{
  typedef OusterInfo_<ContainerAllocator> Type;

  OusterInfo_()
    : name()
    , sn()
    , fw_rev()
    , mode()
    , prod_line()
    , beam_azimuth_angles()
    , beam_altitude_angles()
    , lidar_origin_to_beam_origin_mm(0.0)
    , imu_to_sensor_transform()
    , lidar_to_sensor_transform()
    , extrinsic()
    , pixels_per_column(0)
    , columns_per_frame(0)
    , pixel_shift_by_row()  {
    }
  OusterInfo_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , sn(_alloc)
    , fw_rev(_alloc)
    , mode(_alloc)
    , prod_line(_alloc)
    , beam_azimuth_angles(_alloc)
    , beam_altitude_angles(_alloc)
    , lidar_origin_to_beam_origin_mm(0.0)
    , imu_to_sensor_transform(_alloc)
    , lidar_to_sensor_transform(_alloc)
    , extrinsic(_alloc)
    , pixels_per_column(0)
    , columns_per_frame(0)
    , pixel_shift_by_row(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _sn_type;
  _sn_type sn;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _fw_rev_type;
  _fw_rev_type fw_rev;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _mode_type;
  _mode_type mode;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _prod_line_type;
  _prod_line_type prod_line;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _beam_azimuth_angles_type;
  _beam_azimuth_angles_type beam_azimuth_angles;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _beam_altitude_angles_type;
  _beam_altitude_angles_type beam_altitude_angles;

   typedef double _lidar_origin_to_beam_origin_mm_type;
  _lidar_origin_to_beam_origin_mm_type lidar_origin_to_beam_origin_mm;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _imu_to_sensor_transform_type;
  _imu_to_sensor_transform_type imu_to_sensor_transform;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _lidar_to_sensor_transform_type;
  _lidar_to_sensor_transform_type lidar_to_sensor_transform;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _extrinsic_type;
  _extrinsic_type extrinsic;

   typedef uint32_t _pixels_per_column_type;
  _pixels_per_column_type pixels_per_column;

   typedef uint32_t _columns_per_frame_type;
  _columns_per_frame_type columns_per_frame;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _pixel_shift_by_row_type;
  _pixel_shift_by_row_type pixel_shift_by_row;





  typedef boost::shared_ptr< ::mrs_msgs::OusterInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::OusterInfo_<ContainerAllocator> const> ConstPtr;

}; // struct OusterInfo_

typedef ::mrs_msgs::OusterInfo_<std::allocator<void> > OusterInfo;

typedef boost::shared_ptr< ::mrs_msgs::OusterInfo > OusterInfoPtr;
typedef boost::shared_ptr< ::mrs_msgs::OusterInfo const> OusterInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::OusterInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::OusterInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::OusterInfo_<ContainerAllocator1> & lhs, const ::mrs_msgs::OusterInfo_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.sn == rhs.sn &&
    lhs.fw_rev == rhs.fw_rev &&
    lhs.mode == rhs.mode &&
    lhs.prod_line == rhs.prod_line &&
    lhs.beam_azimuth_angles == rhs.beam_azimuth_angles &&
    lhs.beam_altitude_angles == rhs.beam_altitude_angles &&
    lhs.lidar_origin_to_beam_origin_mm == rhs.lidar_origin_to_beam_origin_mm &&
    lhs.imu_to_sensor_transform == rhs.imu_to_sensor_transform &&
    lhs.lidar_to_sensor_transform == rhs.lidar_to_sensor_transform &&
    lhs.extrinsic == rhs.extrinsic &&
    lhs.pixels_per_column == rhs.pixels_per_column &&
    lhs.columns_per_frame == rhs.columns_per_frame &&
    lhs.pixel_shift_by_row == rhs.pixel_shift_by_row;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::OusterInfo_<ContainerAllocator1> & lhs, const ::mrs_msgs::OusterInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::OusterInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::OusterInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::OusterInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "452bbd97f95e92c61390ef448c12ce29";
  }

  static const char* value(const ::mrs_msgs::OusterInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x452bbd97f95e92c6ULL;
  static const uint64_t static_value2 = 0x1390ef448c12ce29ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/OusterInfo";
  }

  static const char* value(const ::mrs_msgs::OusterInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"string sn\n"
"string fw_rev\n"
"string mode\n"
"string prod_line\n"
"float64[] beam_azimuth_angles\n"
"float64[] beam_altitude_angles\n"
"float64 lidar_origin_to_beam_origin_mm\n"
"float64[] imu_to_sensor_transform\n"
"float64[] lidar_to_sensor_transform\n"
"float64[] extrinsic\n"
"uint32 pixels_per_column\n"
"uint32 columns_per_frame\n"
"int32[] pixel_shift_by_row\n"
;
  }

  static const char* value(const ::mrs_msgs::OusterInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.sn);
      stream.next(m.fw_rev);
      stream.next(m.mode);
      stream.next(m.prod_line);
      stream.next(m.beam_azimuth_angles);
      stream.next(m.beam_altitude_angles);
      stream.next(m.lidar_origin_to_beam_origin_mm);
      stream.next(m.imu_to_sensor_transform);
      stream.next(m.lidar_to_sensor_transform);
      stream.next(m.extrinsic);
      stream.next(m.pixels_per_column);
      stream.next(m.columns_per_frame);
      stream.next(m.pixel_shift_by_row);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OusterInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::OusterInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::OusterInfo_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "sn: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.sn);
    s << indent << "fw_rev: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.fw_rev);
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.mode);
    s << indent << "prod_line: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.prod_line);
    s << indent << "beam_azimuth_angles[]" << std::endl;
    for (size_t i = 0; i < v.beam_azimuth_angles.size(); ++i)
    {
      s << indent << "  beam_azimuth_angles[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.beam_azimuth_angles[i]);
    }
    s << indent << "beam_altitude_angles[]" << std::endl;
    for (size_t i = 0; i < v.beam_altitude_angles.size(); ++i)
    {
      s << indent << "  beam_altitude_angles[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.beam_altitude_angles[i]);
    }
    s << indent << "lidar_origin_to_beam_origin_mm: ";
    Printer<double>::stream(s, indent + "  ", v.lidar_origin_to_beam_origin_mm);
    s << indent << "imu_to_sensor_transform[]" << std::endl;
    for (size_t i = 0; i < v.imu_to_sensor_transform.size(); ++i)
    {
      s << indent << "  imu_to_sensor_transform[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.imu_to_sensor_transform[i]);
    }
    s << indent << "lidar_to_sensor_transform[]" << std::endl;
    for (size_t i = 0; i < v.lidar_to_sensor_transform.size(); ++i)
    {
      s << indent << "  lidar_to_sensor_transform[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.lidar_to_sensor_transform[i]);
    }
    s << indent << "extrinsic[]" << std::endl;
    for (size_t i = 0; i < v.extrinsic.size(); ++i)
    {
      s << indent << "  extrinsic[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.extrinsic[i]);
    }
    s << indent << "pixels_per_column: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.pixels_per_column);
    s << indent << "columns_per_frame: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.columns_per_frame);
    s << indent << "pixel_shift_by_row[]" << std::endl;
    for (size_t i = 0; i < v.pixel_shift_by_row.size(); ++i)
    {
      s << indent << "  pixel_shift_by_row[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.pixel_shift_by_row[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_OUSTERINFO_H