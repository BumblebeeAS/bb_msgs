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

  # Controls
  Status.msg
  Thrusters.msg

  # ASV2 
  LARS.msg
  LARSStat.msg

  # ASV3
  AcousticsActuationState.msg
  ASV3Heartbeat.msg
  ControlLink.msg
  ESC.msg
  POPB.msg
  POSBStat.msg
  ShooterState.msg
  DTLSState.msg

  # AUV3
  AUV3PowerStatus.msg
  AUV3Heartbeat.msg

  # AUV4
  AUV4Heartbeat.msg
  AUV4PowerStatus.msg

  # robotX
  LightSequence.msg
  LightTower.msg
  Shape.msg

  # Sensors
  Battery.msg
  CPUTemp.msg
  SBCTemp.msg
  Environment.msg
  WindSpeed.msg

  # Lidar
  LidarBoundingBox.msg
  LidarBoundingBoxes.msg

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
  MLDetectedObject.msg
  MLDetectedObjects.msg

)

## Generate services in the 'srv' folder
add_service_files(
  FILES

  # Acoustics
  AcousticsControl.srv

  # CAN
  LED.srv

  # Controls
  Controller.srv
  ResetPose.srv
  destination.srv
  navigate2d.srv

  # ASV2
  LARSControl.srv

  # ASV3
  AcousticsActuation.srv
  POPBControl.srv
  Shooter.srv
  DTLSControl.srv

  # AUV3
  AUV3PowerControl.srv

  # AUV4
  AUV4Actuation.srv
  AUV4PowerControl.srv

  # Sonar
  SonarRange.srv
  toggle.srv

  # UAV
  FlightState.srv

  # Vision
  MLDetector.srv
)

add_action_files(
  FILES

  # Controls
  Locomotion.action
  Path.action
  Waypoints.action

  # UAV Controls
  Gimbal.action
  MoveToCartesianCoordinates.action
  MoveToGPSCoordinates.action

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