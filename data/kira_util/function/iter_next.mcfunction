$execute if score @s iter_$(id)_idx >= @s iter_$(id)_length run return 0

$execute store result storage kira_util:iter $(id).args.idx int 1 run scoreboard players get @s iter_$(id)_idx
$function kira_util:copy_list_value with storage kira_util:iter $(id).args
$data modify storage kira_util:iter $(id).current_value set from storage kira_util:copy_list_value out
data remove storage kira_util:copy_list_value out

$scoreboard players add @s iter_$(id)_idx 1

return 1
