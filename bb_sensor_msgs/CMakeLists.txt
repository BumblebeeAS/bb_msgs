cmake_minimum_required(VERSION 3.0.2)
project(bb_sensor_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  roscpp
  rospy
  std_msgs
)

add_message_files(
  DIRECTORY
    msg
  FILES
    Battery.msg
    Beam.msg
    BeamMatrixStamped.msg
    CPUTemp.msg
    ElectricalStats.msg
    Environment.msg
    Ping.msg
    SBCTemp.msg
    WindSpeed.msg
)

generate_messages(
  DEPENDENCIES
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
)
