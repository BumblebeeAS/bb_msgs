std_msgs/Header header
uint8 AUTONOMOUS=1
uint8 FRISKY=2
uint8 OCS=3
uint8 STATION_KEEP=4
uint8 mode # one of the four modes above.
uint8 rssifrisky
uint8 rssiocs

# Control Mode:
# 0x01 - Autonomous
# 0x02 - Frisky (Manual)
# 0x03 - OCS (Manual)
# 0x04 - Station Keep"
