scoreboard players set @s ads 0

# Array Len
execute store result score .total_ads ads.config run data get storage legitiads:ads ads
execute store result storage legitiads:ads total_ads int 1 run scoreboard players remove .total_ads ads.config 1

# Ad Random
execute if score .random_ads ads.config matches 1 run return run function ads:_randomize_ad with storage legitiads:ads
execute if score .random_ads ads.config matches 0 run return run function ads:_sequenced_ad