// Generated by gencpp from file mrs_msgs/NimbroTestSrv.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_NIMBROTESTSRV_H
#define MRS_MSGS_MESSAGE_NIMBROTESTSRV_H

#include <ros/service_traits.h>


#include <mrs_msgs/NimbroTestSrvRequest.h>
#include <mrs_msgs/NimbroTestSrvResponse.h>


namespace mrs_msgs
{

struct NimbroTestSrv
{

typedef NimbroTestSrvRequest Request;
typedef NimbroTestSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct NimbroTestSrv
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::NimbroTestSrv > {
  static const char* value()
  {
    return "d75faa959a02195d82deada15533aecd";
  }

  static const char* value(const ::mrs_msgs::NimbroTestSrv&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::NimbroTestSrv > {
  static const char* value()
  {
    return "mrs_msgs/NimbroTestSrv";
  }

  static const char* value(const ::mrs_msgs::NimbroTestSrv&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::NimbroTestSrvRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::NimbroTestSrv >
template<>
struct MD5Sum< ::mrs_msgs::NimbroTestSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::NimbroTestSrv >::value();
  }
  static const char* value(const ::mrs_msgs::NimbroTestSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::NimbroTestSrvRequest> should match
// service_traits::DataType< ::mrs_msgs::NimbroTestSrv >
template<>
struct DataType< ::mrs_msgs::NimbroTestSrvRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::NimbroTestSrv >::value();
  }
  static const char* value(const ::mrs_msgs::NimbroTestSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::NimbroTestSrvResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::NimbroTestSrv >
template<>
struct MD5Sum< ::mrs_msgs::NimbroTestSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::NimbroTestSrv >::value();
  }
  static const char* value(const ::mrs_msgs::NimbroTestSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::NimbroTestSrvResponse> should match
// service_traits::DataType< ::mrs_msgs::NimbroTestSrv >
template<>
struct DataType< ::mrs_msgs::NimbroTestSrvResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::NimbroTestSrv >::value();
  }
  static const char* value(const ::mrs_msgs::NimbroTestSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_NIMBROTESTSRV_H