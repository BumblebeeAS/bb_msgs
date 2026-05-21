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
