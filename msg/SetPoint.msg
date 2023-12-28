## 3d SetPoint message (used as response of local / global planner)

uint16 waypoint_id # determine which waypoint this setpoint corresponds to
geometry_msgs/PoseStamped pose # desired pose in the local frame
float32 tolerance -1.0 # distance to nearest obstacle (m), -1 for none