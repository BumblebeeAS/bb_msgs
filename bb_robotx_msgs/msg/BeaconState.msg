# Top-level beacon state
uint8 OFF=0
uint8 FLASH_RED=1
uint8 FLASH_GREEN=2
uint8 FLASH_BLUE=3
uint8 STEADY_BLUE=4
uint8 SEQUENCE=5

# Values for first_color / second_color (only used when state=SEQUENCE)
uint8 COLOR_OFF=0
uint8 COLOR_RED=1
uint8 COLOR_GREEN=2
uint8 COLOR_BLUE=3

uint8 state
uint8 first_color
uint8 second_color

# Target buoy instance name (matches the world-file <include><name>, e.g.
# "sp_entry"). Empty string = apply to ALL safe_passage buoys.
string buoy_id
