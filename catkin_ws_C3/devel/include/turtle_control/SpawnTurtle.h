// Generated by gencpp from file turtle_control/SpawnTurtle.msg
// DO NOT EDIT!


#ifndef TURTLE_CONTROL_MESSAGE_SPAWNTURTLE_H
#define TURTLE_CONTROL_MESSAGE_SPAWNTURTLE_H

#include <ros/service_traits.h>


#include <turtle_control/SpawnTurtleRequest.h>
#include <turtle_control/SpawnTurtleResponse.h>


namespace turtle_control
{

struct SpawnTurtle
{

typedef SpawnTurtleRequest Request;
typedef SpawnTurtleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SpawnTurtle
} // namespace turtle_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turtle_control::SpawnTurtle > {
  static const char* value()
  {
    return "a2d95187599909408d4f95d87ec9484c";
  }

  static const char* value(const ::turtle_control::SpawnTurtle&) { return value(); }
};

template<>
struct DataType< ::turtle_control::SpawnTurtle > {
  static const char* value()
  {
    return "turtle_control/SpawnTurtle";
  }

  static const char* value(const ::turtle_control::SpawnTurtle&) { return value(); }
};


// service_traits::MD5Sum< ::turtle_control::SpawnTurtleRequest> should match
// service_traits::MD5Sum< ::turtle_control::SpawnTurtle >
template<>
struct MD5Sum< ::turtle_control::SpawnTurtleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turtle_control::SpawnTurtle >::value();
  }
  static const char* value(const ::turtle_control::SpawnTurtleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtle_control::SpawnTurtleRequest> should match
// service_traits::DataType< ::turtle_control::SpawnTurtle >
template<>
struct DataType< ::turtle_control::SpawnTurtleRequest>
{
  static const char* value()
  {
    return DataType< ::turtle_control::SpawnTurtle >::value();
  }
  static const char* value(const ::turtle_control::SpawnTurtleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turtle_control::SpawnTurtleResponse> should match
// service_traits::MD5Sum< ::turtle_control::SpawnTurtle >
template<>
struct MD5Sum< ::turtle_control::SpawnTurtleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turtle_control::SpawnTurtle >::value();
  }
  static const char* value(const ::turtle_control::SpawnTurtleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtle_control::SpawnTurtleResponse> should match
// service_traits::DataType< ::turtle_control::SpawnTurtle >
template<>
struct DataType< ::turtle_control::SpawnTurtleResponse>
{
  static const char* value()
  {
    return DataType< ::turtle_control::SpawnTurtle >::value();
  }
  static const char* value(const ::turtle_control::SpawnTurtleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURTLE_CONTROL_MESSAGE_SPAWNTURTLE_H
