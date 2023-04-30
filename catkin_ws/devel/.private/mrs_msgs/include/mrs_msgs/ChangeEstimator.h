// Generated by gencpp from file mrs_msgs/ChangeEstimator.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_CHANGEESTIMATOR_H
#define MRS_MSGS_MESSAGE_CHANGEESTIMATOR_H

#include <ros/service_traits.h>


#include <mrs_msgs/ChangeEstimatorRequest.h>
#include <mrs_msgs/ChangeEstimatorResponse.h>


namespace mrs_msgs
{

struct ChangeEstimator
{

typedef ChangeEstimatorRequest Request;
typedef ChangeEstimatorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ChangeEstimator
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::ChangeEstimator > {
  static const char* value()
  {
    return "6a9b653bad05a218abe443442564de9a";
  }

  static const char* value(const ::mrs_msgs::ChangeEstimator&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::ChangeEstimator > {
  static const char* value()
  {
    return "mrs_msgs/ChangeEstimator";
  }

  static const char* value(const ::mrs_msgs::ChangeEstimator&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::ChangeEstimatorRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::ChangeEstimator >
template<>
struct MD5Sum< ::mrs_msgs::ChangeEstimatorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ChangeEstimator >::value();
  }
  static const char* value(const ::mrs_msgs::ChangeEstimatorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ChangeEstimatorRequest> should match
// service_traits::DataType< ::mrs_msgs::ChangeEstimator >
template<>
struct DataType< ::mrs_msgs::ChangeEstimatorRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ChangeEstimator >::value();
  }
  static const char* value(const ::mrs_msgs::ChangeEstimatorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::ChangeEstimatorResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::ChangeEstimator >
template<>
struct MD5Sum< ::mrs_msgs::ChangeEstimatorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::ChangeEstimator >::value();
  }
  static const char* value(const ::mrs_msgs::ChangeEstimatorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::ChangeEstimatorResponse> should match
// service_traits::DataType< ::mrs_msgs::ChangeEstimator >
template<>
struct DataType< ::mrs_msgs::ChangeEstimatorResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::ChangeEstimator >::value();
  }
  static const char* value(const ::mrs_msgs::ChangeEstimatorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_CHANGEESTIMATOR_H
