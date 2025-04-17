function kira_util:select_entity_get_selection
data modify storage kira_util:select_entity scratch.stage_args.uuid set from storage kira_util:select_entity out.selection[0]

function kira_util:entity_uuid_glow_clear with storage kira_util:select_entity scratch.stage_args

data remove storage kira_util:select_entity scratch
