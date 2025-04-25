$scoreboard players set @e[nbt={UUID: $(uuid)},limit=1] selent_scale $(value)
$execute if score @e[nbt={UUID: $(uuid)},limit=1] selent_scale matches ..5 run scoreboard players set @e[nbt={UUID: $(uuid)},limit=1] selent_scale 6
$execute if score @e[nbt={UUID: $(uuid)},limit=1] selent_scale matches 1601.. run scoreboard players set @e[nbt={UUID: $(uuid)},limit=1] selent_scale 1600
