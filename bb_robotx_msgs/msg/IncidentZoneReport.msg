# Periodic report (~2 Hz) of every live incident and its current
# relation to every monitored vehicle. Published by
# `bb_robotx_dashboard.nodes.incident_manager` on
# /robotx/incident/zone_report. Consumed by the dashboard and fanned out
# over WebSocket so operators can see vehicles drive in/out of zones.
builtin_interfaces/Time stamp
IncidentZoneStatus[] incidents
