
execute if score .start start matches 1 run clear @a minecraft:nether_star[minecraft:custom_data~{gui_chest:1b}]
execute if score .start start matches 1 run tag @a remove gui_chest_holding
execute if score .start start matches 1 as @e[type=minecraft:chest_minecart,tag=gui_chest] run data merge entity @s {Items:[]}
execute if score .start start matches 1 as @e[type=minecraft:chest_minecart,tag=gui_chest] run kill @s
execute if score .start start matches 1 run return 0

execute as @a[scores={gui_hold=1}] run tag @s add gui_chest_holding
execute as @a[scores={gui_hold=0}] run tag @s remove gui_chest_holding

execute as @a[tag=gui_chest_holding] at @s anchored eyes run function gui:chest/follow

execute as @e[type=minecraft:chest_minecart,tag=gui_chest] at @s unless entity @a[tag=gui_chest_holding,distance=..6] run data merge entity @s {Items:[]}
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] at @s unless entity @a[tag=gui_chest_holding,distance=..6] run kill @s

execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run scoreboard players set .gui gui_page 1
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run scoreboard players set .gui_prev gui_page 1
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run scoreboard players set .gui_prev2 gui_page 1
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run scoreboard players set .gui_prev3 gui_page 1
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run scoreboard players set .gui_prev4 gui_page 1
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run function gui:ui/refresh
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run tag @s remove gui_chest_new

execute as @a[tag=gui_chest_holding] run function gui:core/detect_chest
execute as @a[tag=gui_chest_holding] run function gui:core/detect_inventory

execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data modify entity @s CustomName set value {"text":"Quantum AI","color":"aqua","italic":false}
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data merge entity @s {Fire:0s}
