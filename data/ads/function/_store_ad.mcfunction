# Store ad formatting in temp
$data modify storage legitiads:ads ad set from storage legitiads:ads ads[$(loaded_ad)]

function ads:_display_ad with storage legitiads:ads