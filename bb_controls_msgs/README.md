# BB Controls Messages

This package contains the messages used by the BB Controls system.

## Messages

The following messages are defined in this package:

- `ControllerStatus`: A message used to provide feedback to the user about the status of the controller.
- `Status`: A message used to provide feedback to the user about the status of the system.
- `Thrusters`: A message used to represent the thrusters on the vehicle.
- `ModelControllerConfig`: DEPRICATED

## Services

The following services are defined in this package:

- `Autotuner`: A service used to autotune the controller.
- `Controller`: A service used to control the vehicle.
- `EncircleTraj`: A service used to generate a trajectory for encircling an object.
- `Limits`: A service used to set the limits of the controller.
- `Speed`: A service used to set the speed of the vehicle.
- `SplineTraj`: A service used to generate a spline trajectory.

## Actions

The following action is defined in this package:

- `Locomotion`: An action used to control the locomotion of the vehicle. The controls Controller node currently implements such an action that internally calls the SplineTraj service.