# Defines a 3D detection result.
#
# This can be derived from all sensor detections with a 3d position estimate.

std_msgs/Header header

string name

# The source of the detection. CAMERA/STEREO/SYNTHETIC_APERTURE
DetectorSource source
geometry_msgs/Pose sensor_pose

DetectedObject3D[] objects
