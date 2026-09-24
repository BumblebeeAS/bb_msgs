# Snapshot of one live incident and every monitored vehicle's current
# relation to it. Parallel arrays: vehicle_names[i] / vehicle_distances_m[i]
# / vehicles_in_zone[i] all describe the same vehicle. Vehicles whose
# odometry is missing or stale are omitted entirely (see the manager log
# for the skip reason).
string incident_id
float64 x
float64 y
float64 inflation_radius_m
string[] vehicle_names
float64[] vehicle_distances_m
bool[] vehicles_in_zone
