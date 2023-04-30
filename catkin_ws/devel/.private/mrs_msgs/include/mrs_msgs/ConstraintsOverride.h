// Generated by gencpp from file mrs_msgs/ConstraintsOverride.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_CONSTRAINTSOVERRIDE_H
#define MRS_MSGS_MESSAGE_CONSTRAINTSOVERRIDE_H

#include <ros/service_traits.h>


#include <mrs_msgs/ConstraintsOverrideRequest.h>
#include <mrs_msgs/ConstraintsOverrideResponse.h>


namespace mrs_msgs
{

struct ConstraintsOverride
{

typedef ConstraintsOverrideRequest Request;
typedef ConstraintsOverrideResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ConstraintsOverride
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::ConstraintsOverride > {
  static const char* value()
  {
    return "56bf1beffb328c1889ee5151b25df6dc";
  }

  static const char* value(const ::mrs_msgs::ConstraintsOverride&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::ConstraintsOverride > {
  static const char* value()
  {
    return "mrs_msgs/ConstraintsOverride";
  }

  static const char* value(const ::mrs_msgs::ConstraintsOverride&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::ConstraintsOverrideRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::ConstraintsOverride >
template<>
struct MD5Sum< ::mrs_msgs::ConstraintsOverrideRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ConstraintsOverride >::value();
  }
  static const char* value(const ::mrs_msgs::ConstraintsOverrideRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ConstraintsOverrideRequest> should match
// service_traits::DataType< ::mrs_msgs::ConstraintsOverride >
template<>
struct DataType< ::mrs_msgs::ConstraintsOverrideRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ConstraintsOverride >::value();
  }
  static const char* value(const ::mrs_msgs::ConstraintsOverrideRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::ConstraintsOverrideResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::ConstraintsOverride >
template<>
struct MD5Sum< ::mrs_msgs::ConstraintsOverrideResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ConstraintsOverride >::value();
  }
  static const char* value(const ::mrs_msgs::ConstraintsOverrideResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ConstraintsOverrideResponse> should match
// service_traits::DataType< ::mrs_msgs::ConstraintsOverride >
template<>
struct DataType< ::mrs_msgs::ConstraintsOverrideResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ConstraintsOverride >::value();
  }
  static const char* value(const ::mrs_msgs::ConstraintsOverrideResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_CONSTRAINTSOVERRIDE_H