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

  # Controls
  ControllerStatus.msg
  Status.msg # Old controls
  Thrusters.msg

  # ASV2
  LARS.msg
  LARSStat.msg

  # ASV3
  AcousticsActuationState.msg # UInt8.msg + consts for acoustics actuation state
  ASVHeartbeat.msg            # UInt32.msg + consts for asv heartbeat
  ASVEStopState.msg            # UInt8.msg + consts for asv estop
  ControlLink.msg
  ESC.msg
  POPB.msg          # UInt16.msg + consts for asv power status
  POSBStat.msg
  ShooterState.msg  # UInt8.msg + consts for ball shooter
  DTLSState.msg     # UInt8.msg + consts for dtls

  # AUV3
  AUV3PowerStatus.msg # UInt16.msg + consts for AUV3PowerStatus power status
  AUV3Heartbeat.msg   # UInt32.msg + consts for auv3 heartbeat

  # AUV4
  AUV4Heartbeat.msg       # UInt32.msg + consts for auv4 heartbeat
  AUV4ActuationState.msg  # UInt8.msg + consts for auv4 actuation
  AUV4PowerStatus.msg     # UInt16.msg + consts for auv4 power status

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
  ClusteredCloud.msg
  ClusteredClouds.msg

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

  # Image Matching
  Keypoint.msg
  KeypointsDict.msg

  # RobotX
  SearchAndReport.msg
  Wildlife.msg
  BasicGPS.msg
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
  TareAtmosphericPressure.srv

  # Controls
  Autotuner.srv
  Controller.srv
  ResetPose.srv
  destination.srv
  navigate2d.srv
  EncircleTraj.srv
  Limits.srv
  Speed.srv
  SplineTraj.srv

  # ASV2
  LARSControl.srv

  # Service for Actuation related msgs
  Actuation.srv

  PowerControl.srv

  # Sonar
  SonarRange.srv
  toggle.srv

  # UAV
  FlightState.srv
  SetSearchAndReportStatus.srv
  SetUInt8Status.srv
  SetWildlifeStatus.srv
  SetGPIO.srv

  # Vision
  MLDetector.srv
  ArucoActivation.srv

  # Image Matching
  ClearBuffer.srv
  MatchImages.srv
  MatchToTemplate.srv
  RegisterImage.srv
  IMPoseEstimatorGetTemplates.srv
  IMPoseEstimatorRegisterTemplate.srv
  IMPoseEstimatorToggleTemplate.srv
  IMPoseEstimatorConfig.srv

  # RobotX specific
  RobotxTaskStatus.srv
)

add_action_files(
  FILES

  # Controls
  Locomotion.action
  Path.action
  Waypoints.action

  ControlsInterface.action # GoTo with support for dynamic frames

  # UAV Controls
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
