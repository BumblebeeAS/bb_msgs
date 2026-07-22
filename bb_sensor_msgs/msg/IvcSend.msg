# Outgoing inter-vehicle communication (IVC) message.
# destination is the modem address string, e.g. one of:
#   "VEH1".."VEH5", "BROADCAST", "LANDSIDE", "TEST"
string destination

# Operator-facing signal colour. The acoustic link carries only two payload
# bytes, so the colour is sent as a fixed-palette index (this enum) plus a
# brightness byte. A small set of distinct colours is far more legible
# underwater than fine-grained RGB, which water absorbs unevenly with range.
uint8 COLOR_OFF = 0
uint8 COLOR_RED = 1
uint8 COLOR_GREEN = 2
uint8 COLOR_BLUE = 3
uint8 COLOR_WHITE = 4
uint8 COLOR_YELLOW = 5
uint8 COLOR_CYAN = 6
uint8 COLOR_MAGENTA = 7
uint8 color

# Brightness, 0 (off) to 255 (full). Scales the selected palette colour.
uint8 intensity 255
