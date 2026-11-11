# RobotX 2026 Task 4 (Advanced): a static hazard to keep out of until an AllClear.
# Relayed by the OCS from a robocommand.robotx.v1.KeepOutZone.
#
# Received on /<vehicle>/task4/keep_out_zone (latched, last 10). Acknowledge
# with an IncidentAck whose command_seq is this seq.

uint32 seq                        # RxCommand seq
builtin_interfaces/Time stamp     # when the OCS received it
LatLng center
float32 radius_m
string vehicle_type               # usv, uuv, uav
