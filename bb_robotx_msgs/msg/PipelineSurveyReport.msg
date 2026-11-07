# RobotX 2026 Task 2 (Infrastructure Survey and Repair): the UUV's pipeline
# survey result. Relayed by the OCS dashboard to RoboCommand as a
# robocommand.robotx.v1.PipelineSurveyReport.
#
# Publish on /<vehicle>/report/pipeline_survey. Sent once, after the survey
# (and, at Advanced tier, the repair) completes — a UUV cannot transmit while
# submerged, so in practice this goes out on surfacing. Segments describe the
# pipeline as surveyed, not any post-repair state.

# The active (green) buoy — the pinger end that segments are ordered from.
LatLng active_buoy_position

# Segment statuses in order from the active buoy end.
# Each entry: unknown|intact|damaged  (intact = green light, damaged = red)
string[] segments
