$data modify storage kira_util:select_entity out set value {player_uuid: $(UUID)}
$data modify storage kira_util:select_entity out.selected_uuid set from storage kira_util:select_entity players."$(UUID)".selected_uuids[0]

# $data modify storage kira_util:select_entity out.selection set from storage kira_util:select_entity players."$(UUID)".selected_uuids
# execute unless data storage kira_util:select_entity out.selection run data modify storage kira_util:select_entity out.selection set value []

data remove storage kira_util:select_entity scratch
