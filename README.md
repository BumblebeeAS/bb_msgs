## Message details

- Certain messages e.g. AUV4Heartbeat and ASV3Heartbeat has the same fields but come with different constants for convenience and standardization. A list of the message format to adhere to for various topics are as follows:
Bitmask means the data field represents a bitmask for each unique id.
    E.g. if only id 2 and id 3 are enabled, the data is equivalent to ((1<<2)||(1<<3)) == 6

Message type | base type | description
---|---|---
Heartbeat related messages | std_msgs/UInt32.msg | data represents bitmask for the different device id.   E.g. if only id 2 and id 3 are enabled, the data is equivalent to ((1<<2)||(1<<3)) == 6. (supports up to 32 ids)
Power status messages | std_msgs/UInt16.msg | data represents bitmask for the different devices' power
Selecting one of multiple states | std_msgs/UInt8.msg | data represents a unique id of the different states (e.g. either based on the ids in CAN standard or some unique mapping for standardization)
