# Per-beam quality / status extracted from the Pathfinder PD0
# Bottom Track section (ID 0x0600). Fields are nan when not available.
float64 correlation            # correlation magnitude, 0-255 (higher is better)
float64 evaluation_amplitude   # received echo signal strength, 0-255 (beam quality)
float64 percent_good           # percent-good pings, 0-100
float64 rssi_amplitude         # receiver signal strength indicator, counts
float64 range                  # per-beam slant range to bottom, meters (nan if invalid)
