# Reset score
scoreboard players set @s ads 0

# Get Array Len
execute store result score .total_ads ads.config run data get storage legitiads:ads ads

# Store Array Len-1
execute store result storage legitiads:ads total_ads int 1 run scoreboard players remove .total_ads ads.config 1

# If random ON
execute if score .random_ads ads.config matches 1 run return run function ads:_randomize_ad with storage legitiads:ads

# If random OFF
execute if score .random_ads ads.config matches 0 run return run function ads:_sequenced_ad