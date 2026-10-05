# Bit positions in the CAN kill status mask
uint8 KILL_ASSERTED=0  # aggregate, not a source
uint8 HARDKILL=1
uint8 RCKILL=2

std_msgs/Header header
bool killed
bool hardkill
bool rckill
uint8[] sources  # asserting bits, excluding KILL_ASSERTED
