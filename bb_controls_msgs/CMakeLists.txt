cmake_minimum_required(VERSION 3.8)
project(bb_controls_msgs VERSION 0.0.1)

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
find_package(std_msgs REQUIRED)

set(message_files
  msg/Status.msg
  msg/Thrusters.msg
  msg/ControllerStatus.msg
  msg/AllocatorStatus.msg
  msg/ThrusterForces.msg
  # msg/ModelControllerConfig.msg // Removed this message since it is not in any pub/sub
)

set(service_files
  srv/Autotuner.srv
  srv/Controller.srv
  srv/EncircleTraj.srv
  srv/Limits.srv
  srv/Speed.srv
  srv/SplineTraj.srv
  srv/Pause.srv
  srv/ASV4AllocatorSelector.srv
  srv/ASV4ControllerSelector.srv
)

set(action_files
  action/Locomotion.action
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  ${message_files}
  ${service_files}
  ${action_files}

  DEPENDENCIES builtin_interfaces std_msgs action_msgs geometry_msgs
  ADD_LINTER_TESTS
)


ament_export_dependencies(rosidl_default_runtime)
ament_package()
