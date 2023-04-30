// Generated by gencpp from file mrs_msgs/ImagePointsWithFloatStamped.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_IMAGEPOINTSWITHFLOATSTAMPED_H
#define MRS_MSGS_MESSAGE_IMAGEPOINTSWITHFLOATSTAMPED_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mrs_msgs/Point2DWithFloat.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct ImagePointsWithFloatStamped_
{
  typedef ImagePointsWithFloatStamped_<ContainerAllocator> Type;

  ImagePointsWithFloatStamped_()
    : stamp()
    , image_height(0)
    , image_width(0)
    , points()  {
    }
  ImagePointsWithFloatStamped_(const ContainerAllocator& _alloc)
    : stamp()
    , image_height(0)
    , image_width(0)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint32_t _image_height_type;
  _image_height_type image_height;

   typedef uint32_t _image_width_type;
  _image_width_type image_width;

   typedef std::vector< ::mrs_msgs::Point2DWithFloat_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::mrs_msgs::Point2DWithFloat_<ContainerAllocator> >> _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> const> ConstPtr;

}; // struct ImagePointsWithFloatStamped_

typedef ::mrs_msgs::ImagePointsWithFloatStamped_<std::allocator<void> > ImagePointsWithFloatStamped;

typedef boost::shared_ptr< ::mrs_msgs::ImagePointsWithFloatStamped > ImagePointsWithFloatStampedPtr;
typedef boost::shared_ptr< ::mrs_msgs::ImagePointsWithFloatStamped const> ImagePointsWithFloatStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.image_height == rhs.image_height &&
    lhs.image_width == rhs.image_width &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator1> & lhs, const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2f80394ba17236fe2f5a874f644ea3a5";
  }

  static const char* value(const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2f80394ba17236feULL;
  static const uint64_t static_value2 = 0x2f5a874f644ea3a5ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ImagePointsWithFloatStamped";
  }

  static const char* value(const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"uint32 image_height\n"
"uint32 image_width\n"
"mrs_msgs/Point2DWithFloat[] points\n"
"\n"
"================================================================================\n"
"MSG: mrs_msgs/Point2DWithFloat\n"
"float64 x\n"
"float64 y\n"
"float64 value\n"
;
  }

  static const char* value(const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.image_height);
      stream.next(m.image_width);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImagePointsWithFloatStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ImagePointsWithFloatStamped_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "image_height: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.image_height);
    s << indent << "image_width: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.image_width);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mrs_msgs::Point2DWithFloat_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_IMAGEPOINTSWITHFLOATSTAMPED_H
