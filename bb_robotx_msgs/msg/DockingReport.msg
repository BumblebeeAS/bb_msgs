# RobotX 2026 Task 3 (Coordinated Logistics): successful docking in the safe
# (green) bay. Relayed by the OCS dashboard to RoboCommand as a
# robocommand.robotx.v1.DockingReport.
#
# Publish on /robotx/task_report/docking. This also signals readiness for
# tasking — RC activates that bay's window light on receipt.
string vehicle_id

# Bay number the vehicle docked in (1-3).
uint32 bay_id
