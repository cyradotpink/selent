$scoreboard objectives add iter_$(id)_idx dummy
$scoreboard players set @s iter_$(id)_idx 0
$scoreboard objectives add iter_$(id)_length dummy
$execute store result score @s iter_$(id)_length run data get storage kira_util:iter $(id).in

$data modify storage kira_util:iter $(id).args.in_storage set value "kira_util:iter"
$data modify storage kira_util:iter $(id).args.in_path set value $(id).in
