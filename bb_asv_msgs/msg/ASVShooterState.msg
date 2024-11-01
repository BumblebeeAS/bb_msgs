uint8 LOADER_UNLOADED=1
uint8 LOADER_LOADED=2
uint16 pan # -25-25 deg (5-65530) # not fixed
uint16 tilt # 12-42 deg (5-65530)
uint8 loader_state # 1: unloaded, 2: loaded
uint16   flywheel_speed # 1: off, 65535: max, 0: ignore
