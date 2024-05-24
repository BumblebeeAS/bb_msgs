## Message details

Certain messages (e.g., `AUV4Heartbeat` and `ASV3Heartbeat`) have the same fields but come with different **vehicle-specific** constants for convenience and standardization. A list of the message format to adhere to for various topics are as follows:
- Bitmask means the data field represents a bitmask for each unique id. E.g., if only ID 2 and 3 are enabled, `data` is equivalent to `((1 << 2) || (1 << 3)) == 6`

Message Type | Base Type (of `data`) | Description
---|---|---
Heartbeat related | std_msgs/UInt32.msg | `data` is a bitmask for up to **32 device IDs**
Power status | std_msgs/UInt16.msg | `data` is a bitmask for up to **16 device IDs**
Selecting one of multiple states | std_msgs/UInt8.msg | `data` represents a unique ID of the different states (e.g. either based on the IDs in CAN standard or some unique mapping for standardization)
