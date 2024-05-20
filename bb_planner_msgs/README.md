# BB Planner Messages

This package contains the messages used by the BB Planner system.

## Messages

The following messages are defined in this package:

- `PlannerFeedbackMsg`: A message used to provide feedback to the user about the status of the planner.
- `SetPoint`: A message used to represent a single set point in the planner.
- `SetPoints`: A message used to represent a list of set points in the planner.

## Services

The following services are defined in this package:

- `GetPlanThroughPoses`: A service used to get a plan through a list of poses.
- `GetPlanToPose`: A service used to get a plan to a single pose.

## Actions

The following action is defined in this package:

- `Planner`: An action used to plan a path to a set of set points.
