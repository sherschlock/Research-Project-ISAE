// Generated by gencpp from file mrs_msgs/FutureTrajectory.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_FUTURETRAJECTORY_H
#define MRS_MSGS_MESSAGE_FUTURETRAJECTORY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mrs_msgs/FuturePoint.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct FutureTrajectory_
{
  typedef FutureTrajectory_<ContainerAllocator> Type;

  FutureTrajectory_()
    : stamp()
    , uav_name()
    , priority(0)
    , collision_avoidance(false)
    , points()  {
    }
  FutureTrajectory_(const ContainerAllocator& _alloc)
    : stamp()
    , uav_name(_alloc)
    , priority(0)
    , collision_avoidance(false)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _uav_name_type;
  _uav_name_type uav_name;

   typedef int32_t _priority_type;
  _priority_type priority;

   typedef uint8_t _collision_avoidance_type;
  _collision_avoidance_type collision_avoidance;

   typedef std::vector< ::mrs_msgs::FuturePoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::mrs_msgs::FuturePoint_<ContainerAllocator> >> _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> const> ConstPtr;

}; // struct FutureTrajectory_

typedef ::mrs_msgs::FutureTrajectory_<std::allocator<void> > FutureTrajectory;

typedef boost::shared_ptr< ::mrs_msgs::FutureTrajectory > FutureTrajectoryPtr;
typedef boost::shared_ptr< ::mrs_msgs::FutureTrajectory const> FutureTrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::FutureTrajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::FutureTrajectory_<ContainerAllocator1> & lhs, const ::mrs_msgs::FutureTrajectory_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.uav_name == rhs.uav_name &&
    lhs.priority == rhs.priority &&
    lhs.collision_avoidance == rhs.collision_avoidance &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::FutureTrajectory_<ContainerAllocator1> & lhs, const ::mrs_msgs::FutureTrajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f0fea67fc418564772e559179612541d";
  }

  static const char* value(const ::mrs_msgs::FutureTrajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf0fea67fc4185647ULL;
  static const uint64_t static_value2 = 0x72e559179612541dULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/FutureTrajectory";
  }

  static const char* value(const ::mrs_msgs::FutureTrajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"string uav_name\n"
"int32 priority\n"
"bool collision_avoidance\n"
"FuturePoint[] points \n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/FuturePoint\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::mrs_msgs::FutureTrajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.uav_name);
      stream.next(m.priority);
      stream.next(m.collision_avoidance);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FutureTrajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::FutureTrajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::FutureTrajectory_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "uav_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.uav_name);
    s << indent << "priority: ";
    Printer<int32_t>::stream(s, indent + "  ", v.priority);
    s << indent << "collision_avoidance: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision_avoidance);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mrs_msgs::FuturePoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_FUTURETRAJECTORY_H
