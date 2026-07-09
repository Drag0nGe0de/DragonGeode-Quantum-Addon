execute if score .start start matches 1 run clear @a minecraft:nether_star[minecraft:custom_data={gui_chest:1b}]
execute if score .start start matches 1 run tag @a remove gui_chest_holding
execute if score .start start matches 1 as @e[type=minecraft:chest_minecart,tag=gui_chest] run data merge entity @s {Items:[]}
execute if score .start start matches 1 as @e[type=minecraft:chest_minecart,tag=gui_chest] run kill @s
execute if score .start start matches 1 run return 0
execute as @a if items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data={gui_chest:1b}] run tag @s add gui_chest_holding
execute as @a unless items entity @s weapon.mainhand minecraft:nether_star[minecraft:custom_data={gui_chest:1b}] run tag @s remove gui_chest_holding
execute as @a[tag=gui_chest_holding] at @s anchored eyes run function gui:chest/follow
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] at @s unless entity @a[tag=gui_chest_holding,distance=..6] run data merge entity @s {Items:[]}
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] at @s unless entity @a[tag=gui_chest_holding,distance=..6] run kill @s
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run data modify entity @s Items set from block -715 31 90 Items
execute as @e[type=minecraft:chest_minecart,tag=gui_chest_new] run tag @s remove gui_chest_new
execute as @a[tag=gui_chest_holding] run function gui:core/detect_chest
execute as @a[tag=gui_chest_holding] run function gui:core/detect_inventory
function gui:core/sync_chest
execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data merge entity @s {Fire:0s}