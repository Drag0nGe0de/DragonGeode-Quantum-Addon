# GUI System - Click: start
clear @s minecraft:green_wool[minecraft:custom_data={gui_btn:"start"}]
tellraw @s {"text":"Start","color":"green"}
function gui:pages/play
