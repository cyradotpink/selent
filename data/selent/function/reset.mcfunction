title @s reset
execute if function kira_util:select_entity_is_selection_nonself run title @s actionbar [{text: "[Selent]", color: "#f7518e"}, {text: " Selection reset", color: "#fffb21"}]

function kira_util:select_entity_delete_selection
function kira_util:marker_head_kill with entity @s
scoreboard players reset @s selent_ttl
