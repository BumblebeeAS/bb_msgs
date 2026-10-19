# RobotX 2026 Task 2 Advanced/Disruptive and Task 3 Advanced/Disruptive:
# a resource delivery request read off a flashing light signal. Relayed by the
# OCS dashboard to RoboCommand as a robocommand.robotx.v1.ResourceDeliveryRequest.
#
# Publish on /robotx/task_report/resource_delivery. Sent by whichever vehicle
# reads the LED code; the UAV sends the same message again, echoing both
# colors, when it begins the delivery.
string vehicle_id

# Which task this delivery belongs to:
# unknown|none|safe-passage|infra-survey-repair|coordinated-logistics|dynamic-incident
string task

# Field order matches the flash signal order: resource color flashes first,
# then the delivery circle color.
# resource_color: unknown|red|green|blue|any  ("any" = Advanced tier, any tin)
# delivery_circle_color: unknown|red|green|blue
string resource_color
string delivery_circle_color
