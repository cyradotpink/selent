$execute if data storage kira_util:select_entity players."$(player_uuid)".selected_uuids[0] run return 0

$data modify storage kira_util:select_entity players."$(player_uuid)".selected_uuids set value [$(player_uuid)]

data remove storage kira_util:select_entity scratch
