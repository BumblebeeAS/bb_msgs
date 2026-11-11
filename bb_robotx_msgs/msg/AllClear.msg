# RobotX 2026 Task 4 (Advanced): clears the KeepOutZones for vehicle_type. It
# names no zone, so it clears every zone with a lower seq.
# Relayed by the OCS from a robocommand.robotx.v1.AllClear.
#
# Received on /<vehicle>/task4/all_clear (latched, last 10). Acknowledge with an
# IncidentAck whose command_seq is this seq.

uint32 seq                        # RxCommand seq
builtin_interfaces/Time stamp     # when the OCS received it
string vehicle_type               # usv, uuv, uav
