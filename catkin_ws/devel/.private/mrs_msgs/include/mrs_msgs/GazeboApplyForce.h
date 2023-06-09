// Generated by gencpp from file mrs_msgs/GazeboApplyForce.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_GAZEBOAPPLYFORCE_H
#define MRS_MSGS_MESSAGE_GAZEBOAPPLYFORCE_H

#include <ros/service_traits.h>


#include <mrs_msgs/GazeboApplyForceRequest.h>
#include <mrs_msgs/GazeboApplyForceResponse.h>


namespace mrs_msgs
{

struct GazeboApplyForce
{

typedef GazeboApplyForceRequest Request;
typedef GazeboApplyForceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GazeboApplyForce
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::GazeboApplyForce > {
  static const char* value()
  {
    return "77ac0ae8a686941daaff7f70c849280e";
  }

  static const char* value(const ::mrs_msgs::GazeboApplyForce&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::GazeboApplyForce > {
  static const char* value()
  {
    return "mrs_msgs/GazeboApplyForce";
  }

  static const char* value(const ::mrs_msgs::GazeboApplyForce&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::GazeboApplyForceRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::GazeboApplyForce >
template<>
struct MD5Sum< ::mrs_msgs::GazeboApplyForceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::GazeboApplyForce >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboApplyForceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::GazeboApplyForceRequest> should match
// service_traits::DataType< ::mrs_msgs::GazeboApplyForce >
template<>
struct DataType< ::mrs_msgs::GazeboApplyForceRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::GazeboApplyForce >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboApplyForceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::GazeboApplyForceResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::GazeboApplyForce >
template<>
struct MD5Sum< ::mrs_msgs::GazeboApplyForceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::GazeboApplyForce >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboApplyForceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::GazeboApplyForceResponse> should match
// service_traits::DataType< ::mrs_msgs::GazeboApplyForce >
template<>
struct DataType< ::mrs_msgs::GazeboApplyForceResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::GazeboApplyForce >::value();
  }
  static const char* value(const ::mrs_msgs::GazeboApplyForceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_GAZEBOAPPLYFORCE_H
