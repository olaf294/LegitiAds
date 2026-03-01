# Return if no ads
execute if entity @s[tag=is_whitelisted] if score .wl_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_admin] if score .admin_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_dev] if score .dev_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_coowner] if score .co_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_owner] if score .owner_ads ads.config matches 1 run return fail

# Store 1st ad to temp
data modify storage legitiads:ads ad set from storage legitiads:ads ads[0]

# Shift ad storage <- move 1st ad back
data remove storage legitiads:ads ads[0]
data modify storage legitiads:ads ads append from storage legitiads:ads ad

# Display ad
tellraw @s {storage:"legitiads:ads",nbt:ad,interpret:1b}
execute if score .ad_sound ads.config matches 1 at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 1 1