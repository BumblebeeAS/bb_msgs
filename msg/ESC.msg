std_msgs/Header header
int16 motor_1_current # (in 0.01 Amps)
int16 motor_2_current # (in 0.01 Amps)
uint8 status_flag_1
uint8 status_flag_2
uint8 fault_flag

int16 motor_1_power
int16 motor_2_power
uint8 mcu_temp

# Status flags bitmask
# Bit 0 - Amps Limit currently active 
# Bit 1 - Motor stalled 
# Bit 2 - Loop Error detected 
# Bit 3 - Safety Stop active 
# Bit 4 - Forward Limit triggered 
# Bit 5 - Reverse Limit triggered 
# Bit 6 - Amps Trigger activated

# Fault Flags bitmask
# Bit 0 - Overheat
# Bit 1 - Overvoltage
# Bit 2 - Undervoltage
# Bit 3 - Short circuit
# Bit 4 - Emergency stop
# Bit 5 - Brushless sensor fault
# Bit 6 - MOSFET failure
# Bit 7 - Default configuration loaded at startup
