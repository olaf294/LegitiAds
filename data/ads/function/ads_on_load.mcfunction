execute if score .rank_difference ads.config matches 0 run return run scoreboard players operation @a ads = .non_cd ads.config

scoreboard players operation @a[tag=!is_am] ads = .non_cd ads.config
scoreboard players operation @a[tag=is_am,tag=!is_fm] ads = .am_cd ads.config
scoreboard players operation @a[tag=is_fm,tag=!is_fm2] ads = .fm_cd ads.config
scoreboard players operation @a[tag=is_fm2,tag=!is_xm] ads = .fm2_cd ads.config
scoreboard players operation @a[tag=is_xm] ads = .xm_cd ads.config