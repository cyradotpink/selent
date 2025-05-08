scoreboard objectives add kira_util_select_entity_scratch_0 dummy
$execute store success score @s kira_util_select_entity_scratch_0 run data modify storage kira_util:select_entity scratch.entity_data set from entity @n[type=#kira_util:scalable,distance=..20,$(selector_args)]

data modify storage kira_util:select_entity scratch.stage_args.selected_uuid set from storage kira_util:select_entity scratch.entity_data.UUID
$execute if score @s kira_util_select_entity_scratch_0 matches 1 run data modify storage kira_util:select_entity players."$(player_uuid)".selected_uuids prepend from storage kira_util:select_entity scratch.entity_data.UUID

# data modify storage kira_util:select_entity out.exhausted_all_entities set value false
# execute unless score @s kira_util_select_entity_scratch_0 matches 1 run data modify storage kira_util:select_entity out.exhausted_all_entities set value true

scoreboard objectives remove kira_util_select_entity_scratch_0
data remove storage kira_util:select_entity scratch
