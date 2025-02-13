cmake_minimum_required(VERSION 3.0.2)
project(bb_auv_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  roscpp
  rospy
  geometry_msgs
)

add_service_files(
  DIRECTORY
    srv
  FILES
    SetPose.srv
    TareAtmosphericPressure.srv
    ResetPose.srv
)

generate_messages(
  DEPENDENCIES
    geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
)
