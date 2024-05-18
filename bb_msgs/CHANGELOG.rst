^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package bb_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
1.2.3 (2023-02-07)
------------------
- Removed `data` field from enum messages

1.2.2 (2023-01-09)
------------------
- Migration to ROS2 following [ROS2 interface definition](https://design.ros2.org/articles/interface_definition.html)
- Constants all uppercase, fields all snake case, messages all PascalCase
- Change all std_msgs/FloatXX etc in services to builtins. Either stick with this or create new message types
- Remove duplicate entries in CMakeLists.txt e.g. srv/Actuation etc.
0.2.5 (2023-05-14)
------------------
- Adds messages from [controls repo](https://github.com/BumblebeeAS/controls)
- Adds `ControlsInterface.action`
- Updates `AUV4Heartbeat.msg` constants based on AUV4.1 can standards

0.2.4 (2023-01-31)
------------------
- Adds `TareAtmosphericPressure.srv`

0.2.3 (2023-01-25)
------------------
- Removed `data` field from enum messages

0.2.2 (2023-01-09)
------------------
- Minor fixes

0.2.1 (2022-08-14)
------------------
- Replace Heartbeat.msg with UInt32.msg
- Replace PowerStatus.msg with UInt16.msg
- Remove unused MLDetectedObject* message

0.2.0 (2022-08-06)
------------------
- Combine ASV3Heartbeat, AUV4Heartbeat etc into single Heartbeat message with a uint32 field.
- Add a ActuationState message to replace AUV4Actuation, DTLS, AcousticsActuation, BallShooter. (uint8 + booleam field)
- Replace the different Actuation services with a single Actuation.srv
- Add PowerStatus message to replace AUV4PowerStatus and POPB.

0.0.1 (2022-07-07)
------------------
- Merge asv_msgs into bb_msgs (Copy relevant messages to bb_msgs)
- Remove unused PMB.msg (can use Environment.msg instead)
- Change LED.msg to use single color field of the string hex value
  - allows us to use any rgb color instead of being limited to the colors in the msg file. also fixes the requirement of having exactly one of the booleans being true.
  - Represent the message efficiently with a single string instead of a boolean for each colour
  - avoid having to create a unique LED message for each set of desired colours
- Remove asv_msgs/Thruster (Replace with bb_msgs/Thrusters.msg)
- Add SBCTemp msg which contains CPUTemp and gpu temperature
- Combine ASV and AUV battery msg, to set unused fields as NaN
- Add prefix to vehicle specific messages - PowerControl.srv, Actuation.srv, Heartbeat.msg, PowerStatus.msg
