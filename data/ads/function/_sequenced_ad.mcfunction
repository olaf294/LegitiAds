# Store first ad to temp
data modify storage legitiads:ads ad set from storage legitiads:ads ads[0]

# Shift ad storage <- move first ad back
data remove storage legitiads:ads ads[0]
data modify storage legitiads:ads ads append from storage legitiads:ads ad

# Display ad
function ads:_display_ad with storage legitiads:ads