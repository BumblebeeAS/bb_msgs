# Camera image msg header
# frame_id in header is camera_frame_id
std_msgs/Header header
string object_frame_id
# N x 3 array
std_msgs/Float64MultiArray object_points
# N x 2 array
std_msgs/Float64MultiArray image_points
