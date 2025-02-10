cmake_minimum_required(VERSION 3.0.2)
project(bb_controls_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  roscpp
  rospy
  std_msgs
  geometry_msgs
  actionlib
  genmsg
  actionlib_msgs
)

add_message_files(
  DIRECTORY
    msg
  FILES
    Status.msg
    Thrusters.msg
    ControllerStatus.msg
    AllocatorStatus.msg
)

add_service_files(
  DIRECTORY
    srv
  FILES
    Autotuner.srv
    Controller.srv
    EncircleTraj.srv
    Limits.srv
    Speed.srv
    SplineTraj.srv
    Pause.srv
    ASV4AllocatorSelector.srv
    ASV4ControllerSelector.srv
)

add_action_files(
  DIRECTORY
    action
  FILES
    Locomotion.action
)

generate_messages(
  DEPENDENCIES
    std_msgs
    geometry_msgs
    actionlib_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
)