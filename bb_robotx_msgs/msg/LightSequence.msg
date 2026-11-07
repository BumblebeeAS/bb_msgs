uint8 UNKNOWN=0
uint8 RED=1
uint8 GREEN=2
uint8 BLUE=3

# Packed 2-color sequence:
# bits [3:2] = first color  (color1)
# bits [1:0] = second color (color2)
# sequence = (color1 << 2) | color2
uint8 sequence
