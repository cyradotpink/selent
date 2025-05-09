execute as @a[scores={selent=2}] at @s run function selent:self
execute as @a[scores={selent=3}] at @s run function selent:previous
execute as @a[scores={selent=4}] at @s run function selent:next
execute as @a[scores={selent=5}] at @s run function selent:show
execute as @a[scores={selent=6}] at @s run function selent:hide
execute as @a[scores={selent=7}] at @s run function selent:toggle_show
execute as @a[scores={selent=8}] at @s run function selent:reset_scale
execute as @a[scores={selent=9}] at @s run function selent:modify_scale {add: -100}
execute as @a[scores={selent=10}] at @s run function selent:modify_scale {add: -10}
execute as @a[scores={selent=11}] at @s run function selent:modify_scale {add: -1}
execute as @a[scores={selent=12}] at @s run function selent:modify_scale {add: 1}
execute as @a[scores={selent=13}] at @s run function selent:modify_scale {add: 10}
execute as @a[scores={selent=14}] at @s run function selent:modify_scale {add: 100}
execute as @a[scores={selent=15}] at @s run function selent:tell_selected
execute as @a[scores={selent=1}] at @s run function selent:unprivileged_ui

execute as @a[scores={selent=1..}] run scoreboard players set @s selent_ttl 600

execute as @a[scores={selent_ttl=1..}] run scoreboard players remove @s selent_ttl 1
execute as @a[scores={selent_ttl=0}] run function selent:reset

scoreboard players set @a[scores={selent=1..}] selent 0
scoreboard players enable @a selent
