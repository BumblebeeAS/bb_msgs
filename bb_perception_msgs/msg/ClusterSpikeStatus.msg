std_msgs/Header header
# Spike detection
bool spike_detected
float64 current_detection_rate  # Hz, over the configured rolling window
# Partial cluster (only valid when partial_cluster_available is true)
bool partial_cluster_available
geometry_msgs/PoseStamped partial_clustered_pose
int32 partial_poses_in_cluster
int32 partial_total_poses
float64 partial_mean_probability
float64 partial_cluster_persistence
float64 partial_inlier_ratio
float64 partial_position_std
float64 partial_primary_confidence
