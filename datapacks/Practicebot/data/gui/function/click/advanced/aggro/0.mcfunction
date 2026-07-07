# GUI System - Click: advanced_aggro_0 (Max Passive = factor -500)
clear @s minecraft:snow_block[minecraft:custom_data={gui_btn:"advanced_aggro_0"}]
scoreboard players set .factor eval -500
function gui:pages/advanced/aggro
