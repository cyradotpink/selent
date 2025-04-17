function kira_util:select_entity_ensure_selection
data modify storage selent:scratch scratch.args set value {attribute: "minecraft:scale"}
execute store result storage selent:scratch scratch.args.value double 0.01 run scoreboard players get @s selent_scale
function kira_util:select_entity_get_selection
data modify storage selent:scratch scratch.args.uuid set from storage kira_util:select_entity out.selection[0]
data remove storage kira_util:select_entity out
function kira_util:entity_uuid_attribute_set with storage selent:scratch scratch.args

data remove storage selent:scratch scratch
