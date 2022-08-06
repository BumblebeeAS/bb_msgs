^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package bb_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
0.2.0 (2022-08-06)
------------------
- Combine ASV3Heartbeat, AUV4Heartbeat etc into single Heartbeat message with a uint32 field.
- Add a ActuationState message to replace AUV4Actuation, DTLS, AcousticsActuation, BallShooter.
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