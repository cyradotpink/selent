$execute unless score @e[nbt={UUID: $(uuid)},limit=1] selent_scale matches 0.. run scoreboard players set @e[nbt={UUID: $(uuid)},limit=1] selent_scale 100
$scoreboard players operation @e[nbt={UUID: $(uuid)},limit=1] selent_scale += @s selent_scale_add
$execute if score @e[nbt={UUID: $(uuid)},limit=1] selent_scale matches ..5 run scoreboard players set @e[nbt={UUID: $(uuid)},limit=1] selent_scale 6
$execute if score @e[nbt={UUID: $(uuid)},limit=1] selent_scale matches 1601.. run scoreboard players set @e[nbt={UUID: $(uuid)},limit=1] selent_scale 1600
$return run scoreboard players get @e[nbt={UUID: $(uuid)},limit=1] selent_scale
