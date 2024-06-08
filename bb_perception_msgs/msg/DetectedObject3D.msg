# Defines a 3D detection result.
#
# This can be derived from all sensor detections with a 3d position estimate.

ObjectKinematics kinematics

# Class probabilities
ObjectHypothesis[] results

Shape shape
uint8 color   # Hue if from cameras
              # Intensity if from sonar, Reflectivity if from ouster
              # 0 if unspecified

# ID used for consistency across multiple detection messages. Detections
# of the same object in different detection messages should have the same id.
# This field may be empty.
string id

