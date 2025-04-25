function kira_util:select_entity_ensure_selection
function kira_util:select_entity_get_selection
data modify storage selent:scratch args.uuid set from storage kira_util:select_entity out.selected_uuid
function kira_util:entity_uuid_get_selector with storage selent:scratch args

title @s reset
title @s actionbar [{text: "", color: "#f7518e"}, {text: "[selent] Selected entity is ", color: "#fffb21"}, {nbt: "out", storage: "kira_util:select_entity", interpret: true}]

data remove storage kira_util:select_entity out
data remove storage selent:scratch args
