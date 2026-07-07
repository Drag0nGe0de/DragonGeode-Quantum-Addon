# GUI System - Click: advanced_aggro_3 (Passive = factor -150)
clear @s minecraft:ice[minecraft:custom_data={gui_btn:"advanced_aggro_3"}]
scoreboard players set .factor eval -150
function gui:pages/advanced/aggro
