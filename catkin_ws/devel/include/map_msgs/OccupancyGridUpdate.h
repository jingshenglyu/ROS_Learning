// Generated by gencpp from file map_msgs/OccupancyGridUpdate.msg
// DO NOT EDIT!


#ifndef MAP_MSGS_MESSAGE_OCCUPANCYGRIDUPDATE_H
#define MAP_MSGS_MESSAGE_OCCUPANCYGRIDUPDATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace map_msgs
{
template <class ContainerAllocator>
struct OccupancyGridUpdate_
{
  typedef OccupancyGridUpdate_<ContainerAllocator> Type;

  OccupancyGridUpdate_()
    : header()
    , x(0)
    , y(0)
    , width(0)
    , height(0)
    , data()  {
    }
  OccupancyGridUpdate_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , x(0)
    , y(0)
    , width(0)
    , height(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _x_type;
  _x_type x;

   typedef int32_t _y_type;
  _y_type y;

   typedef uint32_t _width_type;
  _width_type width;

   typedef uint32_t _height_type;
  _height_type height;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> const> ConstPtr;

}; // struct OccupancyGridUpdate_

typedef ::map_msgs::OccupancyGridUpdate_<std::allocator<void> > OccupancyGridUpdate;

typedef boost::shared_ptr< ::map_msgs::OccupancyGridUpdate > OccupancyGridUpdatePtr;
typedef boost::shared_ptr< ::map_msgs::OccupancyGridUpdate const> OccupancyGridUpdateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace map_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/melodic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'map_msgs': ['/home/jingsheng/ROS_Learning/catkin_ws/src/navigation_msgs/map_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b295be292b335c34718bd939deebe1c9";
  }

  static const char* value(const ::map_msgs::OccupancyGridUpdate_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb295be292b335c34ULL;
  static const uint64_t static_value2 = 0x718bd939deebe1c9ULL;
};

template<class ContainerAllocator>
struct DataType< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "map_msgs/OccupancyGridUpdate";
  }

  static const char* value(const ::map_msgs::OccupancyGridUpdate_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"int32 x\n"
"int32 y\n"
"uint32 width\n"
"uint32 height\n"
"int8[] data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::map_msgs::OccupancyGridUpdate_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OccupancyGridUpdate_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::map_msgs::OccupancyGridUpdate_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::map_msgs::OccupancyGridUpdate_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
    s << indent << "width: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.height);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAP_MSGS_MESSAGE_OCCUPANCYGRIDUPDATE_H
