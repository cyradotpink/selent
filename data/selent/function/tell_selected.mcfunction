function kira_util:select_entity_ensure_selection
function kira_util:select_entity_get_selection
data modify storage selent:scratch args.uuid set from storage kira_util:select_entity out.selected_uuid
execute unless function kira_util:select_entity_check_selected_exists run return run function selent:previous
function kira_util:entity_uuid_get_selector with storage selent:scratch args

title @s reset
title @s actionbar [{text: "[selent]", color: "#f7518e"}, {text: " Selected entity is ", color: "#fffb21"}, {nbt: "out", storage: "kira_util:select_entity", interpret: true}]

data remove storage kira_util:select_entity out
data remove storage selent:scratch args
