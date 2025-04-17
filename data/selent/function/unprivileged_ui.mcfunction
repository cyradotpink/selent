function kira_util:select_entity_ensure_selection

function kira_util:select_entity_get_selection
data modify storage selent:scratch scratch.args.uuid set from storage kira_util:select_entity out.selection[0]
function kira_util:entity_uuid_get_selector with storage selent:scratch scratch.args
data modify storage selent:scratch scratch.text_component.selector set from storage kira_util:select_entity out.uuid_selector

execute if score @s selent_scale matches ..5 run scoreboard players set @s selent_scale 6
execute if score @s selent_scale matches 1601.. run scoreboard players set @s selent_scale 1600
execute unless score @s selent_scale matches 0.. run scoreboard players set @s selent_scale 100
execute store result storage selent:scratch scratch.scale_percent int 1 run scoreboard players get @s selent_scale

data modify storage selent:scratch scratch.args merge value {attribute: "minecraft:scale", scale: 100}
execute store result storage selent:scratch scratch.selected_scale_percent int 1 run function kira_util:entity_uuid_attribute_get with storage selent:scratch scratch.args

data modify storage selent:scratch scratch.args set value {}
data modify storage selent:scratch scratch.args.message set value [""]

data modify storage selent:scratch scratch.args.message append value {text: "\u25A0 [selent]\n\u25A0\n\u25A0", color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value " Selected entity is "
data modify storage selent:scratch scratch.args.message append value {nbt: "scratch.text_component", storage: "selent:scratch", interpret: true, color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value "."

data modify storage selent:scratch scratch.args.message append value {text: "\n\u25A0", color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value " Change selection: "
data modify storage selent:scratch scratch.args.message append value [{text: "[self]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 2"}}, " ", {text: "[previous]", click_event: {action: "run_command", command: "trigger selent set 3"}}, " ", {text: "[next]", click_event: {action: "run_command", command: "trigger selent set 4"}}]

data modify storage selent:scratch scratch.args.message append value {text: "\n\u25A0", color: "#f7518e"}
execute unless score @s selent_hide_selection matches 1 run data modify storage selent:scratch scratch.args.message append value [" Selection glow is ", {text: "enabled", color: "#f7518e"}, ". ", {text: "[disable]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 6"}}]
execute if score @s selent_hide_selection matches 1 run data modify storage selent:scratch scratch.args.message append value [" Selection glow is ", {text: "disabled", color: "#f7518e"}, ". ", {text: "[enable]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 5"}}]

data modify storage selent:scratch scratch.args.message append value {text: "\n\u25A0", color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value " Entity scale is "
data modify storage selent:scratch scratch.args.message append value [{nbt: "scratch.selected_scale_percent", storage: "selent:scratch", color: "#f7518e"}, "%"]
data modify storage selent:scratch scratch.args.message append value ", staged is "
data modify storage selent:scratch scratch.args.message append value [{nbt: "scratch.scale_percent", storage: "selent:scratch", color: "#f7518e"}, "%"]
data modify storage selent:scratch scratch.args.message append value ". "
data modify storage selent:scratch scratch.args.message append value [{text: "[apply]", color: "#36ed96", click_event: {action: "run_command", command: "trigger selent set 7"}}, " ", {text: "[reset]", click_event: {action: "run_command", command: "trigger selent set 8"}}]

data modify storage selent:scratch scratch.args.message append value {text: "\n\u25A0", color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value " Modify staged %: "
data modify storage selent:scratch scratch.args.message append value [{text: "[-100]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 9"}}, " ", {text: "[-10]", click_event: {action: "run_command", command: "trigger selent set 10"}}, " ", {text: "[-1]", click_event: {action: "run_command", command: "trigger selent set 11"}}, " ", {text: "[+1]", click_event: {action: "run_command", command: "trigger selent set 12"}}, " ", {text: "[+10]", click_event: {action: "run_command", command: "trigger selent set 13"}}, " ", {text: "[+100]", click_event: {action: "run_command", command: "trigger selent set 14"}}]

function kira_util:tellraw with storage selent:scratch scratch.args

data remove storage selent:scratch scratch
data remove storage kira_util:select_entity out
