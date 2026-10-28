# RobotX 2026 Task 4: acknowledges an AssistanceRequest, KeepOutZone or
# AllClear. Relayed by the OCS to RoboCommand as a robocommand.robotx.v1.IncidentAck.
# Publish on /<vehicle>/report/incident_ack.
uint32 command_seq  # seq of the RxCommand being acknowledged
