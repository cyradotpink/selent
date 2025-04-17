execute unless function kira_util:select_entity_next_stage2_recurse_next run return 1

data modify storage kira_util:select_entity scratch.concat_args.first set from storage kira_util:select_entity scratch.selector
data modify storage kira_util:select_entity scratch.concat_args.second set value "nbt=!{UUID:"
function kira_util:str_concat_naive_dq with storage kira_util:select_entity scratch.concat_args

data modify storage kira_util:select_entity scratch.concat_args.first set from storage kira_util:select_entity scratch.selector
data modify storage kira_util:select_entity scratch.concat_args.second set from storage kira_util:iter select_entity.current_value
function kira_util:str_concat_naive_dq with storage kira_util:select_entity scratch.concat_args

data modify storage kira_util:select_entity scratch.concat_args.first set from storage kira_util:select_entity scratch.selector
data modify storage kira_util:select_entity scratch.concat_args.second set value "},"
function kira_util:str_concat_naive_dq with storage kira_util:select_entity scratch.concat_args

function kira_util:select_entity_next_stage2_recurse
