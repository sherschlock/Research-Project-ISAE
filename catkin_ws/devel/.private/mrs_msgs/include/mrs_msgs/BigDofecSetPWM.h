// Generated by gencpp from file mrs_msgs/BigDofecSetPWM.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_BIGDOFECSETPWM_H
#define MRS_MSGS_MESSAGE_BIGDOFECSETPWM_H

#include <ros/service_traits.h>


#include <mrs_msgs/BigDofecSetPWMRequest.h>
#include <mrs_msgs/BigDofecSetPWMResponse.h>


namespace mrs_msgs
{

struct BigDofecSetPWM
{

typedef BigDofecSetPWMRequest Request;
typedef BigDofecSetPWMResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BigDofecSetPWM
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::BigDofecSetPWM > {
  static const char* value()
  {
    return "520a4ed6517f96208c7031ef1b57775b";
  }

  static const char* value(const ::mrs_msgs::BigDofecSetPWM&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::BigDofecSetPWM > {
  static const char* value()
  {
    return "mrs_msgs/BigDofecSetPWM";
  }

  static const char* value(const ::mrs_msgs::BigDofecSetPWM&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::BigDofecSetPWMRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::BigDofecSetPWM >
template<>
struct MD5Sum< ::mrs_msgs::BigDofecSetPWMRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::BigDofecSetPWM >::value();
  }
  static const char* value(const ::mrs_msgs::BigDofecSetPWMRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::BigDofecSetPWMRequest> should match
// service_traits::DataType< ::mrs_msgs::BigDofecSetPWM >
template<>
struct DataType< ::mrs_msgs::BigDofecSetPWMRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::BigDofecSetPWM >::value();
  }
  static const char* value(const ::mrs_msgs::BigDofecSetPWMRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::BigDofecSetPWMResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::BigDofecSetPWM >
template<>
struct MD5Sum< ::mrs_msgs::BigDofecSetPWMResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::BigDofecSetPWM >::value();
  }
  static const char* value(const ::mrs_msgs::BigDofecSetPWMResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::BigDofecSetPWMResponse> should match
// service_traits::DataType< ::mrs_msgs::BigDofecSetPWM >
template<>
struct DataType< ::mrs_msgs::BigDofecSetPWMResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::BigDofecSetPWM >::value();
  }
  static const char* value(const ::mrs_msgs::BigDofecSetPWMResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_BIGDOFECSETPWM_H
