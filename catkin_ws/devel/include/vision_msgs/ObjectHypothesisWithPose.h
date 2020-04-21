// Generated by gencpp from file vision_msgs/ObjectHypothesisWithPose.msg
// DO NOT EDIT!


#ifndef VISION_MSGS_MESSAGE_OBJECTHYPOTHESISWITHPOSE_H
#define VISION_MSGS_MESSAGE_OBJECTHYPOTHESISWITHPOSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseWithCovariance.h>

namespace vision_msgs
{
template <class ContainerAllocator>
struct ObjectHypothesisWithPose_
{
  typedef ObjectHypothesisWithPose_<ContainerAllocator> Type;

  ObjectHypothesisWithPose_()
    : id()
    , score(0.0)
    , pose()  {
    }
  ObjectHypothesisWithPose_(const ContainerAllocator& _alloc)
    : id(_alloc)
    , score(0.0)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef double _score_type;
  _score_type score;

   typedef  ::geometry_msgs::PoseWithCovariance_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectHypothesisWithPose_

typedef ::vision_msgs::ObjectHypothesisWithPose_<std::allocator<void> > ObjectHypothesisWithPose;

typedef boost::shared_ptr< ::vision_msgs::ObjectHypothesisWithPose > ObjectHypothesisWithPosePtr;
typedef boost::shared_ptr< ::vision_msgs::ObjectHypothesisWithPose const> ObjectHypothesisWithPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'vision_msgs': ['/home/jingsheng/ROS_Learning/catkin_ws/src/vision_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "33f27ec2eb451c31670b819827352622";
  }

  static const char* value(const ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x33f27ec2eb451c31ULL;
  static const uint64_t static_value2 = 0x670b819827352622ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_msgs/ObjectHypothesisWithPose";
  }

  static const char* value(const ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# An object hypothesis that contains position information.\n"
"\n"
"# The unique ID of the object class. To get additional information about\n"
"#   this ID, such as its human-readable class name, listeners should perform a\n"
"#   lookup in a metadata database. See vision_msgs/VisionInfo.msg for more detail.\n"
"string id\n"
"\n"
"# The probability or confidence value of the detected object. By convention,\n"
"#   this value should lie in the range [0-1].\n"
"float64 score\n"
"\n"
"# The 6D pose of the object hypothesis. This pose should be\n"
"#   defined as the pose of some fixed reference point on the object, such a\n"
"#   the geometric center of the bounding box or the center of mass of the\n"
"#   object.\n"
"# Note that this pose is not stamped; frame information can be defined by\n"
"#   parent messages.\n"
"# Also note that different classes predicted for the same input data may have\n"
"#   different predicted 6D poses.\n"
"geometry_msgs/PoseWithCovariance pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseWithCovariance\n"
"# This represents a pose in free space with uncertainty.\n"
"\n"
"Pose pose\n"
"\n"
"# Row-major representation of the 6x6 covariance matrix\n"
"# The orientation parameters use a fixed-axis representation.\n"
"# In order, the parameters are:\n"
"# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n"
"float64[36] covariance\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.score);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectHypothesisWithPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_msgs::ObjectHypothesisWithPose_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "score: ";
    Printer<double>::stream(s, indent + "  ", v.score);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_MSGS_MESSAGE_OBJECTHYPOTHESISWITHPOSE_H
