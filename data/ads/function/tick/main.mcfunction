# Run if admins
execute if entity @a[tag=is_admin] run function ads:tick/trigger

# Ads
execute if score .ads_enabled ads.config matches 0 run return fail
execute as @a run scoreboard players add @s ads 1
# Global Ads (if RDif off)
execute as @a if score .rank_difference ads.config matches 0 if score @s ads >= .non_cd ads.config run return run function ads:load_ad
# NoRank Ad
execute as @a[tag=!is_am] if score @s ads >= .non_cd ads.config run function ads:load_ad
# AM Ad
execute if entity @a[tag=is_am,tag=!is_fm] as @a[tag=is_am,tag=!is_fm] if score @s ads >= .am_cd ads.config run function ads:load_ad
# FM Ad
execute as @a[tag=is_fm,tag=!is_fm2] if score @s ads >= .fm_cd ads.config run function ads:load_ad
# FM² Ad
execute as @a[tag=is_fm2,tag=!is_xm] if score @s ads >= .fm2_cd ads.config run function ads:load_ad
# XM Ad
execute as @a[tag=is_xm] if score @s ads >= .xm_cd ads.config run function ads:load_ad
