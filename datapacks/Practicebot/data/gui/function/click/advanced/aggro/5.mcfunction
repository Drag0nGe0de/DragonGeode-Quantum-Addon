# GUI System - Click: advanced_aggro_5 (Aggro = factor 100)
clear @s minecraft:netherrack[minecraft:custom_data={gui_btn:"advanced_aggro_5"}]
scoreboard players set .factor eval 100
function gui:pages/advanced/aggro
