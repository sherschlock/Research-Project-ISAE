// Generated by gencpp from file mrs_msgs/UavState.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_UAVSTATE_H
#define MRS_MSGS_MESSAGE_UAVSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <mrs_msgs/EstimatorType.h>
#include <mrs_msgs/AltitudeType.h>
#include <mrs_msgs/HeadingType.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Accel.h>
#include <geometry_msgs/Accel.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct UavState_
{
  typedef UavState_<ContainerAllocator> Type;

  UavState_()
    : header()
    , child_frame_id()
    , estimator_horizontal()
    , estimator_vertical()
    , estimator_heading()
    , estimator_iteration(0)
    , pose()
    , velocity()
    , acceleration()
    , acceleration_disturbance()  {
    }
  UavState_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , child_frame_id(_alloc)
    , estimator_horizontal(_alloc)
    , estimator_vertical(_alloc)
    , estimator_heading(_alloc)
    , estimator_iteration(0)
    , pose(_alloc)
    , velocity(_alloc)
    , acceleration(_alloc)
    , acceleration_disturbance(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _child_frame_id_type;
  _child_frame_id_type child_frame_id;

   typedef  ::mrs_msgs::EstimatorType_<ContainerAllocator>  _estimator_horizontal_type;
  _estimator_horizontal_type estimator_horizontal;

   typedef  ::mrs_msgs::AltitudeType_<ContainerAllocator>  _estimator_vertical_type;
  _estimator_vertical_type estimator_vertical;

   typedef  ::mrs_msgs::HeadingType_<ContainerAllocator>  _estimator_heading_type;
  _estimator_heading_type estimator_heading;

   typedef uint32_t _estimator_iteration_type;
  _estimator_iteration_type estimator_iteration;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _velocity_type;
  _velocity_type velocity;

   typedef  ::geometry_msgs::Accel_<ContainerAllocator>  _acceleration_type;
  _acceleration_type acceleration;

   typedef  ::geometry_msgs::Accel_<ContainerAllocator>  _acceleration_disturbance_type;
  _acceleration_disturbance_type acceleration_disturbance;





  typedef boost::shared_ptr< ::mrs_msgs::UavState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::UavState_<ContainerAllocator> const> ConstPtr;

}; // struct UavState_

typedef ::mrs_msgs::UavState_<std::allocator<void> > UavState;

typedef boost::shared_ptr< ::mrs_msgs::UavState > UavStatePtr;
typedef boost::shared_ptr< ::mrs_msgs::UavState const> UavStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::UavState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::UavState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::UavState_<ContainerAllocator1> & lhs, const ::mrs_msgs::UavState_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.child_frame_id == rhs.child_frame_id &&
    lhs.estimator_horizontal == rhs.estimator_horizontal &&
    lhs.estimator_vertical == rhs.estimator_vertical &&
    lhs.estimator_heading == rhs.estimator_heading &&
    lhs.estimator_iteration == rhs.estimator_iteration &&
    lhs.pose == rhs.pose &&
    lhs.velocity == rhs.velocity &&
    lhs.acceleration == rhs.acceleration &&
    lhs.acceleration_disturbance == rhs.acceleration_disturbance;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::UavState_<ContainerAllocator1> & lhs, const ::mrs_msgs::UavState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::UavState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::UavState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::UavState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::UavState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::UavState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::UavState_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::UavState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1503d21903aa0842a248ee0ea90f32c2";
  }

  static const char* value(const ::mrs_msgs::UavState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1503d21903aa0842ULL;
  static const uint64_t static_value2 = 0xa248ee0ea90f32c2ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::UavState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/UavState";
  }

  static const char* value(const ::mrs_msgs::UavState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::UavState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"string child_frame_id\n"
"\n"
"# text names of the used estimators\n"
"mrs_msgs/EstimatorType estimator_horizontal\n"
"mrs_msgs/AltitudeType estimator_vertical\n"
"mrs_msgs/HeadingType estimator_heading\n"
"\n"
"# initiated with 0\n"
"# increases if any estimator changes frame of reference\n"
"# or if any estimator is resetted\n"
"uint32 estimator_iteration\n"
"\n"
"geometry_msgs/Pose pose\n"
"geometry_msgs/Twist velocity\n"
"geometry_msgs/Accel acceleration\n"
"geometry_msgs/Accel acceleration_disturbance\n"
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
"MSG: mrs_msgs/EstimatorType\n"
"uint8 OPTFLOW=0\n"
"uint8 GPS=1\n"
"uint8 OPTFLOWGPS=2\n"
"uint8 RTK=3\n"
"uint8 VIO=4\n"
"uint8 BRICK=5\n"
"uint8 T265=6\n"
"uint8 HECTOR=7\n"
"uint8 BRICKFLOW=8\n"
"uint8 VSLAM=9\n"
"uint8 ICP=10\n"
"uint8 ALOAM=11\n"
"uint8 ALOAMGARM=12\n"
"uint8 ALOAMREP=13\n"
"uint8 LIOSAM=14\n"
"uint8 UWB=15\n"
"\n"
"uint8 TYPE_COUNT=16\n"
"\n"
"string name\n"
"uint8 type\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/AltitudeType\n"
"uint8 HEIGHT=0\n"
"uint8 PLANE=1\n"
"uint8 BRICK=2\n"
"uint8 VIO=3\n"
"uint8 ALOAM=4\n"
"uint8 ALOAMGARM=5\n"
"uint8 ALOAMREP=6\n"
"uint8 BARO=7\n"
"uint8 RTK=8\n"
"uint8 LIOSAM=9\n"
"\n"
"uint8 TYPE_COUNT=10\n"
"\n"
"string name\n"
"uint8 type\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/HeadingType\n"
"uint8 PIXHAWK=0\n"
"uint8 GYRO=1\n"
"uint8 COMPASS=2\n"
"uint8 OPTFLOW=3\n"
"uint8 HECTOR=4\n"
"uint8 BRICK=5\n"
"uint8 VIO=6\n"
"uint8 VSLAM=7\n"
"uint8 ICP=8\n"
"uint8 BRICKFLOW=9\n"
"uint8 ALOAM=10\n"
"uint8 ALOAMREP=11\n"
"uint8 LIOSAM=12\n"
"\n"
"uint8 TYPE_COUNT=13\n"
"\n"
"string name\n"
"uint8 type\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
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
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::mrs_msgs::UavState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::UavState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.child_frame_id);
      stream.next(m.estimator_horizontal);
      stream.next(m.estimator_vertical);
      stream.next(m.estimator_heading);
      stream.next(m.estimator_iteration);
      stream.next(m.pose);
      stream.next(m.velocity);
      stream.next(m.acceleration);
      stream.next(m.acceleration_disturbance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UavState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::UavState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::UavState_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "child_frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.child_frame_id);
    s << indent << "estimator_horizontal: ";
    s << std::endl;
    Printer< ::mrs_msgs::EstimatorType_<ContainerAllocator> >::stream(s, indent + "  ", v.estimator_horizontal);
    s << indent << "estimator_vertical: ";
    s << std::endl;
    Printer< ::mrs_msgs::AltitudeType_<ContainerAllocator> >::stream(s, indent + "  ", v.estimator_vertical);
    s << indent << "estimator_heading: ";
    s << std::endl;
    Printer< ::mrs_msgs::HeadingType_<ContainerAllocator> >::stream(s, indent + "  ", v.estimator_heading);
    s << indent << "estimator_iteration: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.estimator_iteration);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.velocity);
    s << indent << "acceleration: ";
    s << std::endl;
    Printer< ::geometry_msgs::Accel_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration);
    s << indent << "acceleration_disturbance: ";
    s << std::endl;
    Printer< ::geometry_msgs::Accel_<ContainerAllocator> >::stream(s, indent + "  ", v.acceleration_disturbance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_UAVSTATE_H
