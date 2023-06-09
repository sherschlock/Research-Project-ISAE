// Generated by gencpp from file mrs_msgs/PclToolsDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_PCLTOOLSDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_PCLTOOLSDIAGNOSTICS_H


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
struct PclToolsDiagnostics_
{
  typedef PclToolsDiagnostics_<ContainerAllocator> Type;

  PclToolsDiagnostics_()
    : stamp()
    , sensor_name()
    , sensor_type(0)
    , frequency(0.0)
    , vfov(0.0)
    , rows_before(0)
    , cols_before(0)
    , rows_after(0)
    , cols_after(0)  {
    }
  PclToolsDiagnostics_(const ContainerAllocator& _alloc)
    : stamp()
    , sensor_name(_alloc)
    , sensor_type(0)
    , frequency(0.0)
    , vfov(0.0)
    , rows_before(0)
    , cols_before(0)
    , rows_after(0)
    , cols_after(0)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _sensor_name_type;
  _sensor_name_type sensor_name;

   typedef uint8_t _sensor_type_type;
  _sensor_type_type sensor_type;

   typedef float _frequency_type;
  _frequency_type frequency;

   typedef float _vfov_type;
  _vfov_type vfov;

   typedef uint16_t _rows_before_type;
  _rows_before_type rows_before;

   typedef uint16_t _cols_before_type;
  _cols_before_type cols_before;

   typedef uint16_t _rows_after_type;
  _rows_after_type rows_after;

   typedef uint16_t _cols_after_type;
  _cols_after_type cols_after;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SENSOR_TYPE_NONE)
  #undef SENSOR_TYPE_NONE
#endif
#if defined(_WIN32) && defined(SENSOR_TYPE_LIDAR_3D)
  #undef SENSOR_TYPE_LIDAR_3D
#endif
#if defined(_WIN32) && defined(SENSOR_TYPE_DEPTH_CAMERA)
  #undef SENSOR_TYPE_DEPTH_CAMERA
#endif

  enum {
    SENSOR_TYPE_NONE = -1,
    SENSOR_TYPE_LIDAR_3D = 0,
    SENSOR_TYPE_DEPTH_CAMERA = 1,
  };


  typedef boost::shared_ptr< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct PclToolsDiagnostics_

typedef ::mrs_msgs::PclToolsDiagnostics_<std::allocator<void> > PclToolsDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::PclToolsDiagnostics > PclToolsDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::PclToolsDiagnostics const> PclToolsDiagnosticsConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.sensor_name == rhs.sensor_name &&
    lhs.sensor_type == rhs.sensor_type &&
    lhs.frequency == rhs.frequency &&
    lhs.vfov == rhs.vfov &&
    lhs.rows_before == rhs.rows_before &&
    lhs.cols_before == rhs.cols_before &&
    lhs.rows_after == rhs.rows_after &&
    lhs.cols_after == rhs.cols_after;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "19326053c1e1dd1a3b03d52e3eeb957e";
  }

  static const char* value(const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x19326053c1e1dd1aULL;
  static const uint64_t static_value2 = 0x3b03d52e3eeb957eULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/PclToolsDiagnostics";
  }

  static const char* value(const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time   stamp\n"
"string sensor_name\n"
"uint8  sensor_type\n"
"\n"
"float32 frequency   # [Hz]\n"
"float32 vfov        # [deg]\n"
"uint16  rows_before # height of input data\n"
"uint16  cols_before # width of input data\n"
"uint16  rows_after  # height of output data\n"
"uint16  cols_after  # width of output data\n"
"\n"
"# Sensor type\n"
"int8 SENSOR_TYPE_NONE=-1\n"
"int8 SENSOR_TYPE_LIDAR_3D=0\n"
"int8 SENSOR_TYPE_DEPTH_CAMERA=1\n"
;
  }

  static const char* value(const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.sensor_name);
      stream.next(m.sensor_type);
      stream.next(m.frequency);
      stream.next(m.vfov);
      stream.next(m.rows_before);
      stream.next(m.cols_before);
      stream.next(m.rows_after);
      stream.next(m.cols_after);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PclToolsDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::PclToolsDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "sensor_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.sensor_name);
    s << indent << "sensor_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sensor_type);
    s << indent << "frequency: ";
    Printer<float>::stream(s, indent + "  ", v.frequency);
    s << indent << "vfov: ";
    Printer<float>::stream(s, indent + "  ", v.vfov);
    s << indent << "rows_before: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.rows_before);
    s << indent << "cols_before: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.cols_before);
    s << indent << "rows_after: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.rows_after);
    s << indent << "cols_after: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.cols_after);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_PCLTOOLSDIAGNOSTICS_H
