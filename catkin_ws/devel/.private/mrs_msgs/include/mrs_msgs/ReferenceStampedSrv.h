// Generated by gencpp from file mrs_msgs/ReferenceStampedSrv.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_REFERENCESTAMPEDSRV_H
#define MRS_MSGS_MESSAGE_REFERENCESTAMPEDSRV_H

#include <ros/service_traits.h>


#include <mrs_msgs/ReferenceStampedSrvRequest.h>
#include <mrs_msgs/ReferenceStampedSrvResponse.h>


namespace mrs_msgs
{

struct ReferenceStampedSrv
{

typedef ReferenceStampedSrvRequest Request;
typedef ReferenceStampedSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ReferenceStampedSrv
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::ReferenceStampedSrv > {
  static const char* value()
  {
    return "28cdbf41a017795fe55f4fe1bc97170e";
  }

  static const char* value(const ::mrs_msgs::ReferenceStampedSrv&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::ReferenceStampedSrv > {
  static const char* value()
  {
    return "mrs_msgs/ReferenceStampedSrv";
  }

  static const char* value(const ::mrs_msgs::ReferenceStampedSrv&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::ReferenceStampedSrvRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::ReferenceStampedSrv >
template<>
struct MD5Sum< ::mrs_msgs::ReferenceStampedSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ReferenceStampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceStampedSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ReferenceStampedSrvRequest> should match
// service_traits::DataType< ::mrs_msgs::ReferenceStampedSrv >
template<>
struct DataType< ::mrs_msgs::ReferenceStampedSrvRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ReferenceStampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceStampedSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::ReferenceStampedSrvResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::ReferenceStampedSrv >
template<>
struct MD5Sum< ::mrs_msgs::ReferenceStampedSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ReferenceStampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceStampedSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ReferenceStampedSrvResponse> should match
// service_traits::DataType< ::mrs_msgs::ReferenceStampedSrv >
template<>
struct DataType< ::mrs_msgs::ReferenceStampedSrvResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ReferenceStampedSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceStampedSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_REFERENCESTAMPEDSRV_H
