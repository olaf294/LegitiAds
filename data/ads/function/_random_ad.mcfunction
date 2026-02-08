# Store ad formatting in temp
$data modify storage legitiads:ads ad set from storage legitiads:ads ads[$(loaded_ad)]

# Display Ad
tellraw @s {storage:"legitiads:ads",nbt:ad,interpret:1b}
execute if score .ad_sound ads.config matches 1 at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 1 1