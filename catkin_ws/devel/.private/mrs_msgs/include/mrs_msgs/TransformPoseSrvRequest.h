// Generated by gencpp from file mrs_msgs/TransformPoseSrvRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_TRANSFORMPOSESRVREQUEST_H
#define MRS_MSGS_MESSAGE_TRANSFORMPOSESRVREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct TransformPoseSrvRequest_
{
  typedef TransformPoseSrvRequest_<ContainerAllocator> Type;

  TransformPoseSrvRequest_()
    : frame_id()
    , pose()  {
    }
  TransformPoseSrvRequest_(const ContainerAllocator& _alloc)
    : frame_id(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _frame_id_type;
  _frame_id_type frame_id;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TransformPoseSrvRequest_

typedef ::mrs_msgs::TransformPoseSrvRequest_<std::allocator<void> > TransformPoseSrvRequest;

typedef boost::shared_ptr< ::mrs_msgs::TransformPoseSrvRequest > TransformPoseSrvRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::TransformPoseSrvRequest const> TransformPoseSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.frame_id == rhs.frame_id &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f9821ca5d3cd4a17c6da23e1663add6";
  }

  static const char* value(const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f9821ca5d3cd4a1ULL;
  static const uint64_t static_value2 = 0x7c6da23e1663add6ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/TransformPoseSrvRequest";
  }

  static const char* value(const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string frame_id\n"
"geometry_msgs/PoseStamped pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
;
  }

  static const char* value(const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.frame_id);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransformPoseSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::TransformPoseSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.frame_id);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_TRANSFORMPOSESRVREQUEST_H
