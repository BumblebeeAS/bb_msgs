# RobotX 2026 Task 2 (Infrastructure Survey and Repair): pipeline report.
# 4 possible states for which light box segment is damaged (red light):
uint8 SEGMENT_1=0
uint8 SEGMENT_2=1
uint8 SEGMENT_3=2
uint8 SEGMENT_4=3

# 0-based index of the damaged segment from the active buoy end (0..3)
uint8 damaged_segment_index
