// Generated by gencpp from file mrs_msgs/Float64StampedSrv.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRV_H
#define MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRV_H

#include <ros/service_traits.h>


#include <mrs_msgs/Float64StampedSrvRequest.h>
#include <mrs_msgs/Float64StampedSrvResponse.h>


namespace mrs_msgs
{

struct Float64StampedSrv
{

typedef Float64StampedSrvRequest Request;
typedef Float64StampedSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Float64StampedSrv
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::Float64StampedSrv > {
  static const char* value()
  {
    return "b70212202386f89868e028f471ec5a6e";
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrv&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::Float64StampedSrv > {
  static const char* value()
  {
    return "mrs_msgs/Float64StampedSrv";
  }

  static const char* value(const ::mrs_msgs::Float64StampedSrv&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::Float64StampedSrvRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::Float64StampedSrv >
template<>
struct MD5Sum< ::mrs_msgs::Float64StampedSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::Float64StampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::Float64StampedSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::Float64StampedSrvRequest> should match
// service_traits::DataType< ::mrs_msgs::Float64StampedSrv >
template<>
struct DataType< ::mrs_msgs::Float64StampedSrvRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::Float64StampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::Float64StampedSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::Float64StampedSrvResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::Float64StampedSrv >
template<>
struct MD5Sum< ::mrs_msgs::Float64StampedSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::Float64StampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::Float64StampedSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::Float64StampedSrvResponse> should match
// service_traits::DataType< ::mrs_msgs::Float64StampedSrv >
template<>
struct DataType< ::mrs_msgs::Float64StampedSrvResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::Float64StampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::Float64StampedSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_FLOAT64STAMPEDSRV_H
