data modify storage kira_util:select_entity scratch.stage_args set value {}
data modify storage kira_util:select_entity scratch.stage_args.player_uuid set from entity @s UUID
function kira_util:select_entity_previous_stage2 with storage kira_util:select_entity scratch.stage_args
