function selent:self

data modify storage selent:scratch scratch.args set value {}
data modify storage selent:scratch scratch.args.message set value [""]

data modify storage selent:scratch scratch.args.message append value [{text: "\u25A0 ", color: "#f7518e"}, {text: "[selent]", click_event: {action: "run_command", command: "trigger selent"}}]

data modify storage selent:scratch scratch.args.message append value {text: "\n\u25A0", color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value " Selection: "
data modify storage selent:scratch scratch.args.message append value [{text: "[self]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 2"}}, " ", {text: "[previous]", click_event: {action: "run_command", command: "trigger selent set 3"}}, " ", {text: "[next]", click_event: {action: "run_command", command: "trigger selent set 4"}}]

data modify storage selent:scratch scratch.args.message append value {text: "\n\u25A0", color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value " Selection marker: "
data modify storage selent:scratch scratch.args.message append value {text: "[toggle]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 7"}}

data modify storage selent:scratch scratch.args.message append value {text: "\n\u25A0", color: "#f7518e"}
data modify storage selent:scratch scratch.args.message append value " Scale %: "
data modify storage selent:scratch scratch.args.message append value [{text: "[reset]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 8"}}, " ", {text: "[-100]", color: "#63ed96", click_event: {action: "run_command", command: "trigger selent set 9"}}, " ", {text: "[-10]", click_event: {action: "run_command", command: "trigger selent set 10"}}, " ", {text: "[-1]", click_event: {action: "run_command", command: "trigger selent set 11"}}, " ", {text: "[+1]", click_event: {action: "run_command", command: "trigger selent set 12"}}, " ", {text: "[+10]", click_event: {action: "run_command", command: "trigger selent set 13"}}, " ", {text: "[+100]", click_event: {action: "run_command", command: "trigger selent set 14"}}]

function kira_util:tellraw with storage selent:scratch scratch.args

data remove storage selent:scratch scratch
