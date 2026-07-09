tag @e[distance=0..,type=marker] remove usable
execute positioned ~ ~-1 ~ as @e[tag=slib,distance=..8,type=marker] at @s positioned ~ ~2 ~ if function xaniclelib:check/raycast3 run tag @s add usable
execute as @e[tag=crystal_1,distance=..3.5,type=marker] run function quantum:mark/check1
execute as @e[tag=anchor_1,distance=..4.3,type=marker] run function quantum:mark/check1
execute as @e[tag=loc1,tag=!anchor_1,distance=..4.6,type=marker] run tag @s add usable
execute positioned ~ ~-1 ~ as @e[tag=crystal_2,distance=..3.5,type=marker] run tag @s add usable

