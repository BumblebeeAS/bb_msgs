# OLD VERSION OF Detection msgs for back compatibility
std_msgs/Header header
string name
uint16 source               # Follows RosDetectorTypeEnum

#---    pixel wise   ---#
uint32 bbox_area
uint16 centre_x
uint16 centre_y
uint16 bbox_width
uint16 bbox_height
uint16[] contour

uint16 image_width
uint16 image_height

#---  legacy - pixel wise   ---#
int16[] bbox                # centre_x, centre_y, w, h
                            # 3d contour information, if source annotation bit is set
                            # DO NOT USE THIS VARIABLE. ONLY FOR LEGACY USE OF VISION v1

#---  real distance  ---#
uint8 move_coords           # 1: [dx dy]  2: [dx dy dz]  3: [r t]  4: [theta phi]
float32[] rel_coords        # setpoints towards target, wrt to base_link, depending on move_coords
float32[] world_coords      # setpoints towards target, wrt to world, depending on move_coords
float32[] closest_coords    # setpoints towards closest pt of target, wrt to base_link, depending on move_coords
float32[] real_dims         # sonar: Major axis, minor axis    lidar: x, y ,z    Cam: HOV, VOV
float32[6] object_ray       # x y z direction of ray, x y z of sensor in world frame

#---  general info   ---#
int8 angle                  # wrt to horizontal, clockwise positive
uint8 color                 # Hue if from cameras, Intensity if from sonar

uint8 extra_codex           # 0: None,
                            # 1: ML Confidence - 2 value (confidence percentage, detection bbox type)
                            # 2: Sequence Data - TODO
                            # 3: Traditional detector - 1 value (detection bbox type),
                            # 4: PF info - 3 values (secs from last suveryor detection, lifespan (in secs), confidence percentage)
                            # 5: Polar Ranges - Pixel distance from sensor origin in polar form (left to right)
uint16[] extra              # Extra information that is needed

#---  tracker info   ---#
uint32[] tracker_match_id   # ids of trackers that matches the detection. -ve implies a false-positive detection.
int8[] tracker_confidence  # confidence of tracker(s) in percentage. -ve implies a false-positive detection.
float32 world_roll
float32 world_pitch
float32 world_yaw
