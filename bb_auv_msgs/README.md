# BB AUV Messages

This package contains the messages used by the BBAUV system (Tested up to AUV4.*)

## Messages

The following messages are defined in this package:
- `AUVControlLink`: A message used to represent control link status - frsky mode/rssi.
- `OrinTemp`: A message used to pass orin stats from orin to sbc

## Services

The following services are defined in this package:
- `ResetPose`: A service call to resetAllPose in localization
- `SetPose`: ??
- `TareAtmosphericPressure`: To set the pressure of the vehicle to help reset the depth to that point