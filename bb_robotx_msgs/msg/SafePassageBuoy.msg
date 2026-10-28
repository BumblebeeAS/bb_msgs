# One detected Safe Passage buoy, as reported to RoboCommand inside a
# SafePassageReport (RobotX 2026 Task 1). Distinct from BuoyDetection.msg,
# which is the perception stack's local detection type — this one is
# geodetic and carries the competition beacon vocabulary.
float64 latitude
float64 longitude

# unknown|off|flashing_red|flashing_green|flashing_blue|steady_blue
# Mirrors robocommand.robotx.v1.BeaconState; the dashboard maps it to the
# proto enum once. flashing_red = pass to starboard, flashing_green = pass
# to port, flashing_blue = entry, steady_blue = exit.
string state
