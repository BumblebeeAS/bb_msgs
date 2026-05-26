# Shared request fields used by both ClusterPosesSrv and ClusterPosesAction.

# --- Subscriber configuration ---
string odom_topic
# Every listed PoseStamped topic feeds into the same accumulation buffer.
# Each gets its own ApproximateTimeSynchronizer paired with `odom_topic`.
string[] pose_stamped_topics
int32 sync_queue_size 100
float64 sync_tolerance 0.05

# --- Output frame IDs ---
# Base TF frame ID broadcast for each clustered result. Each of the top_k
# results is broadcast as "<clustered_child_frame_id>_<i>" ordered by 
# `sort_key`.
string clustered_child_frame_id "clustered_object"

# --- Clustering parameters ---
int32 min_poses 10
int32 min_cluster_size 5
int32 min_samples 5
float64 cluster_selection_epsilon 0.0
# Drop earlier detections when latest_detection_time - detection_time
# is greater than or equal to this value. Set <= 0.0 to disable age filtering.
float64 max_detection_age_s 0.0

# --- Result selection ---
# Number of clusters to return (and TFs to broadcast). The output array is
# truncated to this many entries after sorting. 0 means "all clusters found".
int32 top_k 1

# Sort key values for ordering the returned ClusterPoseResultArray. Each key
# defines its own "best-first" direction.
int32 SORT_BY_NUM_CLUSTER_POSES = 0       # largest first
int32 SORT_BY_MEAN_PROBABILITY = 1        # highest first
int32 SORT_BY_CLUSTERED_POSITION_STD = 2  # smallest first

# How to sort the returned array
int32 sort_key 0
