# RobotX 2026 Task 1 (Safe Passage): the buoy field as currently mapped,
# plus the identified entry and exit points. Relayed by the OCS dashboard to
# RoboCommand as a robocommand.robotx.v1.SafePassageReport.
#
# Publish on /robotx/task_report/safe_passage. Resend whenever your detection
# updates — at Disruptive tier buoy colors change during the run, and RC
# scores the most recent report.
string vehicle_id

# Location of the flashing-blue (entry) and steady-blue (exit) buoys.
float64 entry_latitude
float64 entry_longitude
float64 exit_latitude
float64 exit_longitude

SafePassageBuoy[] buoys
