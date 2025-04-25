function kira_util:select_entity_ensure_selection
function kira_util:select_entity_next
execute unless score @s selent_hide_selection matches 1 run function kira_util:marker_head_ride_selected
scoreboard players set @s selent_ttl 600
function selent:tell_selected
