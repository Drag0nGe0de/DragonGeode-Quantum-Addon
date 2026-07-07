# [DEBUG] log every time the loop fires
execute if score .debug toggles matches 1 run function mech_train:debug/snapshot {label:"cart0 LOOP fired"}
execute if score @s pops matches 1.. run title @a actionbar {"text":"Success!","color": "green"}
execute unless score @s pops matches 1.. run title @a actionbar {"text":"Failed!","color": "red"}
function mech_train:generic/reset_scores
execute at @e[tag=rtp,type=marker] as quantumbot run tp @s ~ ~ ~3
scoreboard players set @s crossbow_timer 3