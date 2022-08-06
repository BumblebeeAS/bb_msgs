# # ActuationState with constants for the state of the Drone Takeoff Landing System
int8 closed=1
int8 opened=2
int8 closing=3
int8 opening=4
bool enabled
int8 state # The latest known state of the dtls: closed/opened/closing/opening
