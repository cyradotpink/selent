$data modify storage kira_util:select_entity out set value {player_uuid: $(player_uuid)}
$data modify storage kira_util:select_entity out.selection set from storage kira_util:select_entity players."$(player_uuid)".selected_uuids
execute unless data storage kira_util:select_entity out.selection run data modify storage kira_util:select_entity out.selection set value []

data remove storage kira_util:select_entity scratch
