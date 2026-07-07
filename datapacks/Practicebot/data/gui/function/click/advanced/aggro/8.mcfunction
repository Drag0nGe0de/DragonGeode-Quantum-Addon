# GUI System - Click: advanced_aggro_8 (Max Aggro = factor 999999999)
clear @s minecraft:netherite_block[minecraft:custom_data={gui_btn:"advanced_aggro_8"}]
scoreboard players set .factor eval 999999999
function gui:pages/advanced/aggro
