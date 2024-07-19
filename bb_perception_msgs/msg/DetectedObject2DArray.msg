# Defines a 2D detection result.
#
# This is similar to a 2D classification, but includes position information,
#   allowing a classification result for a specific crop or image point to
#   to be located in the larger image.

std_msgs/Header header

# The source of the detection. CAMERA/STEREO/SYNTHETIC_APERTURE
DetectorSource sensor
geometry_msgs/Pose sensor_pose

DetectedObject2D[] objects
