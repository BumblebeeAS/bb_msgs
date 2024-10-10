# This is a message to represent the predicted kinematics of an object.
# All fields are optional.
std_msgs/Header header

geometry_msgs/PoseWithCovariance pose_with_covariance
geometry_msgs/TwistWithCovariance twist_with_covariance
# geometry_msgs/AccelWithCovariance acceleration_with_covariance

# The degree of freedom of the yaw of the object. E.g. if the yaw is known exactly, the value would be 360.
# If the yaw is known up to 90 degree ambiguity, the value would be 90. Should be a factor of 360.
float32 yaw_ambiguity_deg
bool is_stationary
