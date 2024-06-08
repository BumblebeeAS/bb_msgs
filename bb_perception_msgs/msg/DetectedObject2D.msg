# Defines a 2D detection result.
#
# This is similar to a 2D classification, but includes position information,
#   allowing a classification result for a specific crop or image point to
#   to be located in the larger image.

# Classes with probabilities
ObjectHypothesis[] results

# 2D bounding box or contour surrounding the object.
uint16[] contour
# the following fields can be derived from contour, but added for convenience
uint32 object_area
uint16 centre_x
uint16 centre_y
uint16 bbox_width
uint16 bbox_height

# Hue if from cameras, Intensity if from sonar
uint8 color
# Angle for OBB, 0 by default, 180 max.
int8 angle_deg

# ID used for consistency across multiple detection messages.
# Detections of the same object in different detection
# messages should have the same id.
# This field may be empty.
string id

