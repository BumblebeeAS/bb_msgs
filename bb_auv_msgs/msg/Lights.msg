# Shared RGBW colour channels. Telem screen lights
uint8 r 0      # red,   CAN byte 0
uint8 g 0      # green, CAN byte 1
uint8 b 0      # blue,  CAN byte 2
uint8 w 0      # white, CAN byte 3

# Per-side intensity.
uint8 right 0  # right flood light, CAN byte 4
uint8 left 0   # left flood light,  CAN byte 5
