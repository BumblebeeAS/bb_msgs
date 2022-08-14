# derived from ActuationState with constants for state of the Drone Takeoff Landing System
uint8 CLOSED=1
uint8 OPENED=2
uint8 CLOSING=3
uint8 OPENING=4
bool armed
uint8 data # The latest known state of the dtls: closed/opened/closing/opening/disabled
