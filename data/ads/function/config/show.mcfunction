# Advanced Config
execute as @a[scores={ads.config=1111}] run dialog show @s {type:"minecraft:multi_action",title:{text:"LᴇɢɪᴛɪAᴅꜱ (v1.1) — ᴇxᴛʀᴀ ᴄᴏɴꜰɪɢ",color:"yellow"},body:{type:"minecraft:plain_message",contents:{text:"Configure Ad delay for individual ranks here.",color:"gray"},width:300},inputs:[{type:"minecraft:text",key:"non_cd",width:100,label:[{text:"No rank ",color:"gray"},{text:"cooldown",color:"white"}],initial:"1200",max_length:6},{type:"minecraft:text",key:"am_cd",width:100,label:[{text:"ᴀᴍ",color:"#98fdb5"},{text:" cooldown",color:"white"}],initial:"2400",max_length:6},{type:"minecraft:text",key:"fm_cd",width:100,label:[{text:"ꜰᴍ",color:"#8888ff"},{text:" cooldown",color:"white"}],initial:"6000",max_length:6},{type:"minecraft:text",key:"fm2_cd",width:100,label:[{text:"ꜰᴍ",color:"#8888ff"},{text:"²",color:"#ba094a"},{text:" cooldown",color:"white"}],initial:"12000",max_length:6},{type:"minecraft:text",key:"xm_cd",width:100,label:[{text:"xᴍ",color:"#ff33ff"},{text:" cooldown",color:"white"}],initial:"18000",max_length:6}],can_close_with_escape:1b,pause:0b,after_action:"close",actions:[{label:{text:"Close",color:"red"},tooltip:{text:"Click to exit without saving.",color:"red"},width:150},{label:{text:"Save Settings",color:"green"},tooltip:{text:"Click to save settings.",color:"green"},width:150,action:{type:"minecraft:dynamic/run_command",template:"function ads:config/update {non_cd:$(non_cd),am_cd:$(am_cd),fm_cd:$(fm_cd),fm2_cd:$(fm2_cd),xm_cd:$(xm_cd)}"}}]}

# Enable Ads
execute as @a[scores={ads.config=1000}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @a[scores={ads.config=1000}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Ads have been enabled.",color:green}]
execute as @a[scores={ads.config=1000}] run scoreboard players set .ads_enabled ads.config 1

# Disable Ads
execute as @a[scores={ads.config=1001}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @a[scores={ads.config=1001}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Ads have been disabled.",color:red}]
execute as @a[scores={ads.config=1001}] run scoreboard players set .ads_enabled ads.config 0


# Enable Rank Advantage
execute as @a[scores={ads.config=1010}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @a[scores={ads.config=1010}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Rank Advantage has been enabled.",color:green}]
execute as @a[scores={ads.config=1010}] run scoreboard players set .rank_difference ads.config 1

# Disable Rank Advantage
execute as @a[scores={ads.config=1011}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @a[scores={ads.config=1011}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Rank Advantage has been disabled.",color:red}]
execute as @a[scores={ads.config=1011}] run scoreboard players set .rank_difference ads.config 0


# Enable Ad Sounds
execute as @a[scores={ads.config=1020}] at @s run playsound block.note_block.pling ui @s ~ ~ ~ 0.8 2 0
tellraw @a[scores={ads.config=1020}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Ad Sounds have been enabled.",color:green}]
execute as @a[scores={ads.config=1020}] run scoreboard players set .ad_sound ads.config 1

# Disable Ad Sounds
execute as @a[scores={ads.config=1021}] at @s run playsound block.note_block.bass ui @s ~ ~ ~ 1.5 1 0
tellraw @a[scores={ads.config=1021}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Ad Sounds have been disabled.",color:red}]
execute as @a[scores={ads.config=1021}] run scoreboard players set .ad_sound ads.config 0


# Ad Order
execute as @a[scores={ads.config=1030}] at @s run playsound block.note_block.hat ui @s ~ ~ ~ 0.8 1 0
tellraw @a[scores={ads.config=1030}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Ad Order set to Rᴀɴᴅᴏᴍ.",color:yellow}]
execute as @a[scores={ads.config=1030}] run scoreboard players set .random_ads ads.config 1

execute as @a[scores={ads.config=1031}] at @s run playsound block.note_block.hat ui @s ~ ~ ~ 1.5 1 0
tellraw @a[scores={ads.config=1031}] [{text:"LᴇɢɪᴛɪAᴅꜱ ",color:yellow},{text:">> ",color:dark_gray},{text:"Ad Order set to Oʀᴅᴇʀᴇᴅ.",color:yellow}]
execute as @a[scores={ads.config=1031}] run scoreboard players set .random_ads ads.config 0