# One detected Safe Passage buoy, as reported to RoboCommand inside a
# SafePassageReport (RobotX 2026 Task 1). Distinct from BuoyDetection.msg,
# which is the perception stack's local detection type — this one is
# geodetic and carries the competition beacon vocabulary.
float64 latitude
float64 longitude

# unknown|off|flashing-red|flashing-green|flashing-blue|steady-blue
# Mirrors robocommand.robotx.v1.BeaconState; the dashboard maps it to the
# proto enum once. flashing-red = pass to starboard, flashing-green = pass
# to port, flashing-blue = entry, steady-blue = exit.
string state
