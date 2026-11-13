# RobotX 2026 Task 4 (Core): RoboCommand received the vehicle's ReadinessReport
# and clears it to return to normal operations.
# Relayed by the OCS from a robocommand.robotx.v1.ReadinessConfirm.
#
# Received on /<vehicle>/task4/readiness_confirm (not latched). report_seq is
# the seq SendReadinessReport returned for the report being confirmed.

uint32 seq                        # RxCommand seq
builtin_interfaces/Time stamp     # when the OCS received it
uint32 report_seq                 # seq of the RxReport that carried the ReadinessReport
string vehicle_id                 # vehicle whose report is confirmed (report seqs are per vehicle)
