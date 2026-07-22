# BB ROS2 Messages

This repository contains the messages used by the BB system. The messages are defined in the various packages of the form `bb_<scope>_msgs`. These ros2 packages should only contain `msg`, `srv` and `action` definitions, and should not contain any other non-interface relate code.

The `bb_msgs` package contains all messages previously used across the various packages. This package is deprecated, and we should aim to migrate all messages to a separate package that is of a more suitable scope. Some possible candidates are `bb_<vehicle>_msgs` or `bb_sensor_msgs` or `bb_robotx_msgs` based on the specific use case of the message.

## Package map

| Package                                     | Scope                                                        |
| ------------------------------------------- | ------------------------------------------------------------ |
| `bb_controls_msgs`                          | Locomotion, thruster commands, forces, and controller status |
| `bb_planner_msgs`                           | Setpoints, planner feedback, and pose-conversion services    |
| `bb_perception_msgs`                        | Detections, correspondences, image matching, and clustering  |
| `bb_auv_msgs`, `bb_asv_msgs`, `bb_uav_msgs` | Vehicle-specific interfaces                                  |
| `bb_robosub_msgs`                           | RoboSub task interfaces                                      |
| `bb_sensor_msgs`                            | Bumblebee sensor interfaces                                  |
| `bb_robotx_msgs`                            | RobotX task interfaces                                       |
| `yolo_msgs`                                 | YOLO detection interfaces                                    |
| `intercomm_msgs`                            | Inter-vehicle communication                                  |

## Contribution Guidelines

Please follow the following guidelines when contributing to this repository:

1. **Code Style**: Please follow the ROS2 code style guidelines when writing code. This includes using the `ros2` linter to check for style issues. The packages should also be properly versioned and have a `CHANGELOG.rst` file to track changes. Follow semantic versioning guidelines when versioning the packages (e.g. breaking changes should increment the major version, and new features should increment the minor version). Any merged PR should tag the version of the packages that were modified.
2. **Pull Requests**: Please create a pull request for any changes you make to the repository. This will allow others to review your changes before they are merged.
3. **Code Review**: All pull requests must be reviewed by at least one other person before they are merged. This is to ensure that the code is of high quality and follows the guidelines.
4. **Testing**: When making a PR, the CI will run basic tests to ensure that the msgs compiles and passes the linter.
5. **Documentation**: Please ensure that any new messages are documented in the `README.md` file of the package they are defined in. This will help others understand the purpose of the message and how to use it. All message fields should also be documented in the message definition itself with a comment above or beside the field.
