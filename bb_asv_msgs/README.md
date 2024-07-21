# BB ASV Messages

This package contains the messages used by bbasv4.

## Messages

The following messages are defined in this package:

- `ASVControlLink`: A message used to represent control link status - frsky mode/rssi.
- `ASVEStopState`: A message used to indicate the emergency stop state of the ASV.
- `ASVHeartbeat`: A message used to indicate the heartbeat status of the ASV.
- `ASVLogicStatus`: A message used to indicate the logic status of the ASV.
- `ASVMainHullStatus`: A message used to indicate the status of the main hull of the ASV.
- `ASVMHPBStatus`: A message used to indicate the status of the MHPB of the ASV (from can).
- `MHPBControl`: A message used to control the MHPB (telecontrol -> can).
- `Battery`: A message used to indicate the battery status.
- `BatteryHealth`: A message used to indicate the health status of the Torqeedo battery.
- `CalibrateActuators`: A message used to calibrate the 3 actuators.
- `Environment`: A message used to indicate temp / humidity / pressure.
- `CPUTemp`: A message used to indicate the CPU temperature.
- `SBCTemp`: A message used to indicate the SBC temperature (cpu + gpu).

## Services

The following services are defined in this package:
- `MHPBChannelToggle`: A service used to toggle a single MHPB channel (e.g. enable/disable).
- `MHPBChannelTrigger`: A service used for triggering a singgle MHPB channel (e.g. shutdown or cycle).


## Actions

The following action is defined in this package:

