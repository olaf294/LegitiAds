# Return if no ads
execute if entity @s[tag=is_whitelisted] if score .wl_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_admin] if score .admin_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_dev] if score .dev_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_coowner] if score .co_ads ads.config matches 1 run return fail
execute if entity @s[tag=is_owner] if score .owner_ads ads.config matches 1 run return fail

# Store ad formatting in temp
$data modify storage legitiads:ads ad set from storage legitiads:ads ads[$(loaded_ad)]

# Display Ad
tellraw @s {storage:"legitiads:ads",nbt:ad,interpret:1b}
execute if score .ad_sound ads.config matches 1 at @s run playsound block.note_block.pling master @s ~ ~ ~ 2 1 1