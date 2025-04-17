data modify storage kira_util:select_entity scratch.selector set value ""
data modify storage kira_util:select_entity scratch.concat_args set value {storage: "kira_util:select_entity", path: "scratch.selector"}

$data modify storage kira_util:iter select_entity.in set from storage kira_util:select_entity players."$(player_uuid)".selected_uuids
function kira_util:iter_begin {id: select_entity}
function kira_util:select_entity_next_stage2_recurse
function kira_util:iter_cleanup_scoreboard {id: select_entity}
data remove storage kira_util:iter select_entity

data modify storage kira_util:select_entity scratch.selector set string storage kira_util:select_entity scratch.selector 0 -1

$data modify storage kira_util:select_entity scratch.stage_args set value {player_uuid: $(player_uuid)}
data modify storage kira_util:select_entity scratch.stage_args.selector_args set from storage kira_util:select_entity scratch.selector
function kira_util:select_entity_next_stage3 with storage kira_util:select_entity scratch.stage_args
