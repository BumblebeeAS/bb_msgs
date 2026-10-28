# RobotX 2026 Task 4 (Disruptive): a moving surface object to keep clear of.
# Relayed by the OCS from a robocommand.robotx.v1.MovingObjectAlert.
#
# Received on /<vehicle>/task4/moving_object_alert. A newer alert replaces
# the previous one; RoboCommand sends no despawn. Project the object from
# stamp: position + speed_mps * (now - stamp) along heading_deg.

uint32 seq                        # RxCommand seq
builtin_interfaces/Time stamp     # when the OCS received the alert
LatLng position                   # NaN if RoboCommand left it unset
float32 heading_deg               # assumed compass (0 = north, clockwise); the proto doesn't say
float32 speed_mps
string[] affected_vehicle_types   # usv, uuv, uav
float32 keep_out_radius_m         # 5 when RoboCommand leaves it unset
