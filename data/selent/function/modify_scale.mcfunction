scoreboard objectives add selent_scale_add dummy
$scoreboard players set @s selent_scale_add $(add)

function kira_util:select_entity_ensure_selection
function kira_util:select_entity_get_selection
data modify storage selent:scratch args.uuid set from storage kira_util:select_entity out.selected_uuid
execute store result storage selent:scratch args.value_percent int 1 run function kira_util:entity_uuid_scale_score_add with storage selent:scratch args
execute store result storage selent:scratch args.value double 0.01 run data get storage selent:scratch args.value_percent
data modify storage selent:scratch args.attribute set value "scale"
function kira_util:entity_uuid_attribute_set with storage selent:scratch args
function kira_util:entity_uuid_get_selector with storage selent:scratch args

scoreboard players set @s selent_ttl 600

title @s reset
title @s actionbar [{text: "[Selent]", color: "#f7518e"}, {text: " Set ", color: "#fffb21"}, {nbt: "out", storage: "kira_util:select_entity", interpret: true}, {text: "'s scale to ", color: "#fffb21"}, {nbt: "args.value_percent", storage: "selent:scratch"}, "%"]

data remove storage selent:scratch args
data remove storage kira_util:select_entity out
scoreboard objectives remove selent_scale_add
