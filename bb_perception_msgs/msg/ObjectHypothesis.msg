# An object hypothesis with pose information. Typically the output of some tracker.

uint8 MODE_DETECTED=0
uint8 MODE_TRACKED=1

# The mode of the object hypothesis. This field is used to indicate whether the object has an active track.
uint8 mode

# The unique ID of the object class.
uint8 class_id

ObjectKinematics kinematics

uint32 classification_age
uint32 track_id
# The probability or confidence value of the proposed object being an actual object. By convention,
#   this value should lie in the range [0-1].
float32 probability
ObjectClassification[] classes
Shape shape
