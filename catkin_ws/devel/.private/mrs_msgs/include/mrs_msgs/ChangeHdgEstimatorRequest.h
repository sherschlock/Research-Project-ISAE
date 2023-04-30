// Generated by gencpp from file mrs_msgs/ChangeHdgEstimatorRequest.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_CHANGEHDGESTIMATORREQUEST_H
#define MRS_MSGS_MESSAGE_CHANGEHDGESTIMATORREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mrs_msgs/HeadingType.h>

namespace mrs_msgs
{
template <class ContainerAllocator>
struct ChangeHdgEstimatorRequest_
{
  typedef ChangeHdgEstimatorRequest_<ContainerAllocator> Type;

  ChangeHdgEstimatorRequest_()
    : estimator_type()  {
    }
  ChangeHdgEstimatorRequest_(const ContainerAllocator& _alloc)
    : estimator_type(_alloc)  {
  (void)_alloc;
    }



   typedef  ::mrs_msgs::HeadingType_<ContainerAllocator>  _estimator_type_type;
  _estimator_type_type estimator_type;





  typedef boost::shared_ptr< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeHdgEstimatorRequest_

typedef ::mrs_msgs::ChangeHdgEstimatorRequest_<std::allocator<void> > ChangeHdgEstimatorRequest;

typedef boost::shared_ptr< ::mrs_msgs::ChangeHdgEstimatorRequest > ChangeHdgEstimatorRequestPtr;
typedef boost::shared_ptr< ::mrs_msgs::ChangeHdgEstimatorRequest const> ChangeHdgEstimatorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator2> & rhs)
{
  return lhs.estimator_type == rhs.estimator_type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator1> & lhs, const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf627e7d643f627937770174d86844fa";
  }

  static const char* value(const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf627e7d643f6279ULL;
  static const uint64_t static_value2 = 0x37770174d86844faULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/ChangeHdgEstimatorRequest";
  }

  static const char* value(const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/HeadingType estimator_type\n"
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
;
  }

  static const char* value(const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.estimator_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeHdgEstimatorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::ChangeHdgEstimatorRequest_<ContainerAllocator>& v)
  {
    s << indent << "estimator_type: ";
    s << std::endl;
    Printer< ::mrs_msgs::HeadingType_<ContainerAllocator> >::stream(s, indent + "  ", v.estimator_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_CHANGEHDGESTIMATORREQUEST_H
