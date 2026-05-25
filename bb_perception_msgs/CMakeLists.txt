cmake_minimum_required(VERSION 3.5)
project(bb_perception_msgs VERSION 0.0.2)

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
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)

set(message_files
  msg/Shape.msg
  msg/VisionClass.msg
  msg/LabelInfo.msg
  msg/DetectorSource.msg
  msg/DetectedObject2D.msg
  msg/DetectedObject2DArray.msg
  msg/ObjectClassification.msg
  msg/ObjectHypothesis.msg
  msg/DetectedObject3D.msg
  msg/DetectedObject3DArray.msg
  msg/ObjectKinematics.msg

  msg/ClusteredCloud.msg
  msg/ClusteredClouds.msg
  msg/ClusterPoseResult.msg

  msg/PointCorrespondencesStamped.msg
)

set(service_files
  srv/ArucoToggleActivation.srv
  srv/ClusterPosesSrv.srv
  srv/ClusterTfSrv.srv
  srv/GetObjectCount.srv
  srv/GetPingCount.srv
  srv/IMPoseEstimatorToggleTemplate.srv
  srv/MLGetConfigs.srv
  srv/MLGetDetection.srv
  srv/MLSetConfig.srv
  srv/TrashToggleFrame.srv
)

set(action_files
  action/ClusterPosesAction.action
  action/ClusterTfAction.action
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  find_package(ament_cmake_lint_cmake REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  ${message_files}
  ${service_files}
  ${action_files}

  DEPENDENCIES builtin_interfaces std_msgs action_msgs geometry_msgs
  sensor_msgs
  ADD_LINTER_TESTS
)


ament_export_dependencies(rosidl_default_runtime)
ament_package()
