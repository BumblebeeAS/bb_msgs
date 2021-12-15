# Using the optical coordinate system.
# - Origin is the top-left of an image
# - X-axis is positive when moving lefwards
# - Y-axis is positive when moving downwards
#
# For the sonar,
# > Polar field image
#   - Generated using the raw information obtained from the sensor.
#   - Sensor origin is at the top-center of the image.
#   - Range increases along the y-axis (top to bottom of the image).
#   - Theta increases (in a clockwise direction) along the x-axis (left to right of the image).
#
# > Cartesian field:
#   - Sensor origin is at the bottom-center of the image.
#   - Range increases when travelling from the bottom to top of the image.
#   - Theta increases (in a clockwise direction) along the x-axis (left to right of the image).
#
# IMPT:
# 1. Range resolution is uniform and the same for both polar & Cartesian forms.
# 2. Beams of the polar field are not uniformly distributed.
#    See int16[] bearing_resol for the theta of each individual beam,
#    ordered wrt the index of the x-axis (left to right column).
# 3. Nearest neighbour was used to interpolate the readings from polar to cartesian.


int32 width                 # The width (in pixels) of the output polar image
int32 height                # The height (in pixels) of the output polar image
float32 min_range           # Minimum range (in m) presented in the output image
float32 max_range           # Maximum range (in m) presented in the output image

float32 range_resol         # Distance (in m) represented by a single pixel along the Y-axis (range).
int16[] bearing_resol       # Measured (in 10^-2 degs) between -180 to 180 degs; relative North is 0 degs; +ve angle is Clockwise.
int32 origin_row            # Sensor Origin (in pixel) representing range along the Y-axis
int32 origin_col            # Sensor Origin (in pixel) representing theta along the X-axis
float32 fov_min             # The lower/left bound of the sensor's FOV (in degs), wrt to relative North.
float32 fov_max             # The upper/right bound of the sensor's FOV (in degs), wrt to relative North.

uint8 temperature           # Temperature of sensor (in degs C)
uint8 gain                  # Gain setting of sensor
uint8 gamma                 # Gamma setting of sensor
uint8 clusterSuppression    # Only used for Radar. IGNORE for sonar.