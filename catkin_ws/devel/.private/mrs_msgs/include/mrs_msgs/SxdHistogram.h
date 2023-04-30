// Generated by gencpp from file mrs_msgs/SxdHistogram.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_SXDHISTOGRAM_H
#define MRS_MSGS_MESSAGE_SXDHISTOGRAM_H


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
struct SxdHistogram_
{
  typedef SxdHistogram_<ContainerAllocator> Type;

  SxdHistogram_()
    : stamp()
    , num_detections(0)
    , channels()  {
    }
  SxdHistogram_(const ContainerAllocator& _alloc)
    : stamp()
    , num_detections(0)
    , channels(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef uint64_t _num_detections_type;
  _num_detections_type num_detections;

   typedef std::vector<uint64_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint64_t>> _channels_type;
  _channels_type channels;





  typedef boost::shared_ptr< ::mrs_msgs::SxdHistogram_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::SxdHistogram_<ContainerAllocator> const> ConstPtr;

}; // struct SxdHistogram_

typedef ::mrs_msgs::SxdHistogram_<std::allocator<void> > SxdHistogram;

typedef boost::shared_ptr< ::mrs_msgs::SxdHistogram > SxdHistogramPtr;
typedef boost::shared_ptr< ::mrs_msgs::SxdHistogram const> SxdHistogramConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::SxdHistogram_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::SxdHistogram_<ContainerAllocator1> & lhs, const ::mrs_msgs::SxdHistogram_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.num_detections == rhs.num_detections &&
    lhs.channels == rhs.channels;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::SxdHistogram_<ContainerAllocator1> & lhs, const ::mrs_msgs::SxdHistogram_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SxdHistogram_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SxdHistogram_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SxdHistogram_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94b8a4b14e80fd9c3a0635e2400f1a2b";
  }

  static const char* value(const ::mrs_msgs::SxdHistogram_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94b8a4b14e80fd9cULL;
  static const uint64_t static_value2 = 0x3a0635e2400f1a2bULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/SxdHistogram";
  }

  static const char* value(const ::mrs_msgs::SxdHistogram_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
{
  static const char* value()
  {
    return "time stamp\n"
"uint64 num_detections\n"
"uint64[] channels\n"
;
  }

  static const char* value(const ::mrs_msgs::SxdHistogram_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.num_detections);
      stream.next(m.channels);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SxdHistogram_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::SxdHistogram_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::SxdHistogram_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "num_detections: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.num_detections);
    s << indent << "channels[]" << std::endl;
    for (size_t i = 0; i < v.channels.size(); ++i)
    {
      s << indent << "  channels[" << i << "]: ";
      Printer<uint64_t>::stream(s, indent + "  ", v.channels[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_SXDHISTOGRAM_H
