// Generated by gencpp from file mrs_msgs/LedStripDriver.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_LEDSTRIPDRIVER_H
#define MRS_MSGS_MESSAGE_LEDSTRIPDRIVER_H

#include <ros/service_traits.h>


#include <mrs_msgs/LedStripDriverRequest.h>
#include <mrs_msgs/LedStripDriverResponse.h>


namespace mrs_msgs
{

struct LedStripDriver
{

typedef LedStripDriverRequest Request;
typedef LedStripDriverResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LedStripDriver
} // namespace mrs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mrs_msgs::LedStripDriver > {
  static const char* value()
  {
    return "699df7492006841ba00430a91859da78";
  }

  static const char* value(const ::mrs_msgs::LedStripDriver&) { return value(); }
};

template<>
struct DataType< ::mrs_msgs::LedStripDriver > {
  static const char* value()
  {
    return "mrs_msgs/LedStripDriver";
  }

  static const char* value(const ::mrs_msgs::LedStripDriver&) { return value(); }
};


// service_traits::MD5Sum< ::mrs_msgs::LedStripDriverRequest> should match
// service_traits::MD5Sum< ::mrs_msgs::LedStripDriver >
template<>
struct MD5Sum< ::mrs_msgs::LedStripDriverRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::LedStripDriver >::value();
  }
  static const char* value(const ::mrs_msgs::LedStripDriverRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::LedStripDriverRequest> should match
// service_traits::DataType< ::mrs_msgs::LedStripDriver >
template<>
struct DataType< ::mrs_msgs::LedStripDriverRequest>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::LedStripDriver >::value();
  }
  static const char* value(const ::mrs_msgs::LedStripDriverRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mrs_msgs::LedStripDriverResponse> should match
// service_traits::MD5Sum< ::mrs_msgs::LedStripDriver >
template<>
struct MD5Sum< ::mrs_msgs::LedStripDriverResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mrs_msgs::LedStripDriver >::value();
  }
  static const char* value(const ::mrs_msgs::LedStripDriverResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mrs_msgs::LedStripDriverResponse> should match
// service_traits::DataType< ::mrs_msgs::LedStripDriver >
template<>
struct DataType< ::mrs_msgs::LedStripDriverResponse>
{
  static const char* value()
  {
    return DataType< ::mrs_msgs::LedStripDriver >::value();
  }
  static const char* value(const ::mrs_msgs::LedStripDriverResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MRS_MSGS_MESSAGE_LEDSTRIPDRIVER_H
