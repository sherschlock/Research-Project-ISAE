// Generated by gencpp from file mrs_msgs/SpawnerDiagnostics.msg
// DO NOT EDIT!


#ifndef MRS_MSGS_MESSAGE_SPAWNERDIAGNOSTICS_H
#define MRS_MSGS_MESSAGE_SPAWNERDIAGNOSTICS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mrs_msgs
{
template <class ContainerAllocator>
struct SpawnerDiagnostics_
{
  typedef SpawnerDiagnostics_<ContainerAllocator> Type;

  SpawnerDiagnostics_()
    : spawn_called(false)
    , processing(false)
    , active_vehicles()
    , queued_vehicles()
    , queued_processes(0)  {
    }
  SpawnerDiagnostics_(const ContainerAllocator& _alloc)
    : spawn_called(false)
    , processing(false)
    , active_vehicles(_alloc)
    , queued_vehicles(_alloc)
    , queued_processes(0)  {
  (void)_alloc;
    }



   typedef uint8_t _spawn_called_type;
  _spawn_called_type spawn_called;

   typedef uint8_t _processing_type;
  _processing_type processing;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _active_vehicles_type;
  _active_vehicles_type active_vehicles;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _queued_vehicles_type;
  _queued_vehicles_type queued_vehicles;

   typedef uint8_t _queued_processes_type;
  _queued_processes_type queued_processes;





  typedef boost::shared_ptr< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct SpawnerDiagnostics_

typedef ::mrs_msgs::SpawnerDiagnostics_<std::allocator<void> > SpawnerDiagnostics;

typedef boost::shared_ptr< ::mrs_msgs::SpawnerDiagnostics > SpawnerDiagnosticsPtr;
typedef boost::shared_ptr< ::mrs_msgs::SpawnerDiagnostics const> SpawnerDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator2> & rhs)
{
  return lhs.spawn_called == rhs.spawn_called &&
    lhs.processing == rhs.processing &&
    lhs.active_vehicles == rhs.active_vehicles &&
    lhs.queued_vehicles == rhs.queued_vehicles &&
    lhs.queued_processes == rhs.queued_processes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator1> & lhs, const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mrs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "388186ee1e8df969bc4d4587fd373eb3";
  }

  static const char* value(const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x388186ee1e8df969ULL;
  static const uint64_t static_value2 = 0xbc4d4587fd373eb3ULL;
};

template<class ContainerAllocator>
struct DataType< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mrs_msgs/SpawnerDiagnostics";
  }

  static const char* value(const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool spawn_called\n"
"bool processing\n"
"string[] active_vehicles\n"
"string[] queued_vehicles\n"
"uint8 queued_processes\n"
;
  }

  static const char* value(const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.spawn_called);
      stream.next(m.processing);
      stream.next(m.active_vehicles);
      stream.next(m.queued_vehicles);
      stream.next(m.queued_processes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpawnerDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mrs_msgs::SpawnerDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "spawn_called: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.spawn_called);
    s << indent << "processing: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.processing);
    s << indent << "active_vehicles[]" << std::endl;
    for (size_t i = 0; i < v.active_vehicles.size(); ++i)
    {
      s << indent << "  active_vehicles[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.active_vehicles[i]);
    }
    s << indent << "queued_vehicles[]" << std::endl;
    for (size_t i = 0; i < v.queued_vehicles.size(); ++i)
    {
      s << indent << "  queued_vehicles[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.queued_vehicles[i]);
    }
    s << indent << "queued_processes: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.queued_processes);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MRS_MSGS_MESSAGE_SPAWNERDIAGNOSTICS_H
