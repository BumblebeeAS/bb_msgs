
uint8 CUBOID=0
uint8 CYLINDER=1
uint8 SPHERE=2
uint8 POLYGON=3

uint8 category
geometry_msgs/Polygon footprint             # footprint of the object (for polygon)
geometry_msgs/Vector3 dimensions            # expected dimensions of the object
geometry_msgs/Vector3 dimension_variance    # variance of the dimensions
std_msgs/ColorRGBA color                    # color of the object