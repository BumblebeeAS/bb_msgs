uint8 ACTIVE = 0
uint8 STATIONKEEPING = 1
uint8 DISABLED = 2
uint16 goal_id              # id of controls interface planner goal
# errors in world frame for debugging
float32 forward_error
float32 sidemove_error
float32 depth_error
float32 yaw_error           # degrees
float32 pitch_error
float32 roll_error
float32 progress
float32 overall_progress    # 0 to 1 for trajectory progress
uint8 status                # ACTIVE, STATIONKEEPING, DISABLED
