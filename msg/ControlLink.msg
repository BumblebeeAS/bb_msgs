std_msgs/Header header
uint8 autonomous=1
uint8 frisky=2
uint8 ocs=3
uint8 station_keep=4
uint8 mode # one of the four modes above.
uint8 rssifrisky
uint8 rssiocs

# Control Mode:
# 0x01 - Autonomous
# 0x02 - Frisky (Manual)
# 0x03 - OCS (Manual)
# 0x04 - Station Keep"
