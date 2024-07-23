cmake_minimum_required(VERSION 3.8)
project(bb_asv_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)
set(message_files
  msg/ASVActuationState.msg
  msg/ASVControlLink.msg
  msg/ASVEStopState.msg
  msg/ASVHeartbeat.msg
  msg/ASVLogicStatus.msg
  msg/ASVMainHullStatus.msg
  msg/ASVMHPBStatus.msg
  msg/ASVShooterState.msg
  msg/ASVThrusterAzimuth.msg
  msg/MHPBControl.msg
  msg/BatteryHealth.msg
  msg/CalibrateActuators.msg
  msg/ESC.msg
)

set(service_files
  srv/MHPBChannelToggle.srv
  srv/MHPBChannelTrigger.srv
)

set(action_files
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)

  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)

  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
  rosidl_generate_interfaces(${PROJECT_NAME}
    ${message_files}
    ${service_files}
    ${action_files}

    DEPENDENCIES builtin_interfaces std_msgs # action_msgs geometry_msgs
    ADD_LINTER_TESTS
  )
endif()

ament_export_dependencies(rosidl_default_runtime)
ament_package()
