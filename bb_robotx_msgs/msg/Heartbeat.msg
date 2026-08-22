# Per-vehicle telemetry consumed by the OCS dashboard, which relays it to
# RoboCommand as a robocommand.robotx.v1.Heartbeat (RobotX 2026). Plain-string
# enums mirror the proto names; the dashboard maps them to proto enums once.
string vehicle_id
string state            # unknown|killed|manual|auto
float64 latitude
float64 longitude
float32 spd_mps
float32 heading_deg
float32 roll_deg
float32 pitch_deg
float32 altitude_hae_m  # UAV only
float32 depth_m         # UUV only
string current_task     # unknown|none|safe-passage|infra-survey-repair|coordinated-logistics|dynamic-incident
string flight_phase     # unknown|grounded|airborne (UAV only)
