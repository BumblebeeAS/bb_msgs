cmake_minimum_required(VERSION 3.0.2)
project(bb_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  actionlib_msgs
  geometry_msgs
  nav_msgs
  sensor_msgs
  std_msgs
)

add_message_files(
  FILES

  # Acoustics
  Ping.msg
  
  # CAN
  Battery.msg
  CPUTemp.msg
  Environment.msg
  Heartbeat.msg
  PowerStatus.msg
  PMB.msg

  # Controls
  Status.msg
  Thrusters.msg

  # DVL
  beam.msg
  beamMatrixStamped.msg

  # IMU
  compass_data.msg
  imu_data.msg
  raw_magnetics.msg

  # Sonar
  SurveyorInfo.msg
  SonarInfo.msg
  SonarWorld.msg

  # Vision
  DetectedObject.msg
  DetectedObjects.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES

  # Acoustics
  AcousticsControl.srv

  # CAN
  Actuation.srv
  LED.srv
  PowerControl.srv

  # Controls
  Controller.srv
  ResetPose.srv
  destination.srv
  navigate2d.srv

  # Sonar
  SonarRange.srv
  toggle.srv

  # Vision
  MLDetector.srv
)

add_action_files(
  FILES

  # Controls
  Locomotion.action
  Path.action
  Waypoints.action

  # Mission Planner
  Mission.action
)

generate_messages(
  DEPENDENCIES
  geometry_msgs
  nav_msgs
  sensor_msgs
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime actionlib_msgs geometry_msgs nav_msgs sensor_msgs std_msgs
)
