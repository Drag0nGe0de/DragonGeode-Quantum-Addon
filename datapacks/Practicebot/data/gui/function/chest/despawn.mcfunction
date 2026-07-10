execute as @e[type=minecraft:chest_minecart,tag=gui_chest] run data merge entity @s {Items:[]}
kill @e[type=minecraft:chest_minecart,tag=gui_chest]
