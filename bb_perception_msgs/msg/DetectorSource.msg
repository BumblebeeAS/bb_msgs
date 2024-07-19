# sonar or radar
uint8 CAMERA = 0
uint8 STEREO = 1
uint8 LIDAR = 2
uint8 SYNTHETIC_APERTURE = 3

uint8 category
# sensor_name
string sensor_name
# frame_id: should be optical_frame for cameras, and sensor frame for lidar/radar
string frame_id
