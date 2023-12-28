cmake_minimum_required(VERSION 3.5)
project(bb_msgs)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(action_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

set(message_files
  # Acoustics
  msg/Ping.msg

  # Controls
  msg/Status.msg
  msg/Thrusters.msg
  msg/ControllerStatus.msg
  msg/ModelControllerConfig.msg

  # ASV2
  msg/LARS.msg
  msg/LARSStat.msg

  # ASV3
  msg/AcousticsActuationState.msg # UInt8.msg + consts for acoustics actuation state
  msg/ASVHeartbeat.msg            # UInt32.msg + consts for asv heartbeat
  msg/ASVEStopState.msg            # UInt8.msg + consts for asv estop
  msg/ControlLink.msg
  msg/ESC.msg
  msg/POPB.msg          # UInt16.msg + consts for asv power status
  msg/POSBStat.msg
  msg/ShooterState.msg  # UInt8.msg + consts for ball shooter
  msg/DTLSState.msg     # UInt8.msg + consts for dtls
  msg/ASVMainHullStatus.msg # main hull temperature / humidity
  msg/ASVMHPBStatus.msg
  msg/ASVLogicStatus.msg          # UInt16.msg + consts for asv logic control

  # AUV3
  msg/AUV3PowerStatus.msg # UInt16.msg + consts for AUV3PowerStatus power status
  msg/AUV3Heartbeat.msg   # UInt32.msg + consts for auv3 heartbeat

  # AUV4
  msg/AUV4Heartbeat.msg       # UInt32.msg + consts for auv4 heartbeat
  msg/AUV4ActuationState.msg  # UInt8.msg + consts for auv4 actuation
  msg/AUV4PowerStatus.msg     # UInt16.msg + consts for auv4 power status

  # robotX
  msg/LightSequence.msg
  msg/LightTower.msg
  msg/Shape.msg
 
  # Sensors
  msg/Battery.msg
  msg/BatteryHealth.msg
  msg/CPUTemp.msg
  msg/SBCTemp.msg
  msg/Environment.msg
  msg/WindSpeed.msg

  msg/ButtonStatus.msg
 
  # Lidar
  msg/LidarBoundingBox.msg
  msg/LidarBoundingBoxes.msg
  msg/ClusteredCloud.msg
  msg/ClusteredClouds.msg

  # DVL
  msg/Beam.msg
  msg/BeamMatrixStamped.msg
 
  # IMU
  msg/CompassData.msg
  msg/ImuData.msg
  msg/RawMagnetics.msg
 
  # Sonar
  msg/SurveyorInfo.msg
  msg/SonarInfo.msg
  msg/SonarWorld.msg
 
  # Vision
  msg/DetectedObject.msg
  msg/DetectedObjects.msg
  msg/DetectedObjectsStamped.msg
  msg/PolygonArrayStamped.msg

  # Image Matching
  msg/Keypoint.msg
  msg/KeypointsDict.msg
 
  # RobotX
  msg/SearchAndReport.msg
  msg/Wildlife.msg
  msg/BasicGPS.msg

  # Gazebo
  msg/GazeboModelState.msg

  # ControlsInterface
  msg/PlannerFeedbackMsg.msg
  msg/SetPoint.msg
  msg/SetPoints.msg
)

set(service_files
## Generate services in the 'srv' folder
  # Acoustics
  srv/AcousticsControl.srv

  # CAN
  srv/Actuation.srv
  srv/LED.srv
  srv/PowerControl.srv
  srv/TareAtmosphericPressure.srv

  # Controls
  srv/Autotuner.srv
  srv/Controller.srv
  srv/ResetPose.srv
  srv/SetPose.srv
  srv/Destination.srv
  srv/Navigate2d.srv
  srv/SetCovariance.srv
  srv/EncircleTraj.srv
  srv/Limits.srv
  srv/Speed.srv
  srv/SplineTraj.srv

  # ASV2
  srv/LARSControl.srv

  # Sonar
  srv/SonarRange.srv
  srv/Toggle.srv

  # UAV
  srv/FlightState.srv
  srv/SetSearchAndReportStatus.srv
  srv/SetUInt8Status.srv
  srv/SetWildlifeStatus.srv
  srv/SetGPIO.srv

  # Vision
  srv/MLDetector.srv
  srv/ArucoActivation.srv

  # Image Matching
  srv/ClearBuffer.srv
  srv/MatchImages.srv
  srv/MatchToTemplate.srv
  srv/RegisterImage.srv
  srv/IMPoseEstimatorGetStatus.srv
  srv/IMPoseEstimatorGetTemplates.srv
  srv/IMPoseEstimatorRegisterTemplate.srv
  srv/IMPoseEstimatorToggleTemplate.srv
  srv/IMPoseEstimatorConfig.srv
  srv/IMPoseEstimatorUpdateKeypointMatches.srv

  srv/RelocalizeToObjectPosition.srv

  srv/ObstacleStorageQuery.srv
  srv/GetPlanToPose.srv
  srv/GetPlanThroughPoses.srv

  # Gazebo
  srv/GazeboSetModelState.srv

  # RobotX specific
  srv/RobotxTaskStatus.srv
)

set(action_files
  # Controls
  action/Locomotion.action
  action/Path.action
  action/Waypoints.action

  action/ControlsInterface.action
  action/Planner.action # GoTo with support for dynamic frames

  # UAV Controls
  action/MoveToCartesianCoordinates.action
  action/MoveToGPSCoordinates.action

  # Mission Planner
  action/Mission.action
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  ${message_files}
  ${service_files}
  ${action_files}
  
  DEPENDENCIES builtin_interfaces std_msgs action_msgs nav_msgs geometry_msgs sensor_msgs
  ADD_LINTER_TESTS
)


ament_export_dependencies(rosidl_default_runtime)
ament_package()
