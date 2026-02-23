bool    enable                  # True if controller is enabled, otherwise, False
bool    paused                  # True if controller is paused, otherwise, False
bool    use_depth               # True if using depth Z-axis control, otherwise, False representing altitude Z-axis control
bool    altitude_check_enabled  # True if altitude check of 0.5m is enabled
float32 progress                # 0 to n for trajectory progress (n = number of waypoints), -1 for error
float32 overall_progress         # 0 to 1 for trajectory progress
string  trajectory_id            # Current trajectory id (uuid string)
uint8   risk_factor              # Risk (Slack) Factor in percentage. On a scale of 0% to 100%, representing norminal to "We are screwed"