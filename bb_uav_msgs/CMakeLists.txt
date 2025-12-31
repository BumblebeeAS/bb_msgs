cmake_minimum_required(VERSION 3.8)
project(bb_uav_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

set(message_files
  msg/GoToFeedback.msg
  msg/GoToResult.msg
  msg/Jellyfish2Pose.msg
  msg/JellyfishHeartbeat.msg
  msg/Acceleration.msg
)

set(service_files
  srv/LatLonConverter.srv
  srv/SearchReportConverter.srv
  srv/StateTransition.srv
  srv/SetHeightOffset.srv
  srv/ChangeOffboardControlMode.srv
)

set(action_files
  action/GoToPosition.action
  action/Takeoff.action
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
  DEPENDENCIES ${${PROJECT_NAME}_FOUND_BUILD_DEPENDS}
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
