$execute if data storage kira_util:select_entity players."$(UUID)".selected_uuids[0] run return 0
$data modify storage kira_util:select_entity players."$(UUID)".selected_uuids set value [$(UUID)]

return 1
