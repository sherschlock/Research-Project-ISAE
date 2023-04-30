// Generated by gencpp from file mrs_msgs/ReferenceSrv.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_REFERENCESRV_H
#define MRS_MSGS_MESSAGE_REFERENCESRV_H

#include <ros/service_traits.h>


#include <mrs_msgs/ReferenceSrvRequest.h>
#include <mrs_msgs/ReferenceSrvResponse.h>


namespace mrs_msgs
{

struct ReferenceSrv
{

typedef ReferenceSrvRequest Request;
typedef ReferenceSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ReferenceSrv
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::ReferenceSrv > {
  static const char* value()
  {
    return "d2bd04078f0e6934b3b579215143a7f4";
  }

  static const char* value(const ::mrs_msgs::ReferenceSrv&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::ReferenceSrv > {
  static const char* value()
  {
    return "mrs_msgs/ReferenceSrv";
  }

  static const char* value(const ::mrs_msgs::ReferenceSrv&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::ReferenceSrvRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::ReferenceSrv >
template<>
struct MD5Sum< ::mrs_msgs::ReferenceSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ReferenceSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ReferenceSrvRequest> should match
// service_traits::DataType< ::mrs_msgs::ReferenceSrv >
template<>
struct DataType< ::mrs_msgs::ReferenceSrvRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ReferenceSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::ReferenceSrvResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::ReferenceSrv >
template<>
struct MD5Sum< ::mrs_msgs::ReferenceSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ReferenceSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ReferenceSrvResponse> should match
// service_traits::DataType< ::mrs_msgs::ReferenceSrv >
template<>
struct DataType< ::mrs_msgs::ReferenceSrvResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ReferenceSrv >::value();
  }
  static const char* value(const ::mrs_msgs::ReferenceSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_REFERENCESRV_H