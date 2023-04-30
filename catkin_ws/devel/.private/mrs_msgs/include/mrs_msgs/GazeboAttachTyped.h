// Generated by gencpp from file mrs_msgs/GazeboAttachTyped.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GAZEBOATTACHTYPED_H
#define MRS_MSGS_MESSAGE_GAZEBOATTACHTYPED_H

#include <ros/service_traits.h>


#include <mrs_msgs/GazeboAttachTypedRequest.h>
#include <mrs_msgs/GazeboAttachTypedResponse.h>


namespace mrs_msgs
{

struct GazeboAttachTyped
{

typedef GazeboAttachTypedRequest Request;
typedef GazeboAttachTypedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GazeboAttachTyped
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::GazeboAttachTyped > {
  static const char* value()
  {
    return "c8a200edf35f852bddb91566c6d0dc97";
  }

  static const char* value(const ::mrs_msgs::GazeboAttachTyped&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::GazeboAttachTyped > {
  static const char* value()
  {
    return "mrs_msgs/GazeboAttachTyped";
  }

  static const char* value(const ::mrs_msgs::GazeboAttachTyped&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::GazeboAttachTypedRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::GazeboAttachTyped >
template<>
struct MD5Sum< ::mrs_msgs::GazeboAttachTypedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::GazeboAttachTyped >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboAttachTypedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::GazeboAttachTypedRequest> should match
// service_traits::DataType< ::mrs_msgs::GazeboAttachTyped >
template<>
struct DataType< ::mrs_msgs::GazeboAttachTypedRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::GazeboAttachTyped >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboAttachTypedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::GazeboAttachTypedResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::GazeboAttachTyped >
template<>
struct MD5Sum< ::mrs_msgs::GazeboAttachTypedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::GazeboAttachTyped >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboAttachTypedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::GazeboAttachTypedResponse> should match
// service_traits::DataType< ::mrs_msgs::GazeboAttachTyped >
template<>
struct DataType< ::mrs_msgs::GazeboAttachTypedResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::GazeboAttachTyped >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboAttachTypedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GAZEBOATTACHTYPED_H
