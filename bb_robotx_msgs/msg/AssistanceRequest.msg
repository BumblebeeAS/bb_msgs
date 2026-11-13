# RobotX 2026 Task 4 (Core): transit to a position and loiter there.
# Relayed by the OCS from a robocommand.robotx.v1.AssistanceRequest.
#
# Received on /<vehicle>/task4/assistance_request (not latched: a node started
# later never sees an old request). Acknowledge with an IncidentAck whose
# command_seq is this seq, transit, then send a ReadinessReport with the same
# command_seq once on station. A ReadinessConfirm naming that report clears the
# vehicle to resume.

uint32 seq                        # RxCommand seq
builtin_interfaces/Time stamp     # when the OCS received it
LatLng position                   # where to loiter
string vehicle_type               # usv, uuv, uav
