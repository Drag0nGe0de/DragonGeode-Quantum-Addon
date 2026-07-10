
tag @s add gui_clicker
execute as @e[type=minecraft:chest_minecart,tag=gui_chest,sort=nearest,limit=1] run function gui:core/detect_chest_scan
tag @s remove gui_clicker
