// Generated by gencpp from file mrs_msgs/GetPathSrv.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GETPATHSRV_H
#define MRS_MSGS_MESSAGE_GETPATHSRV_H

#include <ros/service_traits.h>


#include <mrs_msgs/GetPathSrvRequest.h>
#include <mrs_msgs/GetPathSrvResponse.h>


namespace mrs_msgs
{

struct GetPathSrv
{

typedef GetPathSrvRequest Request;
typedef GetPathSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetPathSrv
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::GetPathSrv > {
  static const char* value()
  {
    return "2a60d1d5c00a767af0cb4448e8a7d3af";
  }

  static const char* value(const ::mrs_msgs::GetPathSrv&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::GetPathSrv > {
  static const char* value()
  {
    return "mrs_msgs/GetPathSrv";
  }

  static const char* value(const ::mrs_msgs::GetPathSrv&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::GetPathSrvRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::GetPathSrv >
template<>
struct MD5Sum< ::mrs_msgs::GetPathSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::GetPathSrv >::value();
  }
  static const char* value(const ::mrs_msgs::GetPathSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::GetPathSrvRequest> should match
// service_traits::DataType< ::mrs_msgs::GetPathSrv >
template<>
struct DataType< ::mrs_msgs::GetPathSrvRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::GetPathSrv >::value();
  }
  static const char* value(const ::mrs_msgs::GetPathSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::GetPathSrvResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::GetPathSrv >
template<>
struct MD5Sum< ::mrs_msgs::GetPathSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::GetPathSrv >::value();
  }
  static const char* value(const ::mrs_msgs::GetPathSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::GetPathSrvResponse> should match
// service_traits::DataType< ::mrs_msgs::GetPathSrv >
template<>
struct DataType< ::mrs_msgs::GetPathSrvResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::GetPathSrv >::value();
  }
  static const char* value(const ::mrs_msgs::GetPathSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GETPATHSRV_H