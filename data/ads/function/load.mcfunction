scoreboard objectives add ads dummy
scoreboard objectives add ads.config trigger {text:"LᴇɢɪᴛɪAᴅꜱ Cᴏɴꜰɪɢ",color:"#ff6600"}

# Defaults
execute unless score .ads_enabled ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ads ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .ads_enabled ads.config matches -2147483648..2147483647 run scoreboard players set .ads_enabled ads.config 0

execute unless score .rank_difference ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Rank Advantage ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .rank_difference ads.config matches -2147483648..2147483647 run scoreboard players set .rank_difference ads.config 0

execute unless score .ad_sound ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ad Sound ",color:gray},{text:"set to ",color:yellow},{text:"ᴏꜰꜰ",color:red}]
execute unless score .ad_sound ads.config matches -2147483648..2147483647 run scoreboard players set .ad_sound ads.config 0

execute unless score .random_ads ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Ad Order ",color:gray},{text:"set to ",color:yellow},{text:"ʀᴀɴᴅᴏᴍ",color:green}]
execute unless score .random_ads ads.config matches -2147483648..2147483647 run scoreboard players set .random_ads ads.config 1


execute unless score .non_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"Default Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"1200",color:aqua}]
execute unless score .non_cd ads.config matches -2147483648..2147483647 run scoreboard players set .non_cd ads.config 1200

execute unless score .am_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"ᴀᴍ Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"2400",color:aqua}]
execute unless score .am_cd ads.config matches -2147483648..2147483647 run scoreboard players set .am_cd ads.config 2400

execute unless score .fm_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"ꜰᴍ Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"6000",color:aqua}]
execute unless score .fm_cd ads.config matches -2147483648..2147483647 run scoreboard players set .fm_cd ads.config 6000

execute unless score .fm2_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"ꜰᴍ² Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"12000",color:aqua}]
execute unless score .fm2_cd ads.config matches -2147483648..2147483647 run scoreboard players set .fm2_cd ads.config 12000

execute unless score .xm_cd ads.config matches -2147483648..2147483647 run tellraw @a[tag=is_admin] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Config default of ",color:yellow},{text:"xᴍ Cooldown ",color:gray},{text:"set to ",color:yellow},{text:"18000",color:aqua}]
execute unless score .xm_cd ads.config matches -2147483648..2147483647 run scoreboard players set .xm_cd ads.config 18000