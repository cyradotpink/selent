function kira_util:select_entity_ensure_selection
function kira_util:select_entity_get_selection
data modify storage selent:scratch args.uuid set from storage kira_util:select_entity out.selected_uuid
data modify storage selent:scratch args.value set value 100
function kira_util:entity_uuid_scale_score_set with storage selent:scratch args
data modify storage selent:scratch args merge value {value: 1, attribute: scale}
function kira_util:entity_uuid_attribute_set with storage selent:scratch args
function kira_util:entity_uuid_get_selector with storage selent:scratch args

title @s reset
title @s actionbar [{text: "[selent]", color: "#f7518e"}, {text: " Set ", color: "#fffb21"}, {nbt: "out", storage: "kira_util:select_entity", interpret: true}, {text: "'s scale to ", color: "#fffb21"}, "100%"]

data remove storage selent:scratch args
data remove storage kira_util:select_entity out
